.class public final Landroid/provider/Settings$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final ACCESSIBILITY_AUTOCLICK_DELAY:Ljava/lang/String; = "accessibility_autoclick_delay"

.field private static final ACCESSIBILITY_AUTOCLICK_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_AUTOCLICK_ENABLED:Ljava/lang/String; = "accessibility_autoclick_enabled"

.field private static final ACCESSIBILITY_AUTOCLICK_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_BUTTON_TARGET_COMPONENT:Ljava/lang/String; = "accessibility_button_target_component"

.field private static final ACCESSIBILITY_BUTTON_TARGET_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR:Ljava/lang/String; = "accessibility_captioning_background_color"

.field private static final ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_EDGE_COLOR:Ljava/lang/String; = "accessibility_captioning_edge_color"

.field private static final ACCESSIBILITY_CAPTIONING_EDGE_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_EDGE_TYPE:Ljava/lang/String; = "accessibility_captioning_edge_type"

.field private static final ACCESSIBILITY_CAPTIONING_EDGE_TYPE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_ENABLED:Ljava/lang/String; = "accessibility_captioning_enabled"

.field private static final ACCESSIBILITY_CAPTIONING_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_FONT_SCALE:Ljava/lang/String; = "accessibility_captioning_font_scale"

.field private static final ACCESSIBILITY_CAPTIONING_FONT_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR:Ljava/lang/String; = "accessibility_captioning_foreground_color"

.field private static final ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_LOCALE:Ljava/lang/String; = "accessibility_captioning_locale"

.field private static final ACCESSIBILITY_CAPTIONING_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_PRESET:Ljava/lang/String; = "accessibility_captioning_preset"

.field private static final ACCESSIBILITY_CAPTIONING_PRESET_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_TYPEFACE:Ljava/lang/String; = "accessibility_captioning_typeface"

.field private static final ACCESSIBILITY_CAPTIONING_TYPEFACE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_WINDOW_COLOR:Ljava/lang/String; = "accessibility_captioning_window_color"

.field private static final ACCESSIBILITY_CAPTIONING_WINDOW_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_DISPLAY_DALTONIZER:Ljava/lang/String; = "accessibility_display_daltonizer"

.field public static final ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED:Ljava/lang/String; = "accessibility_display_daltonizer_enabled"

.field private static final ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field private static final ACCESSIBILITY_DISPLAY_DALTONIZER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_DISPLAY_INVERSION_ENABLED:Ljava/lang/String; = "accessibility_display_inversion_enabled"

.field private static final ACCESSIBILITY_DISPLAY_INVERSION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_AUTO_UPDATE:Ljava/lang/String; = "accessibility_display_magnification_auto_update"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_enabled"

.field private static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_navbar_enabled"

.field private static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE:Ljava/lang/String; = "accessibility_display_magnification_scale"

.field private static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_ENABLED:Ljava/lang/String; = "accessibility_enabled"

.field private static final ACCESSIBILITY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED:Ljava/lang/String; = "high_text_contrast_enabled"

.field private static final ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_LARGE_POINTER_ICON:Ljava/lang/String; = "accessibility_large_pointer_icon"

.field private static final ACCESSIBILITY_LARGE_POINTER_ICON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_SHORTCUT_DIALOG_SHOWN:Ljava/lang/String; = "accessibility_shortcut_dialog_shown"

.field private static final ACCESSIBILITY_SHORTCUT_DIALOG_SHOWN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_SHORTCUT_ENABLED:Ljava/lang/String; = "accessibility_shortcut_enabled"

.field private static final ACCESSIBILITY_SHORTCUT_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_SHORTCUT_ON_LOCK_SCREEN:Ljava/lang/String; = "accessibility_shortcut_on_lock_screen"

.field private static final ACCESSIBILITY_SHORTCUT_ON_LOCK_SCREEN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_SHORTCUT_TARGET_SERVICE:Ljava/lang/String; = "accessibility_shortcut_target_service"

.field private static final ACCESSIBILITY_SHORTCUT_TARGET_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_SOFT_KEYBOARD_MODE:Ljava/lang/String; = "accessibility_soft_keyboard_mode"

.field public static final ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String; = "speak_password"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ACCESSIBILITY_SPEAK_PASSWORD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ALLOWED_GEOLOCATION_ORIGINS:Ljava/lang/String; = "allowed_geolocation_origins"

.field public static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "mock_location"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ALLOW_MOCK_LOCATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ALWAYS_ON_VPN_APP:Ljava/lang/String; = "always_on_vpn_app"

.field public static final ALWAYS_ON_VPN_LOCKDOWN:Ljava/lang/String; = "always_on_vpn_lockdown"

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"

.field public static final ANR_SHOW_BACKGROUND:Ljava/lang/String; = "anr_show_background"

.field public static final ASSISTANT:Ljava/lang/String; = "assistant"

.field public static final ASSIST_DISCLOSURE_ENABLED:Ljava/lang/String; = "assist_disclosure_enabled"

.field public static final ASSIST_GESTURE_ENABLED:Ljava/lang/String; = "assist_gesture_enabled"

.field private static final ASSIST_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ASSIST_GESTURE_SENSITIVITY:Ljava/lang/String; = "assist_gesture_sensitivity"

.field public static final ASSIST_GESTURE_SETUP_COMPLETE:Ljava/lang/String; = "assist_gesture_setup_complete"

.field public static final ASSIST_GESTURE_SILENCE_ALERTS_ENABLED:Ljava/lang/String; = "assist_gesture_silence_alerts_enabled"

.field private static final ASSIST_GESTURE_SILENCE_ALERTS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ASSIST_GESTURE_WAKE_ENABLED:Ljava/lang/String; = "assist_gesture_wake_enabled"

.field private static final ASSIST_GESTURE_WAKE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ASSIST_SCREENSHOT_ENABLED:Ljava/lang/String; = "assist_screenshot_enabled"

.field public static final ASSIST_STRUCTURE_ENABLED:Ljava/lang/String; = "assist_structure_enabled"

.field public static final AUTOFILL_FEATURE_FIELD_CLASSIFICATION:Ljava/lang/String; = "autofill_field_classification"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOFILL_SERVICE:Ljava/lang/String; = "autofill_service"

.field public static final AUTOFILL_SERVICE_SEARCH_URI:Ljava/lang/String; = "autofill_service_search_uri"

.field private static final AUTOFILL_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final AUTOFILL_USER_DATA_MAX_CATEGORY_COUNT:Ljava/lang/String; = "autofill_user_data_max_category_count"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOFILL_USER_DATA_MAX_FIELD_CLASSIFICATION_IDS_SIZE:Ljava/lang/String; = "autofill_user_data_max_field_classification_size"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOFILL_USER_DATA_MAX_USER_DATA_SIZE:Ljava/lang/String; = "autofill_user_data_max_user_data_size"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOFILL_USER_DATA_MAX_VALUE_LENGTH:Ljava/lang/String; = "autofill_user_data_max_value_length"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOFILL_USER_DATA_MIN_VALUE_LENGTH:Ljava/lang/String; = "autofill_user_data_min_value_length"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOMATIC_STORAGE_MANAGER_BYTES_CLEARED:Ljava/lang/String; = "automatic_storage_manager_bytes_cleared"

.field public static final AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN:Ljava/lang/String; = "automatic_storage_manager_days_to_retain"

.field public static final AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN_DEFAULT:I = 0x5a

.field private static final AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final AUTOMATIC_STORAGE_MANAGER_ENABLED:Ljava/lang/String; = "automatic_storage_manager_enabled"

.field public static final AUTOMATIC_STORAGE_MANAGER_LAST_RUN:Ljava/lang/String; = "automatic_storage_manager_last_run"

.field public static final AUTOMATIC_STORAGE_MANAGER_TURNED_OFF_BY_POLICY:Ljava/lang/String; = "automatic_storage_manager_turned_off_by_policy"

.field public static final BACKGROUND_DATA:Ljava/lang/String; = "background_data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_AUTO_RESTORE:Ljava/lang/String; = "backup_auto_restore"

.field public static final BACKUP_ENABLED:Ljava/lang/String; = "backup_enabled"

.field public static final BACKUP_LOCAL_TRANSPORT_PARAMETERS:Ljava/lang/String; = "backup_local_transport_parameters"

.field public static final BACKUP_MANAGER_CONSTANTS:Ljava/lang/String; = "backup_manager_constants"

.field public static final BACKUP_PROVISIONED:Ljava/lang/String; = "backup_provisioned"

.field public static final BACKUP_TRANSPORT:Ljava/lang/String; = "backup_transport"

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final BLUETOOTH_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final BLUETOOTH_ON_WHILE_DRIVING:Ljava/lang/String; = "bluetooth_on_while_driving"

.field public static final BUGREPORT_IN_POWER_MENU:Ljava/lang/String; = "bugreport_in_power_menu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final BUGREPORT_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED:Ljava/lang/String; = "camera_double_tap_power_gesture_disabled"

.field private static final CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CAMERA_DOUBLE_TWIST_TO_FLIP_ENABLED:Ljava/lang/String; = "camera_double_twist_to_flip_enabled"

.field private static final CAMERA_DOUBLE_TWIST_TO_FLIP_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CAMERA_GESTURE_DISABLED:Ljava/lang/String; = "camera_gesture_disabled"

.field private static final CAMERA_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CAMERA_LIFT_TRIGGER_ENABLED:Ljava/lang/String; = "camera_lift_trigger_enabled"

.field public static final CAMERA_LIFT_TRIGGER_ENABLED_DEFAULT:I = 0x1

.field public static final CARRIER_APPS_HANDLED:Ljava/lang/String; = "carrier_apps_handled"

.field private static final CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CMAS_ADDITIONAL_BROADCAST_PKG:Ljava/lang/String; = "cmas_additional_broadcast_pkg"

.field public static final COMPLETED_CATEGORY_PREFIX:Ljava/lang/String; = "suggested.completed_category."

.field public static final CONNECTIVITY_RELEASE_PENDING_INTENT_DELAY_MS:Ljava/lang/String; = "connectivity_release_pending_intent_delay_ms"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_INPUT_METHOD:Ljava/lang/String; = "default_input_method"

.field public static final DEVELOPMENT_SETTINGS_ENABLED:Ljava/lang/String; = "development_settings_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_PAIRED:Ljava/lang/String; = "device_paired"

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIALER_DEFAULT_APPLICATION:Ljava/lang/String; = "dialer_default_application"

.field public static final DISABLED_PRINT_SERVICES:Ljava/lang/String; = "disabled_print_services"

.field public static final DISABLED_SYSTEM_INPUT_METHODS:Ljava/lang/String; = "disabled_system_input_methods"

.field public static final DISPLAY_DENSITY_FORCED:Ljava/lang/String; = "display_density_forced"

.field public static final DOUBLE_TAP_TO_WAKE:Ljava/lang/String; = "double_tap_to_wake"

.field private static final DOUBLE_TAP_TO_WAKE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final DOZE_ALWAYS_ON:Ljava/lang/String; = "doze_always_on"

.field public static final DOZE_ENABLED:Ljava/lang/String; = "doze_enabled"

.field private static final DOZE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final DOZE_PULSE_ON_DOUBLE_TAP:Ljava/lang/String; = "doze_pulse_on_double_tap"

.field private static final DOZE_PULSE_ON_DOUBLE_TAP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final DOZE_PULSE_ON_LONG_PRESS:Ljava/lang/String; = "doze_pulse_on_long_press"

.field public static final DOZE_PULSE_ON_PICK_UP:Ljava/lang/String; = "doze_pulse_on_pick_up"

.field private static final DOZE_PULSE_ON_PICK_UP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final EMERGENCY_ASSISTANCE_APPLICATION:Ljava/lang/String; = "emergency_assistance_application"

.field public static final ENABLED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "enabled_accessibility_services"

.field private static final ENABLED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENABLED_INPUT_METHODS:Ljava/lang/String; = "enabled_input_methods"

.field public static final ENABLED_NOTIFICATION_ASSISTANT:Ljava/lang/String; = "enabled_notification_assistant"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENABLED_NOTIFICATION_ASSISTANT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENABLED_NOTIFICATION_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES:Ljava/lang/String; = "enabled_notification_policy_access_packages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENABLED_PRINT_SERVICES:Ljava/lang/String; = "enabled_print_services"

.field public static final ENABLED_VR_LISTENERS:Ljava/lang/String; = "enabled_vr_listeners"

.field private static final ENABLED_VR_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENHANCED_VOICE_PRIVACY_ENABLED:Ljava/lang/String; = "enhanced_voice_privacy_enabled"

.field private static final ENHANCED_VOICE_PRIVACY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HUSH_GESTURE_USED:Ljava/lang/String; = "hush_gesture_used"

.field private static final HUSH_GESTURE_USED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final IMMERSIVE_MODE_CONFIRMATIONS:Ljava/lang/String; = "immersive_mode_confirmations"

.field public static final INCALL_BACK_BUTTON_BEHAVIOR:Ljava/lang/String; = "incall_back_button_behavior"

.field public static final INCALL_BACK_BUTTON_BEHAVIOR_DEFAULT:I = 0x0

.field public static final INCALL_BACK_BUTTON_BEHAVIOR_HANGUP:I = 0x1

.field public static final INCALL_BACK_BUTTON_BEHAVIOR_NONE:I = 0x0

.field public static final INCALL_POWER_BUTTON_BEHAVIOR:Ljava/lang/String; = "incall_power_button_behavior"

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_DEFAULT:I = 0x1

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_HANGUP:I = 0x2

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_SCREEN_OFF:I = 0x1

.field private static final INCALL_POWER_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final INPUT_METHODS_SUBTYPE_HISTORY:Ljava/lang/String; = "input_methods_subtype_history"

.field public static final INPUT_METHOD_SELECTOR_VISIBILITY:Ljava/lang/String; = "input_method_selector_visibility"

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"

.field public static final INSTANT_APPS_ENABLED:Ljava/lang/String; = "instant_apps_enabled"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTANT_APP_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYGUARD_SLICE_URI:Ljava/lang/String; = "keyguard_slice_uri"

.field public static final LAST_SETUP_SHOWN:Ljava/lang/String; = "last_setup_shown"

.field public static final LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

.field public static final LOCATION_CHANGER:Ljava/lang/String; = "location_changer"

.field public static final LOCATION_CHANGER_QUICK_SETTINGS:I = 0x2

.field public static final LOCATION_CHANGER_SYSTEM_SETTINGS:I = 0x1

.field public static final LOCATION_CHANGER_UNKNOWN:I = 0x0

.field public static final LOCATION_MODE:Ljava/lang/String; = "location_mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_MODE_BATTERY_SAVING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_MODE_HIGH_ACCURACY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_MODE_OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_MODE_SENSORS_ONLY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKDOWN_IN_POWER_MENU:Ljava/lang/String; = "lockdown_in_power_menu"

.field private static final LOCKDOWN_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final LOCK_BIOMETRIC_WEAK_FLAGS:Ljava/lang/String; = "lock_biometric_weak_flags"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_ALLOW_PRIVATE_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_allow_private_notifications"

.field public static final LOCK_SCREEN_ALLOW_REMOTE_INPUT:Ljava/lang/String; = "lock_screen_allow_remote_input"

.field public static final LOCK_SCREEN_APPWIDGET_IDS:Ljava/lang/String; = "lock_screen_appwidget_ids"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_FALLBACK_APPWIDGET_ID:Ljava/lang/String; = "lock_screen_fallback_appwidget_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_screen_lock_after_timeout"

.field public static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_SHOW_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_show_notifications"

.field public static final LOCK_SCREEN_STICKY_APPWIDGET:Ljava/lang/String; = "lock_screen_sticky_appwidget"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_TO_APP_EXIT_LOCKED:Ljava/lang/String; = "lock_to_app_exit_locked"

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LONG_PRESS_TIMEOUT:Ljava/lang/String; = "long_press_timeout"

.field private static final LONG_PRESS_TIMEOUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final LOW_POWER_MANUAL_ACTIVATION_COUNT:Ljava/lang/String; = "low_power_manual_activation_count"

.field public static final LOW_POWER_WARNING_ACKNOWLEDGED:Ljava/lang/String; = "low_power_warning_acknowledged"

.field public static final MANAGED_PROFILE_CONTACT_REMOTE_SEARCH:Ljava/lang/String; = "managed_profile_contact_remote_search"

.field public static final MANUAL_RINGER_TOGGLE_COUNT:Ljava/lang/String; = "manual_ringer_toggle_count"

.field private static final MANUAL_RINGER_TOGGLE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final MOUNT_PLAY_NOTIFICATION_SND:Ljava/lang/String; = "mount_play_not_snd"

.field private static final MOUNT_PLAY_NOTIFICATION_SND_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final MOUNT_UMS_AUTOSTART:Ljava/lang/String; = "mount_ums_autostart"

.field private static final MOUNT_UMS_AUTOSTART_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final MOUNT_UMS_NOTIFY_ENABLED:Ljava/lang/String; = "mount_ums_notify_enabled"

.field private static final MOUNT_UMS_NOTIFY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final MOUNT_UMS_PROMPT:Ljava/lang/String; = "mount_ums_prompt"

.field private static final MOUNT_UMS_PROMPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field private static final MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MULTI_PRESS_TIMEOUT:Ljava/lang/String; = "multi_press_timeout"

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFC_PAYMENT_DEFAULT_COMPONENT:Ljava/lang/String; = "nfc_payment_default_component"

.field private static final NFC_PAYMENT_DEFAULT_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NFC_PAYMENT_FOREGROUND:Ljava/lang/String; = "nfc_payment_foreground"

.field public static final NIGHT_DISPLAY_ACTIVATED:Ljava/lang/String; = "night_display_activated"

.field public static final NIGHT_DISPLAY_AUTO_MODE:Ljava/lang/String; = "night_display_auto_mode"

.field private static final NIGHT_DISPLAY_AUTO_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NIGHT_DISPLAY_COLOR_TEMPERATURE:Ljava/lang/String; = "night_display_color_temperature"

.field private static final NIGHT_DISPLAY_COLOR_TEMPERATURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NIGHT_DISPLAY_CUSTOM_END_TIME:Ljava/lang/String; = "night_display_custom_end_time"

.field private static final NIGHT_DISPLAY_CUSTOM_END_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NIGHT_DISPLAY_CUSTOM_START_TIME:Ljava/lang/String; = "night_display_custom_start_time"

.field private static final NIGHT_DISPLAY_CUSTOM_START_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NIGHT_DISPLAY_LAST_ACTIVATED_TIME:Ljava/lang/String; = "night_display_last_activated_time"

.field public static final NOTIFICATION_BADGING:Ljava/lang/String; = "notification_badging"

.field private static final NOTIFICATION_BADGING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NUM_ROTATION_SUGGESTIONS_ACCEPTED:Ljava/lang/String; = "num_rotation_suggestions_accepted"

.field public static final PACKAGES_TO_CLEAR_DATA_BEFORE_FULL_RESTORE:Ljava/lang/String; = "packages_to_clear_data_before_full_restore"

.field public static final PACKAGE_VERIFIER_STATE:Ljava/lang/String; = "package_verifier_state"

.field public static final PACKAGE_VERIFIER_USER_CONSENT:Ljava/lang/String; = "package_verifier_user_consent"

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"

.field public static final PAYMENT_SERVICE_SEARCH_URI:Ljava/lang/String; = "payment_service_search_uri"

.field public static final PREFERRED_TTY_MODE:Ljava/lang/String; = "preferred_tty_mode"

.field private static final PREFERRED_TTY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final PRINT_SERVICE_SEARCH_URI:Ljava/lang/String; = "print_service_search_uri"

.field public static final QS_AUTO_ADDED_TILES:Ljava/lang/String; = "qs_auto_tiles"

.field private static final QS_AUTO_ADDED_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final QS_TILES:Ljava/lang/String; = "sysui_qs_tiles"

.field private static final QS_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final RTT_CALLING_MODE:Ljava/lang/String; = "rtt_calling_mode"

.field private static final RTT_CALLING_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SCREENSAVER_ACTIVATE_ON_DOCK:Ljava/lang/String; = "screensaver_activate_on_dock"

.field private static final SCREENSAVER_ACTIVATE_ON_DOCK_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SCREENSAVER_ACTIVATE_ON_SLEEP:Ljava/lang/String; = "screensaver_activate_on_sleep"

.field private static final SCREENSAVER_ACTIVATE_ON_SLEEP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SCREENSAVER_COMPONENTS:Ljava/lang/String; = "screensaver_components"

.field private static final SCREENSAVER_COMPONENTS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SCREENSAVER_DEFAULT_COMPONENT:Ljava/lang/String; = "screensaver_default_component"

.field public static final SCREENSAVER_ENABLED:Ljava/lang/String; = "screensaver_enabled"

.field private static final SCREENSAVER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SEARCH_GLOBAL_SEARCH_ACTIVITY:Ljava/lang/String; = "search_global_search_activity"

.field public static final SEARCH_MAX_RESULTS_PER_SOURCE:Ljava/lang/String; = "search_max_results_per_source"

.field public static final SEARCH_MAX_RESULTS_TO_DISPLAY:Ljava/lang/String; = "search_max_results_to_display"

.field public static final SEARCH_MAX_SHORTCUTS_RETURNED:Ljava/lang/String; = "search_max_shortcuts_returned"

.field public static final SEARCH_MAX_SOURCE_EVENT_AGE_MILLIS:Ljava/lang/String; = "search_max_source_event_age_millis"

.field public static final SEARCH_MAX_STAT_AGE_MILLIS:Ljava/lang/String; = "search_max_stat_age_millis"

.field public static final SEARCH_MIN_CLICKS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_clicks_for_source_ranking"

.field public static final SEARCH_MIN_IMPRESSIONS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_impressions_for_source_ranking"

.field public static final SEARCH_NUM_PROMOTED_SOURCES:Ljava/lang/String; = "search_num_promoted_sources"

.field public static final SEARCH_PER_SOURCE_CONCURRENT_QUERY_LIMIT:Ljava/lang/String; = "search_per_source_concurrent_query_limit"

.field public static final SEARCH_PREFILL_MILLIS:Ljava/lang/String; = "search_prefill_millis"

.field public static final SEARCH_PROMOTED_SOURCE_DEADLINE_MILLIS:Ljava/lang/String; = "search_promoted_source_deadline_millis"

.field public static final SEARCH_QUERY_THREAD_CORE_POOL_SIZE:Ljava/lang/String; = "search_query_thread_core_pool_size"

.field public static final SEARCH_QUERY_THREAD_MAX_POOL_SIZE:Ljava/lang/String; = "search_query_thread_max_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_CORE_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_core_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_MAX_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_max_pool_size"

.field public static final SEARCH_SOURCE_TIMEOUT_MILLIS:Ljava/lang/String; = "search_source_timeout_millis"

.field public static final SEARCH_THREAD_KEEPALIVE_SECONDS:Ljava/lang/String; = "search_thread_keepalive_seconds"

.field public static final SEARCH_WEB_RESULTS_OVERRIDE_LIMIT:Ljava/lang/String; = "search_web_results_override_limit"

.field public static final SELECTED_INPUT_METHOD_SUBTYPE:Ljava/lang/String; = "selected_input_method_subtype"

.field public static final SELECTED_SPELL_CHECKER:Ljava/lang/String; = "selected_spell_checker"

.field public static final SELECTED_SPELL_CHECKER_SUBTYPE:Ljava/lang/String; = "selected_spell_checker_subtype"

.field private static final SELECTED_SPELL_CHECKER_SUBTYPE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field private static final SELECTED_SPELL_CHECKER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final SHOW_FIRST_CRASH_DIALOG_DEV_OPTION:Ljava/lang/String; = "show_first_crash_dialog_dev_option"

.field private static final SHOW_FIRST_CRASH_DIALOG_DEV_OPTION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SHOW_IME_WITH_HARD_KEYBOARD:Ljava/lang/String; = "show_ime_with_hard_keyboard"

.field private static final SHOW_IME_WITH_HARD_KEYBOARD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SHOW_MODE_AUTO:I = 0x0

.field public static final SHOW_MODE_HIDDEN:I = 0x1

.field public static final SHOW_NOTE_ABOUT_NOTIFICATION_HIDING:Ljava/lang/String; = "show_note_about_notification_hiding"

.field public static final SHOW_ROTATION_SUGGESTIONS:Ljava/lang/String; = "show_rotation_suggestions"

.field public static final SHOW_ROTATION_SUGGESTIONS_DEFAULT:I = 0x1

.field public static final SHOW_ROTATION_SUGGESTIONS_DISABLED:I = 0x0

.field public static final SHOW_ROTATION_SUGGESTIONS_ENABLED:I = 0x1

.field public static final SKIP_FIRST_USE_HINTS:Ljava/lang/String; = "skip_first_use_hints"

.field public static final SLEEP_TIMEOUT:Ljava/lang/String; = "sleep_timeout"

.field private static final SLEEP_TIMEOUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SMS_DEFAULT_APPLICATION:Ljava/lang/String; = "sms_default_application"

.field public static final SPELL_CHECKER_ENABLED:Ljava/lang/String; = "spell_checker_enabled"

.field private static final SPELL_CHECKER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SUPPRESS_AUTO_BATTERY_SAVER_SUGGESTION:Ljava/lang/String; = "suppress_auto_battery_saver_suggestion"

.field public static final SWIPE_UP_TO_SWITCH_APPS_ENABLED:Ljava/lang/String; = "swipe_up_to_switch_apps_enabled"

.field private static final SWIPE_UP_TO_SWITCH_APPS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SYNC_PARENT_SOUNDS:Ljava/lang/String; = "sync_parent_sounds"

.field private static final SYNC_PARENT_SOUNDS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SYSTEM_NAVIGATION_KEYS_ENABLED:Ljava/lang/String; = "system_navigation_keys_enabled"

.field private static final SYSTEM_NAVIGATION_KEYS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final THEME_MODE:Ljava/lang/String; = "theme_mode"

.field public static final THEME_MODE_DARK:I = 0x2

.field public static final THEME_MODE_LIGHT:I = 0x1

.field public static final THEME_MODE_WALLPAPER:I = 0x0

.field public static final TOUCH_EXPLORATION_ENABLED:Ljava/lang/String; = "touch_exploration_enabled"

.field private static final TOUCH_EXPLORATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "touch_exploration_granted_accessibility_services"

.field private static final TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TRUST_AGENTS_INITIALIZED:Ljava/lang/String; = "trust_agents_initialized"

.field public static final TTS_DEFAULT_COUNTRY:Ljava/lang/String; = "tts_default_country"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LANG:Ljava/lang/String; = "tts_default_lang"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LOCALE:Ljava/lang/String; = "tts_default_locale"

.field private static final TTS_DEFAULT_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TTS_DEFAULT_PITCH:Ljava/lang/String; = "tts_default_pitch"

.field private static final TTS_DEFAULT_PITCH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TTS_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field private static final TTS_DEFAULT_RATE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TTS_DEFAULT_SYNTH:Ljava/lang/String; = "tts_default_synth"

.field private static final TTS_DEFAULT_SYNTH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TTS_DEFAULT_VARIANT:Ljava/lang/String; = "tts_default_variant"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_ENABLED_PLUGINS:Ljava/lang/String; = "tts_enabled_plugins"

.field private static final TTS_ENABLED_PLUGINS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TTS_USE_DEFAULTS:Ljava/lang/String; = "tts_use_defaults"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTY_MODE_ENABLED:Ljava/lang/String; = "tty_mode_enabled"

.field private static final TTY_MODE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TV_INPUT_CUSTOM_LABELS:Ljava/lang/String; = "tv_input_custom_labels"

.field public static final TV_INPUT_HIDDEN_INPUTS:Ljava/lang/String; = "tv_input_hidden_inputs"

.field public static final TV_USER_SETUP_COMPLETE:Ljava/lang/String; = "tv_user_setup_complete"

.field public static final UI_NIGHT_MODE:Ljava/lang/String; = "ui_night_mode"

.field public static final UNKNOWN_SOURCES_DEFAULT_REVERSED:Ljava/lang/String; = "unknown_sources_default_reversed"

.field public static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS:Ljava/lang/String; = "unsafe_volume_music_active_ms"

.field public static final USB_AUDIO_AUTOMATIC_ROUTING_DISABLED:Ljava/lang/String; = "usb_audio_automatic_routing_disabled"

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final USB_MASS_STORAGE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field public static final USER_SETUP_PERSONALIZATION_STATE:Ljava/lang/String; = "user_setup_personalization_state"

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VALIDATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/provider/SettingsValidators$Validator;",
            ">;"
        }
    .end annotation
.end field

.field public static final VOICE_INTERACTION_SERVICE:Ljava/lang/String; = "voice_interaction_service"

.field public static final VOICE_RECOGNITION_SERVICE:Ljava/lang/String; = "voice_recognition_service"

.field public static final VOLUME_HUSH_GESTURE:Ljava/lang/String; = "volume_hush_gesture"

.field private static final VOLUME_HUSH_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final VOLUME_HUSH_MUTE:I = 0x2

.field public static final VOLUME_HUSH_OFF:I = 0x0

.field public static final VOLUME_HUSH_VIBRATE:I = 0x1

.field public static final VR_DISPLAY_MODE:Ljava/lang/String; = "vr_display_mode"

.field public static final VR_DISPLAY_MODE_LOW_PERSISTENCE:I = 0x0

.field public static final VR_DISPLAY_MODE_OFF:I = 0x1

.field private static final VR_DISPLAY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WAKE_GESTURE_ENABLED:Ljava/lang/String; = "wake_gesture_enabled"

.field private static final WAKE_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_DISCONNECT_DELAY_DURATION:Ljava/lang/String; = "wifi_disconnect_delay_duration"

.field private static final WIFI_DISCONNECT_DELAY_DURATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_IDLE_MS:Ljava/lang/String; = "wifi_idle_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_NUM_OPEN_NETWORKS_KEPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_WATCH_LIST:Ljava/lang/String; = "wifi_watchdog_watch_list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIsSystemProcess:Z

.field private static sLockSettings:Lcom/android/internal/widget/ILockSettings;

.field private static final sNameValueCache:Landroid/provider/Settings$NameValueCache;

.field private static final sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 93

    .line 4803
    const-string v0, "content://settings/secure"

    .line 4804
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 4806
    new-instance v0, Landroid/provider/Settings$ContentProviderHolder;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroid/provider/Settings$ContentProviderHolder;-><init>(Landroid/net/Uri;)V

    sput-object v0, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 4810
    new-instance v0, Landroid/provider/Settings$NameValueCache;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "GET_secure"

    const-string v3, "PUT_secure"

    sget-object v4, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;)V

    sput-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 4816
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    .line 4822
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    .line 4823
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4824
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4825
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4827
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 4828
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "adb_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4829
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "assisted_gps_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4830
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "bluetooth_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4831
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "bugreport_in_power_menu"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4832
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "cdma_cell_broadcast_sms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4833
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "roaming_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4834
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "subscription_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4835
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_activity_timeout_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4836
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_activity_timeout_wifi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4837
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4838
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "development_settings_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4839
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4840
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "display_size_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4841
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "download_manager_max_bytes_over_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4842
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "download_manager_recommended_max_bytes_over_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4843
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "mobile_data"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4844
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4845
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4846
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4847
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4848
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4849
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_global_alert_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4850
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_poll_interval"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4851
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_sample_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4852
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_time_cache_max_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4853
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4854
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4855
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4856
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4857
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4858
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4859
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4860
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4861
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "network_preference"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4862
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nitz_update_diff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4863
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nitz_update_spacing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4864
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "ntp_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4865
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "ntp_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4866
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "ntp_server_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4867
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_error_poll_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4868
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_long_poll_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4869
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_max_pdp_reset_fail_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4870
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_poll_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4871
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_trigger_packet_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4872
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_data_service_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4873
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_detection_redir_host"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4874
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_detection_target_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4875
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_dun_apn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4876
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_dun_required"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4877
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_supported"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4878
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4879
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "use_google_mail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4880
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_country_code"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4881
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_framework_scan_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4882
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_frequency_band"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4883
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_idle_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4884
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4885
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_mobile_data_transition_wakelock_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4886
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4887
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4888
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4889
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4890
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_p2p_device_name"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4891
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_saved_state"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4892
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_supplicant_scan_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4893
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_suspend_optimizations_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4894
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_coverage_extend_feature_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4895
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_verbose_logging_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4896
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_enhanced_auto_join"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4897
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_network_show_rssi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4898
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4899
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4900
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wimax_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4901
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "package_verifier_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4902
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "verifier_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4903
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "verifier_default_response"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4904
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_stall_alarm_non_aggressive_delay_in_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4905
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_stall_alarm_aggressive_delay_in_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4906
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "gprs_register_check_period_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4907
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wtf_is_fatal"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4908
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "battery_discharge_duration_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4909
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "battery_discharge_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4910
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "send_action_app_error"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4911
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_age_seconds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4912
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_max_files"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4913
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_quota_kb"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4914
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_quota_percent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4915
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_reserve_percent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4916
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox:"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4917
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "logcat_for_"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4918
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_free_storage_log_interval"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4919
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "disk_free_change_reporting_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4920
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_threshold_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4921
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_threshold_max_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4922
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_full_threshold_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4923
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sync_max_retry_delay_in_seconds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4924
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "connectivity_change_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4925
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "captive_portal_detection_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4926
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "captive_portal_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4927
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nsd_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4928
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "set_install_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4929
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "default_install_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4930
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "inet_condition_debounce_up_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4931
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "inet_condition_debounce_down_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4932
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "read_external_storage_enforced_default"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4933
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4934
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "global_http_proxy_host"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4935
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "global_http_proxy_port"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4936
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "global_http_proxy_exclusion_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4937
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "set_global_http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4938
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "default_dns_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4939
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "preferred_network_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4940
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "webview_data_reduction_proxy_key"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5447
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->BUGREPORT_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 5466
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ALLOW_MOCK_LOCATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 5513
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->BLUETOOTH_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 5562
    sget-object v0, Landroid/provider/SettingsValidators;->NULLABLE_COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->AUTOFILL_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 5692
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SHOW_IME_WITH_HARD_KEYBOARD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 5802
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->WIFI_DISCONNECT_DELAY_DURATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6018
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->USB_MASS_STORAGE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6031
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6040
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6049
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_ON_LOCK_SCREEN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6059
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_DIALOG_SHOWN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6070
    sget-object v0, Landroid/provider/SettingsValidators;->NULLABLE_COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_TARGET_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6083
    new-instance v0, Landroid/provider/Settings$Secure$1;

    invoke-direct {v0}, Landroid/provider/Settings$Secure$1;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_BUTTON_TARGET_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6098
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TOUCH_EXPLORATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6106
    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    const-string v1, ":"

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ENABLED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6118
    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    const-string v1, ":"

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6127
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->HUSH_GESTURE_USED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6135
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->MANUAL_RINGER_TOGGLE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6156
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SPEAK_PASSWORD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6166
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6181
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6195
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6211
    new-instance v0, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {v0, v1, v2}, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;-><init>(FF)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6266
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6279
    sget-object v0, Landroid/provider/SettingsValidators;->LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6295
    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v1, "-1"

    const-string v2, "0"

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "3"

    const-string v6, "4"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_PRESET_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6309
    sget-object v0, Landroid/provider/SettingsValidators;->ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6322
    sget-object v0, Landroid/provider/SettingsValidators;->ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6339
    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_EDGE_TYPE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6353
    sget-object v0, Landroid/provider/SettingsValidators;->ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_EDGE_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6366
    sget-object v0, Landroid/provider/SettingsValidators;->ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_WINDOW_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6384
    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v1, "DEFAULT"

    const-string v2, "MONOSPACE"

    const-string v3, "SANS_SERIF"

    const-string v4, "SERIF"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_TYPEFACE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6396
    new-instance v0, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2}, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;-><init>(FF)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_FONT_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6405
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_INVERSION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6417
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6435
    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v1, "-1"

    const-string v2, "0"

    const-string v3, "11"

    const-string v4, "12"

    const-string v5, "13"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_DALTONIZER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6448
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_AUTOCLICK_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6461
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_AUTOCLICK_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6473
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_LARGE_POINTER_ICON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6482
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->LONG_PRESS_TIMEOUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6538
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TTS_DEFAULT_RATE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6545
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TTS_DEFAULT_PITCH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6552
    sget-object v0, Landroid/provider/SettingsValidators;->PACKAGE_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TTS_DEFAULT_SYNTH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6601
    new-instance v0, Landroid/provider/Settings$Secure$2;

    invoke-direct {v0}, Landroid/provider/Settings$Secure$2;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->TTS_DEFAULT_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6625
    new-instance v0, Landroid/provider/SettingsValidators$PackageNameListValidator;

    const-string v1, " "

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$PackageNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->TTS_ENABLED_PLUGINS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6636
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6647
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6658
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->WIFI_NUM_OPEN_NETWORKS_KEPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6819
    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->PREFERRED_TTY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6830
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ENHANCED_VOICE_PRIVACY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6840
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TTY_MODE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6850
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->RTT_CALLING_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7023
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->MOUNT_PLAY_NOTIFICATION_SND_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7031
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->MOUNT_UMS_AUTOSTART_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7039
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->MOUNT_UMS_PROMPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7047
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->MOUNT_UMS_NOTIFY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7066
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SHOW_FIRST_CRASH_DIALOG_DEV_OPTION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7094
    sget-object v0, Landroid/provider/SettingsValidators;->COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SELECTED_SPELL_CHECKER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7105
    sget-object v0, Landroid/provider/SettingsValidators;->COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SELECTED_SPELL_CHECKER_SUBTYPE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7115
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SPELL_CHECKER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7128
    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v1, "1"

    const-string v2, "2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->INCALL_POWER_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7186
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->WAKE_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7194
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DOZE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7208
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DOZE_PULSE_ON_PICK_UP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7222
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DOZE_PULSE_ON_DOUBLE_TAP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7267
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SCREENSAVER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7278
    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    const-string v1, ","

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->SCREENSAVER_COMPONENTS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7288
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SCREENSAVER_ACTIVATE_ON_DOCK_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7297
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SCREENSAVER_ACTIVATE_ON_SLEEP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7311
    sget-object v0, Landroid/provider/SettingsValidators;->COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NFC_PAYMENT_DEFAULT_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7419
    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    const-string v1, ":"

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_ASSISTANT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7433
    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    const-string v1, ":"

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7448
    new-instance v0, Landroid/provider/SettingsValidators$PackageNameListValidator;

    const-string v1, ":"

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$PackageNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7464
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SYNC_PARENT_SOUNDS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7552
    new-instance v0, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;

    const/4 v1, -0x1

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Landroid/provider/Settings$Secure;->SLEEP_TIMEOUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7561
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DOUBLE_TAP_TO_WAKE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7579
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->CAMERA_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7590
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7602
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->CAMERA_DOUBLE_TWIST_TO_FLIP_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7613
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SWIPE_UP_TO_SWITCH_APPS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7638
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7656
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_SILENCE_ALERTS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7667
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_WAKE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7689
    new-instance v0, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_AUTO_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7699
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_COLOR_TEMPERATURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7710
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_CUSTOM_START_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7720
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_CUSTOM_END_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7740
    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    const-string v1, ":"

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ENABLED_VR_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7752
    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v1, "0"

    const-string v2, "1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->VR_DISPLAY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7811
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7855
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SYSTEM_NAVIGATION_KEYS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7863
    new-instance v0, Landroid/provider/Settings$Secure$3;

    invoke-direct {v0}, Landroid/provider/Settings$Secure$3;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->QS_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7914
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NOTIFICATION_BADGING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7922
    new-instance v0, Landroid/provider/Settings$Secure$4;

    invoke-direct {v0}, Landroid/provider/Settings$Secure$4;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->QS_AUTO_ADDED_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7944
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->LOCKDOWN_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8010
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->VOLUME_HUSH_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8054
    const-string v1, "bugreport_in_power_menu"

    const-string/jumbo v2, "mock_location"

    const-string/jumbo v3, "usb_mass_storage_enabled"

    const-string v4, "accessibility_display_inversion_enabled"

    const-string v5, "accessibility_display_daltonizer"

    const-string v6, "accessibility_display_daltonizer_enabled"

    const-string v7, "accessibility_display_magnification_enabled"

    const-string v8, "accessibility_display_magnification_navbar_enabled"

    const-string v9, "autofill_service"

    const-string v10, "accessibility_display_magnification_scale"

    const-string v11, "enabled_accessibility_services"

    const-string v12, "enabled_vr_listeners"

    const-string/jumbo v13, "touch_exploration_granted_accessibility_services"

    const-string/jumbo v14, "touch_exploration_enabled"

    const-string v15, "accessibility_enabled"

    const-string v16, "accessibility_shortcut_target_service"

    const-string v17, "accessibility_button_target_component"

    const-string v18, "accessibility_shortcut_dialog_shown"

    const-string v19, "accessibility_shortcut_enabled"

    const-string v20, "accessibility_shortcut_on_lock_screen"

    const-string/jumbo v21, "speak_password"

    const-string v22, "high_text_contrast_enabled"

    const-string v23, "accessibility_captioning_preset"

    const-string v24, "accessibility_captioning_enabled"

    const-string v25, "accessibility_captioning_locale"

    const-string v26, "accessibility_captioning_background_color"

    const-string v27, "accessibility_captioning_foreground_color"

    const-string v28, "accessibility_captioning_edge_type"

    const-string v29, "accessibility_captioning_edge_color"

    const-string v30, "accessibility_captioning_typeface"

    const-string v31, "accessibility_captioning_font_scale"

    const-string v32, "accessibility_captioning_window_color"

    const-string/jumbo v33, "tts_default_rate"

    const-string/jumbo v34, "tts_default_pitch"

    const-string/jumbo v35, "tts_default_synth"

    const-string/jumbo v36, "tts_enabled_plugins"

    const-string/jumbo v37, "tts_default_locale"

    const-string/jumbo v38, "show_ime_with_hard_keyboard"

    const-string/jumbo v39, "wifi_networks_available_notification_on"

    const-string/jumbo v40, "wifi_networks_available_repeat_delay"

    const-string/jumbo v41, "wifi_num_open_networks_kept"

    const-string/jumbo v42, "selected_spell_checker"

    const-string/jumbo v43, "selected_spell_checker_subtype"

    const-string/jumbo v44, "spell_checker_enabled"

    const-string/jumbo v45, "mount_play_not_snd"

    const-string/jumbo v46, "mount_ums_autostart"

    const-string/jumbo v47, "mount_ums_prompt"

    const-string/jumbo v48, "mount_ums_notify_enabled"

    const-string/jumbo v49, "sleep_timeout"

    const-string v50, "double_tap_to_wake"

    const-string/jumbo v51, "wake_gesture_enabled"

    const-string/jumbo v52, "long_press_timeout"

    const-string v53, "camera_gesture_disabled"

    const-string v54, "accessibility_autoclick_enabled"

    const-string v55, "accessibility_autoclick_delay"

    const-string v56, "accessibility_large_pointer_icon"

    const-string/jumbo v57, "preferred_tty_mode"

    const-string v58, "enhanced_voice_privacy_enabled"

    const-string/jumbo v59, "tty_mode_enabled"

    const-string/jumbo v60, "rtt_calling_mode"

    const-string v61, "incall_power_button_behavior"

    const-string/jumbo v62, "night_display_custom_start_time"

    const-string/jumbo v63, "night_display_custom_end_time"

    const-string/jumbo v64, "night_display_color_temperature"

    const-string/jumbo v65, "night_display_auto_mode"

    const-string/jumbo v66, "sync_parent_sounds"

    const-string v67, "camera_double_twist_to_flip_enabled"

    const-string/jumbo v68, "swipe_up_to_switch_apps_enabled"

    const-string v69, "camera_double_tap_power_gesture_disabled"

    const-string/jumbo v70, "system_navigation_keys_enabled"

    const-string/jumbo v71, "sysui_qs_tiles"

    const-string v72, "doze_enabled"

    const-string v73, "doze_pulse_on_pick_up"

    const-string v74, "doze_pulse_on_double_tap"

    const-string/jumbo v75, "nfc_payment_default_component"

    const-string v76, "automatic_storage_manager_days_to_retain"

    const-string v77, "assist_gesture_enabled"

    const-string v78, "assist_gesture_silence_alerts_enabled"

    const-string v79, "assist_gesture_wake_enabled"

    const-string/jumbo v80, "vr_display_mode"

    const-string/jumbo v81, "notification_badging"

    const-string/jumbo v82, "qs_auto_tiles"

    const-string/jumbo v83, "screensaver_enabled"

    const-string/jumbo v84, "screensaver_components"

    const-string/jumbo v85, "screensaver_activate_on_dock"

    const-string/jumbo v86, "screensaver_activate_on_sleep"

    const-string/jumbo v87, "lockdown_in_power_menu"

    const-string/jumbo v88, "show_first_crash_dialog_dev_option"

    const-string/jumbo v89, "volume_hush_gesture"

    const-string/jumbo v90, "manual_ringer_toggle_count"

    const-string v91, "hush_gesture_used"

    const-string/jumbo v92, "wifi_disconnect_delay_duration"

    filled-new-array/range {v1 .. v92}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 8155
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    .line 8157
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "bugreport_in_power_menu"

    sget-object v2, Landroid/provider/Settings$Secure;->BUGREPORT_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8158
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "mock_location"

    sget-object v2, Landroid/provider/Settings$Secure;->ALLOW_MOCK_LOCATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8159
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->USB_MASS_STORAGE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8160
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_display_inversion_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_INVERSION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8162
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_display_daltonizer"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_DALTONIZER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8164
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_display_daltonizer_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8166
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_display_magnification_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8168
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8170
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "autofill_service"

    sget-object v2, Landroid/provider/Settings$Secure;->AUTOFILL_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8171
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_display_magnification_scale"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8173
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "enabled_accessibility_services"

    sget-object v2, Landroid/provider/Settings$Secure;->ENABLED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8175
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "enabled_vr_listeners"

    sget-object v2, Landroid/provider/Settings$Secure;->ENABLED_VR_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8176
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    sget-object v2, Landroid/provider/Settings$Secure;->TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8178
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "touch_exploration_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->TOUCH_EXPLORATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8179
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8180
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_shortcut_target_service"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_TARGET_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8182
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_button_target_component"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_BUTTON_TARGET_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8184
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_shortcut_dialog_shown"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_DIALOG_SHOWN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8186
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_shortcut_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8188
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_shortcut_on_lock_screen"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_ON_LOCK_SCREEN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8190
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "speak_password"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SPEAK_PASSWORD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8191
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "high_text_contrast_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8193
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_preset"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_PRESET_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8195
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8197
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_locale"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8199
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_background_color"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8201
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_foreground_color"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8203
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_edge_type"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_EDGE_TYPE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8205
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_edge_color"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_EDGE_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8207
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_typeface"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_TYPEFACE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8209
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_font_scale"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_FONT_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8211
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_window_color"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_WINDOW_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8213
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "tts_default_rate"

    sget-object v2, Landroid/provider/Settings$Secure;->TTS_DEFAULT_RATE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8214
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "tts_default_pitch"

    sget-object v2, Landroid/provider/Settings$Secure;->TTS_DEFAULT_PITCH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8215
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "tts_default_synth"

    sget-object v2, Landroid/provider/Settings$Secure;->TTS_DEFAULT_SYNTH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8216
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "tts_enabled_plugins"

    sget-object v2, Landroid/provider/Settings$Secure;->TTS_ENABLED_PLUGINS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8217
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "tts_default_locale"

    sget-object v2, Landroid/provider/Settings$Secure;->TTS_DEFAULT_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8218
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    sget-object v2, Landroid/provider/Settings$Secure;->SHOW_IME_WITH_HARD_KEYBOARD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8219
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    sget-object v2, Landroid/provider/Settings$Secure;->WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8221
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    sget-object v2, Landroid/provider/Settings$Secure;->WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8223
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wifi_num_open_networks_kept"

    sget-object v2, Landroid/provider/Settings$Secure;->WIFI_NUM_OPEN_NETWORKS_KEPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8224
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "selected_spell_checker"

    sget-object v2, Landroid/provider/Settings$Secure;->SELECTED_SPELL_CHECKER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8225
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "selected_spell_checker_subtype"

    sget-object v2, Landroid/provider/Settings$Secure;->SELECTED_SPELL_CHECKER_SUBTYPE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8227
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "spell_checker_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->SPELL_CHECKER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8228
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "mount_play_not_snd"

    sget-object v2, Landroid/provider/Settings$Secure;->MOUNT_PLAY_NOTIFICATION_SND_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8229
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "mount_ums_autostart"

    sget-object v2, Landroid/provider/Settings$Secure;->MOUNT_UMS_AUTOSTART_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8230
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "mount_ums_prompt"

    sget-object v2, Landroid/provider/Settings$Secure;->MOUNT_UMS_PROMPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8231
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "mount_ums_notify_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->MOUNT_UMS_NOTIFY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8232
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "sleep_timeout"

    sget-object v2, Landroid/provider/Settings$Secure;->SLEEP_TIMEOUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8233
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "double_tap_to_wake"

    sget-object v2, Landroid/provider/Settings$Secure;->DOUBLE_TAP_TO_WAKE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8234
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wake_gesture_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->WAKE_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8235
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "long_press_timeout"

    sget-object v2, Landroid/provider/Settings$Secure;->LONG_PRESS_TIMEOUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8236
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "camera_gesture_disabled"

    sget-object v2, Landroid/provider/Settings$Secure;->CAMERA_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8237
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_autoclick_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_AUTOCLICK_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8239
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_autoclick_delay"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_AUTOCLICK_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8240
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_large_pointer_icon"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_LARGE_POINTER_ICON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8242
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "preferred_tty_mode"

    sget-object v2, Landroid/provider/Settings$Secure;->PREFERRED_TTY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8243
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "enhanced_voice_privacy_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ENHANCED_VOICE_PRIVACY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8245
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "tty_mode_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->TTY_MODE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8246
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "rtt_calling_mode"

    sget-object v2, Landroid/provider/Settings$Secure;->RTT_CALLING_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8247
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "incall_power_button_behavior"

    sget-object v2, Landroid/provider/Settings$Secure;->INCALL_POWER_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8248
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "night_display_custom_start_time"

    sget-object v2, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_CUSTOM_START_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8250
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "night_display_custom_end_time"

    sget-object v2, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_CUSTOM_END_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8251
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "night_display_color_temperature"

    sget-object v2, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_COLOR_TEMPERATURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8253
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "night_display_auto_mode"

    sget-object v2, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_AUTO_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8254
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "sync_parent_sounds"

    sget-object v2, Landroid/provider/Settings$Secure;->SYNC_PARENT_SOUNDS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8255
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "camera_double_twist_to_flip_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->CAMERA_DOUBLE_TWIST_TO_FLIP_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8257
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "swipe_up_to_switch_apps_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->SWIPE_UP_TO_SWITCH_APPS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8259
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "camera_double_tap_power_gesture_disabled"

    sget-object v2, Landroid/provider/Settings$Secure;->CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8261
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "system_navigation_keys_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->SYSTEM_NAVIGATION_KEYS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8263
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "sysui_qs_tiles"

    sget-object v2, Landroid/provider/Settings$Secure;->QS_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8264
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "doze_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->DOZE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8265
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "doze_pulse_on_pick_up"

    sget-object v2, Landroid/provider/Settings$Secure;->DOZE_PULSE_ON_PICK_UP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8266
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "doze_pulse_on_double_tap"

    sget-object v2, Landroid/provider/Settings$Secure;->DOZE_PULSE_ON_DOUBLE_TAP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8267
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "nfc_payment_default_component"

    sget-object v2, Landroid/provider/Settings$Secure;->NFC_PAYMENT_DEFAULT_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8268
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "automatic_storage_manager_days_to_retain"

    sget-object v2, Landroid/provider/Settings$Secure;->AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8270
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "assist_gesture_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8271
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "assist_gesture_silence_alerts_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_SILENCE_ALERTS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8273
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "assist_gesture_wake_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_WAKE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8274
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "vr_display_mode"

    sget-object v2, Landroid/provider/Settings$Secure;->VR_DISPLAY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8275
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "notification_badging"

    sget-object v2, Landroid/provider/Settings$Secure;->NOTIFICATION_BADGING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8276
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "qs_auto_tiles"

    sget-object v2, Landroid/provider/Settings$Secure;->QS_AUTO_ADDED_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8277
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "screensaver_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->SCREENSAVER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8278
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "screensaver_components"

    sget-object v2, Landroid/provider/Settings$Secure;->SCREENSAVER_COMPONENTS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8279
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "screensaver_activate_on_dock"

    sget-object v2, Landroid/provider/Settings$Secure;->SCREENSAVER_ACTIVATE_ON_DOCK_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8280
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "screensaver_activate_on_sleep"

    sget-object v2, Landroid/provider/Settings$Secure;->SCREENSAVER_ACTIVATE_ON_SLEEP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8281
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "lockdown_in_power_menu"

    sget-object v2, Landroid/provider/Settings$Secure;->LOCKDOWN_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8282
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "show_first_crash_dialog_dev_option"

    sget-object v2, Landroid/provider/Settings$Secure;->SHOW_FIRST_CRASH_DIALOG_DEV_OPTION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8284
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "volume_hush_gesture"

    sget-object v2, Landroid/provider/Settings$Secure;->VOLUME_HUSH_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8285
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "enabled_notification_listeners"

    sget-object v2, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8287
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "enabled_notification_assistant"

    sget-object v2, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_ASSISTANT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8289
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "enabled_notification_policy_access_packages"

    sget-object v2, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8291
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "hush_gesture_used"

    sget-object v2, Landroid/provider/Settings$Secure;->HUSH_GESTURE_USED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8292
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "manual_ringer_toggle_count"

    sget-object v2, Landroid/provider/Settings$Secure;->MANUAL_RINGER_TOGGLE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8293
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wifi_disconnect_delay_duration"

    sget-object v2, Landroid/provider/Settings$Secure;->WIFI_DISCONNECT_DELAY_DURATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8294
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "lock_screen_allow_private_notifications"

    sget-object v2, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8295
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "lock_screen_show_notifications"

    sget-object v2, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8307
    const-string v0, "enabled_notification_listeners"

    const-string v1, "enabled_notification_assistant"

    const-string v2, "enabled_notification_policy_access_packages"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Secure;->LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

    .line 8317
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    .line 8320
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "accessibility_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8321
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "mock_location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8322
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "allowed_geolocation_origins"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8323
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "autofill_service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8324
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "default_input_method"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8325
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "enabled_accessibility_services"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8326
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "enabled_input_methods"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8327
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "location_changer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8328
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "location_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8329
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "location_providers_allowed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8330
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "selected_input_method_subtype"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8332
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "selected_spell_checker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8333
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "selected_spell_checker_subtype"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8346
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 8348
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "enabled_accessibility_services"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8349
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "speak_password"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8350
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_display_inversion_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8351
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8352
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_preset"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8353
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_edge_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8354
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_edge_color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8355
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_locale"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8356
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_background_color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8357
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_foreground_color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8358
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_typeface"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8359
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_font_scale"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8360
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_window_color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8361
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8362
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_display_daltonizer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8363
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_autoclick_delay"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8364
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_autoclick_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8365
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_large_pointer_icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8367
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "default_input_method"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8368
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "enabled_input_methods"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8370
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "android_id"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8372
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "package_verifier_user_consent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8373
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mock_location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8374
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4796
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static clearProviderForTest()V
    .locals 1

    .line 4950
    sget-object v0, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0}, Landroid/provider/Settings$ContentProviderHolder;->clearProviderForTest()V

    .line 4951
    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->clearGenerationTrackerForTest()V

    .line 4952
    return-void
.end method

.method public static getCloneToManagedProfileSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8339
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8340
    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 5390
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .line 5356
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .param p3, "userHandle"    # I

    .line 5362
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5364
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5365
    :catch_0
    move-exception v1

    .line 5366
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2

    .line 5364
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 5396
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5397
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5401
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 5402
    :catch_0
    move-exception v1

    .line 5403
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5398
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 5213
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 5176
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 5219
    const-string/jumbo v0, "location_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5221
    invoke-static {p0, p2}, Landroid/provider/Settings$Secure;->getLocationModeForUser(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0

    .line 5223
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5225
    .local v0, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 5226
    :catch_0
    move-exception v1

    .line 5227
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .line 5181
    const-string/jumbo v0, "location_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5183
    invoke-static {p0, p3}, Landroid/provider/Settings$Secure;->getLocationModeForUser(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0

    .line 5185
    :cond_0
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5187
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5188
    :catch_0
    move-exception v1

    .line 5189
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2

    .line 5187
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    move v1, p2

    :goto_0
    return v1
.end method

.method private static final getLocationModeForUser(Landroid/content/ContentResolver;I)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userId"    # I

    .line 8512
    invoke-static {}, Landroid/provider/Settings;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8513
    :try_start_0
    const-string v1, "gps"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 8515
    .local v1, "gpsEnabled":Z
    const-string/jumbo v2, "network"

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 8517
    .local v2, "networkEnabled":Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 8518
    const/4 v3, 0x3

    monitor-exit v0

    return v3

    .line 8519
    :cond_0
    if-eqz v1, :cond_1

    .line 8520
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 8521
    :cond_1
    if-eqz v2, :cond_2

    .line 8522
    const/4 v3, 0x2

    monitor-exit v0

    return v3

    .line 8524
    :cond_2
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 8526
    .end local v1    # "gpsEnabled":Z
    .end local v2    # "networkEnabled":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 5304
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 5269
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 5310
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5312
    .local v0, "valString":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 5313
    :catch_0
    move-exception v1

    .line 5314
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J
    .param p4, "userHandle"    # I

    .line 5275
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5278
    .local v0, "valString":Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5279
    :catch_0
    move-exception v1

    .line 5280
    .local v1, "e":Ljava/lang/NumberFormatException;
    nop

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    move-wide v1, p2

    goto :goto_1

    .line 5278
    :cond_0
    move-wide v1, p2

    .line 5281
    .local v1, "value":J
    :goto_0
    nop

    .line 5280
    :goto_1
    nop

    .line 5282
    return-wide v1
.end method

.method public static getMovedToGlobalSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4945
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4946
    return-void
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .line 4961
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 4967
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4968
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has moved from android.provider.Settings.Secure to android.provider.Settings.Global."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4970
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4973
    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4974
    const-class v0, Landroid/provider/Settings$Secure;

    monitor-enter v0

    .line 4975
    :try_start_0
    sget-object v1, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 4976
    const-string/jumbo v1, "lock_settings"

    .line 4977
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 4976
    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    sput-object v1, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    .line 4978
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    sput-boolean v1, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z

    .line 4980
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4981
    sget-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    if-eqz v0, :cond_5

    sget-boolean v0, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z

    if-nez v0, :cond_5

    .line 4984
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 4986
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_3

    .line 4987
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4988
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x16

    if-gt v1, v4, :cond_3

    move v2, v3

    nop

    :cond_3
    move v1, v2

    .line 4990
    .local v1, "isPreMnc":Z
    if-eqz v1, :cond_4

    .line 4992
    :try_start_1
    sget-object v2, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    const-string v3, "0"

    invoke-interface {v2, p1, v3, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 4993
    :catch_0
    move-exception v2

    .line 4995
    goto :goto_1

    .line 4997
    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings.Secure."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is deprecated and no longer accessible. See API documentation for potential replacements."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4980
    .end local v0    # "application":Landroid/app/Application;
    .end local v1    # "isPreMnc":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5004
    :cond_5
    :goto_1
    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 5153
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5154
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has moved from android.provider.Settings.Secure to android.provider.Settings.Global, returning global URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5156
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 5158
    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8387
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static final isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8403
    const-string/jumbo v0, "location_providers_allowed"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 8405
    .local v0, "allowedProviders":Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 5421
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "userHandle"    # I

    .line 5427
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 5245
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .line 5251
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 5332
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .line 5338
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 5015
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "makeDefault"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5087
    nop

    .line 5088
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v5

    .line 5087
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 5021
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "makeDefault"    # Z
    .param p5, "userHandle"    # I

    .line 5028
    const-string/jumbo v0, "location_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5030
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, p5}, Landroid/provider/Settings$Secure;->setLocationModeForUser(Landroid/content/ContentResolver;II)Z

    move-result v0

    return v0

    .line 5032
    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5033
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has moved from android.provider.Settings.Secure to android.provider.Settings.Global"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5035
    invoke-static/range {p0 .. p5}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0

    .line 5038
    :cond_1
    sget-object v1, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static resetToDefaults(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5108
    nop

    .line 5109
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    .line 5108
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$Secure;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 5110
    return-void
.end method

.method public static resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "userHandle"    # I

    .line 5133
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5134
    .local v0, "arg":Landroid/os/Bundle;
    const-string v1, "_user"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5135
    if-eqz p1, :cond_0

    .line 5136
    const-string v1, "_tag"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5138
    :cond_0
    const-string v1, "_reset_mode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5139
    sget-object v1, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 5140
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RESET_secure"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5143
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    goto :goto_0

    .line 5141
    :catch_0
    move-exception v0

    .line 5142
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t reset do defaults for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5144
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static setLocationModeForUser(Landroid/content/ContentResolver;II)Z
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "mode"    # I
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8473
    invoke-static {}, Landroid/provider/Settings;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8474
    const/4 v1, 0x0

    .line 8475
    .local v1, "gps":Z
    const/4 v2, 0x0

    .line 8476
    .local v2, "network":Z
    packed-switch p1, :pswitch_data_0

    .line 8490
    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    goto :goto_2

    .line 8486
    :pswitch_0
    const/4 v1, 0x1

    .line 8487
    const/4 v2, 0x1

    .line 8488
    goto :goto_0

    .line 8483
    :pswitch_1
    const/4 v2, 0x1

    .line 8484
    goto :goto_0

    .line 8480
    :pswitch_2
    const/4 v1, 0x1

    .line 8481
    goto :goto_0

    .line 8478
    :pswitch_3
    nop

    .line 8493
    :goto_0
    const-string/jumbo v3, "network"

    invoke-static {p0, v3, v2, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v3

    .line 8495
    .local v3, "nlpSuccess":Z
    const-string v4, "gps"

    invoke-static {p0, v4, v1, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v4

    .line 8497
    .local v4, "gpsSuccess":Z
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    monitor-exit v0

    return v5

    .line 8490
    .end local v3    # "nlpSuccess":Z
    .end local v4    # "gpsSuccess":Z
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid location mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8498
    .end local v1    # "gps":Z
    .end local v2    # "network":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8419
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 8420
    return-void
.end method

.method public static final setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8437
    invoke-static {}, Landroid/provider/Settings;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8441
    if-eqz p2, :cond_0

    .line 8442
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    goto :goto_0

    .line 8448
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 8444
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 8446
    :goto_0
    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {p0, v1, p1, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 8448
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
