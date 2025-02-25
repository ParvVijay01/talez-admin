<?php

namespace App\Http\Controllers\Api\V1;

use App\CentralLogics\Helpers;
use App\Http\Controllers\Controller;
use App\Model\Branch;
use App\Model\BusinessSetting;
use App\Model\Currency;
use App\Model\SocialMedia;
use App\Models\LoginSetup;
use App\Models\Setting;
use App\Traits\HelperTrait;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class ConfigController extends Controller
{
    use HelperTrait;

    public function __construct(
        private LoginSetup $loginSetup)
    {}

    public function configuration(): \Illuminate\Http\JsonResponse
    {
        $publishedStatus = 0;
        $paymentPublishedStatus = config('get_payment_publish_status');
        if (isset($paymentPublishedStatus[0]['is_published'])) {
            $publishedStatus = $paymentPublishedStatus[0]['is_published'];
        }
        $activeAddonPaymentList = $publishedStatus == 1 ? $this->getPaymentMethods() : $this->getDefaultPaymentMethods();
        $digitalPaymentStatus = BusinessSetting::where(['key' => 'digital_payment'])->first()->value;
        $digitalPaymentStatusValue = json_decode($digitalPaymentStatus, true);


        $currencySymbol = Currency::where(['currency_code' => Helpers::currency_code()])->first()->currency_symbol;
        $cod = json_decode(BusinessSetting::where(['key' => 'cash_on_delivery'])->first()->value, true);
        $dp = json_decode(BusinessSetting::where(['key' => 'digital_payment'])->first()->value, true);

        $deliveryManConfig = Helpers::get_business_settings('delivery_management');
        $deliveryManagement = array(
            "status" => (int)$deliveryManConfig['status'],
            "min_shipping_charge" => (float)$deliveryManConfig['min_shipping_charge'],
            "shipping_per_km" => (float)$deliveryManConfig['shipping_per_km'],
        );

        $cookiesConfig = Helpers::get_business_settings('cookies');
        $cookiesManagement = array(
            "status" => (int)$cookiesConfig['status'],
            "text" => $cookiesConfig['text'],
        );

        $advanceMaintenanceMode = $this->checkMaintenanceMode();

        $emailVerification = (int) $this->loginSetup->where(['key' => 'email_verification'])?->first()->value ?? 0;
        $phoneVerification = (int) $this->loginSetup->where(['key' => 'phone_verification'])?->first()->value ?? 0;

        $firebaseOTPVerification = Helpers::get_business_settings('firebase_otp_verification');
        $firebaseOTPVerificationStatus = (integer)($firebaseOTPVerification ? $firebaseOTPVerification['status'] : 0);


        $status = 0;
        if ($emailVerification == 1) {
            $status = 1;
        } elseif ($phoneVerification == 1) {
            $status = 1;
        }

        $customerVerification = [
            'status' => $status,
            'phone'=> $phoneVerification,
            'email'=> $emailVerification,
            'firebase'=> (int) $firebaseOTPVerificationStatus,
        ];

        $loginOptionsValue = $this->loginSetup->where(['key' => 'login_options'])?->first()->value;
        $loginOptions = json_decode($loginOptionsValue);

        $socialMediaLoginValue = $this->loginSetup->where(['key' => 'social_media_for_login'])?->first()->value;
        $socialMediaLoginOptions = json_decode($socialMediaLoginValue);

        $customerLogin = [
            'login_option' => $loginOptions,
            'social_media_login_options' => $socialMediaLoginOptions
        ];

        $emailConfig = Helpers::get_business_settings('mail_config');
        $dataValues = Setting::where('settings_type', 'sms_config')->get();
        $activeCount = 0;
        foreach ($dataValues as $gateway) {
            $status = isset($gateway->live_values['status']) ? (int)$gateway->live_values['status'] : 0;
            if ($status == 1) {
                $activeCount++;
            }
        }

        $forgotPassword = [
            'firebase' => $firebaseOTPVerificationStatus,
            'phone' => $activeCount > 0 ? 1: 0,
            'email' => $emailConfig['status'] ?? 0
        ];

        $apple = Helpers::get_business_settings('apple_login');
        $appleLogin = array(
            'login_medium' => $apple['login_medium'],
            'client_id' => $apple['client_id']
        );

        return response()->json([
            'ecommerce_name' => BusinessSetting::where(['key' => 'restaurant_name'])->first()->value,
            'ecommerce_logo' => BusinessSetting::where(['key' => 'logo'])->first()->value,
            'app_logo' => BusinessSetting::where(['key' => 'app_logo'])->first()->value,
            'ecommerce_address' => BusinessSetting::where(['key' => 'address'])->first()->value,
            'ecommerce_phone' => BusinessSetting::where(['key' => 'phone'])->first()->value,
            'ecommerce_email' => BusinessSetting::where(['key' => 'email_address'])->first()->value,
            'ecommerce_location_coverage' => Branch::where(['id' => 1])->first(['longitude', 'latitude', 'coverage']),
            'minimum_order_value' => (float)BusinessSetting::where(['key' => 'minimum_order_value'])->first()->value,
            'self_pickup' => (int)BusinessSetting::where(['key' => 'self_pickup'])->first()->value,
            'base_urls' => [
                'product_image_url' => asset('storage/app/public/product'),
                'customer_image_url' => asset('storage/app/public/profile'),
                'banner_image_url' => asset('storage/app/public/banner'),
                'category_image_url' => asset('storage/app/public/category'),
                'category_banner_image_url' => asset('storage/app/public/category/banner'),
                'review_image_url' => asset('storage/app/public/review'),
                'notification_image_url' => asset('storage/app/public/notification'),
                'ecommerce_image_url' => asset('storage/app/public/ecommerce'),
                'delivery_man_image_url' => asset('storage/app/public/delivery-man'),
                'chat_image_url' => asset('storage/app/public/conversation'),
                'flash_sale_image_url' => asset('storage/app/public/flash-sale'),
                'gateway_image_url' => asset('storage/app/public/payment_modules/gateway_image'),
            ],
            'currency_symbol' => $currencySymbol,
            'delivery_charge' => (float)BusinessSetting::where(['key' => 'delivery_charge'])->first()->value,
            'delivery_management' => $deliveryManagement,
            'cash_on_delivery' => $cod['status'] == 1 ? 'true' : 'false',
            'digital_payment' => $dp['status'] == 1 ? 'true' : 'false',
            'branches' => Branch::all(['id', 'name', 'email', 'longitude', 'latitude', 'address', 'coverage']),
            'terms_and_conditions' => BusinessSetting::where(['key' => 'terms_and_conditions'])->first()->value,
            'privacy_policy' => BusinessSetting::where(['key' => 'privacy_policy'])->first()->value,
            'about_us' => BusinessSetting::where(['key' => 'about_us'])->first()->value,
            'email_verification' => (boolean) $emailVerification,
            'phone_verification' => (boolean) $phoneVerification,
            'currency_symbol_position' => Helpers::get_business_settings('currency_symbol_position') ?? 'right',
            'maintenance_mode' => (boolean)Helpers::get_business_settings('maintenance_mode') ?? 0,
            'country' => Helpers::get_business_settings('country') ?? 'BD',
            'play_store_config' => [
                "status" => (boolean)Helpers::get_business_settings('play_store_config')['status'],
                "link" => Helpers::get_business_settings('play_store_config')['link'],
                "min_version" => Helpers::get_business_settings('play_store_config')['min_version'],
            ],
            'app_store_config' => [
                "status" => (boolean)Helpers::get_business_settings('app_store_config')['status'],
                "link" => Helpers::get_business_settings('app_store_config')['link'],
                "min_version" => Helpers::get_business_settings('app_store_config')['min_version'],
            ],
            'social_media_link' => SocialMedia::orderBy('id', 'desc')->active()->get(),
            'software_version' => (string)env('SOFTWARE_VERSION') ?? null,
            'footer_text' => Helpers::get_business_settings('footer_text'),
            'dm_self_registration' => (int)Helpers::get_business_settings('dm_self_registration'),
            'otp_resend_time' => Helpers::get_business_settings('otp_resend_time') ?? 60,
            'cookies_management' => $cookiesManagement,
            'social_login' => [
                'google' => (integer)BusinessSetting::where(['key' => 'google_social_login'])->first()->value,
                'facebook' => (integer)BusinessSetting::where(['key' => 'facebook_social_login'])->first()->value,
            ],
            'whatsapp' => json_decode(BusinessSetting::where(['key' => 'whatsapp'])->first()->value, true),
            'telegram' => json_decode(BusinessSetting::where(['key' => 'telegram'])->first()->value, true),
            'messenger' => json_decode(BusinessSetting::where(['key' => 'messenger'])->first()->value, true),
            'digital_payment_status' => (integer)$digitalPaymentStatusValue['status'],
            'active_payment_method_list' => (integer)$digitalPaymentStatusValue['status'] == 1 ? $activeAddonPaymentList : [],
            'advance_maintenance_mode' => $advanceMaintenanceMode,
            'google_map_status' => (integer) (Helpers::get_business_settings('google_map_status') ?? 0),
            'customer_verification' => $customerVerification,
            'customer_login' => $customerLogin,
            'guest_checkout' => (integer)(Helpers::get_business_settings('guest_checkout') ?? 0),
            'firebase_otp_verification_status' => $firebaseOTPVerificationStatus,
            'forgot_password' => $forgotPassword,
            'apple_login' => $appleLogin,
        ]);
    }

    private function getPaymentMethods(): array
    {
        if (!Schema::hasTable('addon_settings')) {
            return [];
        }

        $methods = DB::table('addon_settings')->where('settings_type', 'payment_config')->get();
        $env = env('APP_ENV') == 'live' ? 'live' : 'test';
        $credentials = $env . '_values';

        $data = [];
        foreach ($methods as $method) {
            $credentialsData = json_decode($method->$credentials);
            $additionalData = json_decode($method->additional_data);
            if ($credentialsData->status == 1) {
                $data[] = [
                    'gateway' => $method->key_name,
                    'gateway_title' => $additionalData?->gateway_title,
                    'gateway_image' => $additionalData?->gateway_image
                ];
            }
        }
        return $data;
    }

    private function getDefaultPaymentMethods(): array
    {
        if (!Schema::hasTable('addon_settings')) {
            return [];
        }

        $methods = DB::table('addon_settings')
            ->whereIn('settings_type', ['payment_config'])
            ->whereIn('key_name', ['ssl_commerz', 'paypal', 'stripe', 'razor_pay', 'senang_pay', 'paystack', 'paymob_accept', 'flutterwave', 'bkash', 'mercadopago'])
            ->get();

        $env = env('APP_ENV') == 'live' ? 'live' : 'test';
        $credentials = $env . '_values';

        $data = [];
        foreach ($methods as $method) {
            $credentialsData = json_decode($method->$credentials);
            $additionalData = json_decode($method->additional_data);
            if ($credentialsData->status == 1) {
                $data[] = [
                    'gateway' => $method->key_name,
                    'gateway_title' => $additionalData?->gateway_title,
                    'gateway_image' => $additionalData?->gateway_image
                ];
            }
        }
        return $data;
    }

    public function deliveryFree(Request $request): JsonResponse
    {
        $branches = Branch::with(['delivery_charge_setup', 'delivery_charge_by_area'])
            ->active()
            ->get(['id', 'name', 'status']);

        foreach ($branches as $branch){
            if (!empty($branch->delivery_charge_setup) && $branch->delivery_charge_setup->delivery_charge_type == 'distance') {
                unset($branch->delivery_charge_by_area);
                $branch->delivery_charge_by_area = [];
            }
        }

        return response()->json($branches);
    }
}
