.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpActiveChangedListener;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$PackageOps;
    }
.end annotation


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ASK:I = 0x5

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_FOREGROUND:I = 0x4

.field public static final MODE_IGNORED:I = 0x1

.field public static final MODE_NAMES:[Ljava/lang/String;

.field public static final OPSTR_ACCEPT_HANDOVER:Ljava/lang/String; = "android:accept_handover"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ACCESS_MOBILE_NETWORK:Ljava/lang/String; = "nubia:access_mobile_network"

.field public static final OPSTR_ACCESS_NOTIFICATIONS:Ljava/lang/String; = "android:access_notifications"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ADD_VOICEMAIL:Ljava/lang/String; = "android:add_voicemail"

.field public static final OPSTR_ANSWER_PHONE_CALLS:Ljava/lang/String; = "android:answer_phone_calls"

.field public static final OPSTR_ASSIST_SCREENSHOT:Ljava/lang/String; = "android:assist_screenshot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ASSIST_STRUCTURE:Ljava/lang/String; = "android:assist_structure"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_ACCESSIBILITY_VOLUME:Ljava/lang/String; = "android:audio_accessibility_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_ALARM_VOLUME:Ljava/lang/String; = "android:audio_alarm_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_BLUETOOTH_VOLUME:Ljava/lang/String; = "android:audio_bluetooth_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_MASTER_VOLUME:Ljava/lang/String; = "android:audio_master_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_MEDIA_VOLUME:Ljava/lang/String; = "android:audio_media_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_NOTIFICATION_VOLUME:Ljava/lang/String; = "android:audio_notification_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_RING_VOLUME:Ljava/lang/String; = "android:audio_ring_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_VOICE_VOLUME:Ljava/lang/String; = "android:audio_voice_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUTO_START:Ljava/lang/String; = "android:auto_start"

.field public static final OPSTR_BACKGROUND_START_ACTIVITY:Ljava/lang/String; = "nubia:background_start_activity"

.field public static final OPSTR_BIND_ACCESSIBILITY_SERVICE:Ljava/lang/String; = "android:bind_accessibility_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_BLUETOOTH_ADMIN:Ljava/lang/String; = "android:bluetooth_admin"

.field public static final OPSTR_BLUETOOTH_SCAN:Ljava/lang/String; = "android:bluetooth_scan"

.field public static final OPSTR_BODY_SENSORS:Ljava/lang/String; = "android:body_sensors"

.field public static final OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field public static final OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final OPSTR_CHANGE_WIFI_STATE:Ljava/lang/String; = "android:change_wifi_state"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field public static final OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final OPSTR_GET_ACCOUNTS:Ljava/lang/String; = "android:get_accounts"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field public static final OPSTR_GPS:Ljava/lang/String; = "android:gps"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_INSTALL_SHORTCUT:Ljava/lang/String; = "android:install_shortcut"

.field public static final OPSTR_INSTANT_APP_START_FOREGROUND:Ljava/lang/String; = "android:instant_app_start_foreground"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_LOCKSCREEN_DISPLAY_WINDOWS:Ljava/lang/String; = "nubia:lockscreen_display_windows"

.field public static final OPSTR_MANAGE_IPSEC_TUNNELS:Ljava/lang/String; = "android:manage_ipsec_tunnels"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_MOCK_LOCATION:Ljava/lang/String; = "android:mock_location"

.field public static final OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field public static final OPSTR_MUTE_MICROPHONE:Ljava/lang/String; = "android:mute_microphone"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_NEIGHBORING_CELLS:Ljava/lang/String; = "android:neighboring_cells"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_PICTURE_IN_PICTURE:Ljava/lang/String; = "android:picture_in_picture"

.field public static final OPSTR_PLAY_AUDIO:Ljava/lang/String; = "android:play_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_POST_NOTIFICATION:Ljava/lang/String; = "android:post_notification"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_PROCESS_OUTGOING_CALLS:Ljava/lang/String; = "android:process_outgoing_calls"

.field public static final OPSTR_PROJECT_MEDIA:Ljava/lang/String; = "android:project_media"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_BROWSER:Ljava/lang/String; = "nubia:read_browser"

.field public static final OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field public static final OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field public static final OPSTR_READ_CELL_BROADCASTS:Ljava/lang/String; = "android:read_cell_broadcasts"

.field public static final OPSTR_READ_CLIPBOARD:Ljava/lang/String; = "android:read_clipboard"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field public static final OPSTR_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android:read_external_storage"

.field public static final OPSTR_READ_ICC_SMS:Ljava/lang/String; = "android:read_icc_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_PHONE_NUMBERS:Ljava/lang/String; = "android:read_phone_numbers"

.field public static final OPSTR_READ_PHONE_STATE:Ljava/lang/String; = "android:read_phone_state"

.field public static final OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field public static final OPSTR_RECEIVE_EMERGENCY_BROADCAST:Ljava/lang/String; = "android:receive_emergency_broadcast"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field public static final OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field public static final OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field public static final OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field public static final OPSTR_REQUEST_DELETE_PACKAGES:Ljava/lang/String; = "android:request_delete_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_REQUEST_INSTALL_PACKAGES:Ljava/lang/String; = "android:request_install_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_RUN_ANY_IN_BACKGROUND:Ljava/lang/String; = "android:run_any_in_background"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_RUN_IN_BACKGROUND:Ljava/lang/String; = "android:run_in_background"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_SEND_MMS:Ljava/lang/String; = "android:send_mms"

.field public static final OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field public static final OPSTR_SOURCE_INSTALLER:Ljava/lang/String; = "nubia:source_installer"

.field public static final OPSTR_START_FOREGROUND:Ljava/lang/String; = "android:start_foreground"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field public static final OPSTR_TAKE_AUDIO_FOCUS:Ljava/lang/String; = "android:take_audio_focus"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_TAKE_MEDIA_BUTTONS:Ljava/lang/String; = "android:take_media_buttons"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_TOAST_WINDOW:Ljava/lang/String; = "android:toast_window"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_TURN_SCREEN_ON:Ljava/lang/String; = "android:turn_screen_on"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_USE_FINGERPRINT:Ljava/lang/String; = "android:use_fingerprint"

.field public static final OPSTR_USE_SIP:Ljava/lang/String; = "android:use_sip"

.field public static final OPSTR_VIBRATE:Ljava/lang/String; = "android:vibrate"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WAKE_LOCK:Ljava/lang/String; = "android:wake_lock"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WIFI_SCAN:Ljava/lang/String; = "android:wifi_scan"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_BROWSER:Ljava/lang/String; = "nubia:write_browser"

.field public static final OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field public static final OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field public static final OPSTR_WRITE_CLIPBOARD:Ljava/lang/String; = "android:write_clipboard"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field public static final OPSTR_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:write_external_storage"

.field public static final OPSTR_WRITE_ICC_SMS:Ljava/lang/String; = "android:write_icc_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_MMS:Ljava/lang/String; = "android:write_mms"

.field public static final OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field public static final OPSTR_WRITE_SMS:Ljava/lang/String; = "android:write_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_WALLPAPER:Ljava/lang/String; = "android:write_wallpaper"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_ACCEPT_HANDOVER:I = 0x4a

.field public static final OP_ACCESS_MOBILE_NETWORK:I = 0x58

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final OP_ACTIVATE_VPN:I = 0x2f

.field public static final OP_ADD_VOICEMAIL:I = 0x34

.field public static final OP_ANSWER_PHONE_CALLS:I = 0x45

.field public static final OP_ASSIST_SCREENSHOT:I = 0x32

.field public static final OP_ASSIST_STRUCTURE:I = 0x31

.field public static final OP_AUDIO_ACCESSIBILITY_VOLUME:I = 0x40

.field public static final OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final OP_AUTO_START:I = 0x4f

.field public static final OP_BACKGROUND_START_ACTIVITY:I = 0x53

.field public static final OP_BIND_ACCESSIBILITY_SERVICE:I = 0x49

.field public static final OP_BLUETOOTH_ADMIN:I = 0x4e

.field public static final OP_BLUETOOTH_SCAN:I = 0x4d

.field public static final OP_BODY_SENSORS:I = 0x38

.field public static final OP_CALL_PHONE:I = 0xd

.field public static final OP_CAMERA:I = 0x1a

.field public static final OP_CHANGE_WIFI_STATE:I = 0x47

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_GET_ACCOUNTS:I = 0x3e

.field public static final OP_GET_USAGE_STATS:I = 0x2b

.field public static final OP_GPS:I = 0x2

.field public static final OP_INSTALL_SHORTCUT:I = 0x52

.field public static final OP_INSTANT_APP_START_FOREGROUND:I = 0x44

.field public static final OP_LOCKSCREEN_DISPLAY_WINDOWS:I = 0x54

.field public static final OP_MANAGE_IPSEC_TUNNELS:I = 0x4b

.field public static final OP_MOCK_LOCATION:I = 0x3a

.field public static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final OP_MONITOR_LOCATION:I = 0x29

.field public static final OP_MUTE_MICROPHONE:I = 0x2c

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NONE:I = -0x1

.field public static final OP_PICTURE_IN_PICTURE:I = 0x43

.field public static final OP_PLAY_AUDIO:I = 0x1c

.field public static final OP_POST_NOTIFICATION:I = 0xb

.field public static final OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field public static final OP_PROJECT_MEDIA:I = 0x2e

.field public static final OP_READ_BROWSER:I = 0x56

.field public static final OP_READ_CALENDAR:I = 0x8

.field public static final OP_READ_CALL_LOG:I = 0x6

.field public static final OP_READ_CELL_BROADCASTS:I = 0x39

.field public static final OP_READ_CLIPBOARD:I = 0x1d

.field public static final OP_READ_CONTACTS:I = 0x4

.field public static final OP_READ_EXTERNAL_STORAGE:I = 0x3b

.field public static final OP_READ_ICC_SMS:I = 0x15

.field public static final OP_READ_PHONE_NUMBERS:I = 0x41

.field public static final OP_READ_PHONE_STATE:I = 0x33

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_REQUEST_DELETE_PACKAGES:I = 0x48

.field public static final OP_REQUEST_INSTALL_PACKAGES:I = 0x42

.field public static final OP_RUN_ANY_IN_BACKGROUND:I = 0x46

.field public static final OP_RUN_IN_BACKGROUND:I = 0x3f

.field public static final OP_SEND_MMS:I = 0x50

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SOURCE_INSTALLER:I = 0x55

.field public static final OP_START_FOREGROUND:I = 0x4c

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final OP_TOAST_WINDOW:I = 0x2d

.field public static final OP_TURN_SCREEN_ON:I = 0x3d

.field public static final OP_USE_FINGERPRINT:I = 0x37

.field public static final OP_USE_SIP:I = 0x35

.field public static final OP_VIBRATE:I = 0x3

.field public static final OP_WAKE_LOCK:I = 0x28

.field public static final OP_WIFI_SCAN:I = 0xa

.field public static final OP_WRITE_BROWSER:I = 0x57

.field public static final OP_WRITE_CALENDAR:I = 0x9

.field public static final OP_WRITE_CALL_LOG:I = 0x7

.field public static final OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final OP_WRITE_CONTACTS:I = 0x5

.field public static final OP_WRITE_EXTERNAL_STORAGE:I = 0x3c

.field public static final OP_WRITE_ICC_SMS:I = 0x16

.field public static final OP_WRITE_MMS:I = 0x51

.field public static final OP_WRITE_SETTINGS:I = 0x17

.field public static final OP_WRITE_SMS:I = 0xf

.field public static final OP_WRITE_WALLPAPER:I = 0x30

.field private static final RUNTIME_AND_APPOP_PERMISSIONS_OPS:[I

.field public static final UID_STATE_BACKGROUND:I = 0x4

.field public static final UID_STATE_CACHED:I = 0x5

.field public static final UID_STATE_FOREGROUND:I = 0x3

.field public static final UID_STATE_FOREGROUND_SERVICE:I = 0x2

.field public static final UID_STATE_LAST_NON_RESTRICTED:I = 0x2

.field public static final UID_STATE_PERSISTENT:I = 0x0

.field public static final UID_STATE_TOP:I = 0x1

.field public static final WATCH_FOREGROUND_CHANGES:I = 0x1

.field public static final _NUM_OP:I = 0x59

.field public static final _NUM_UID_STATE:I = 0x6

.field private static sOpAllowSystemRestrictionBypass:[Z

.field private static sOpDefaultMode:[I

.field private static sOpDisableReset:[Z

.field private static sOpNames:[Ljava/lang/String;

.field private static sOpPerms:[Ljava/lang/String;

.field private static sOpRestrictions:[Ljava/lang/String;

.field private static sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpToString:[Ljava/lang/String;

.field private static sOpToSwitch:[I

.field private static sPermToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sToken:Landroid/os/IBinder;


# instance fields
.field final mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpActiveChangedListener;",
            "Lcom/android/internal/app/IAppOpsActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static constructor <clinit>()V
    .locals 91

    .line 149
    const-string v0, "allow"

    const-string v1, "ignore"

    const-string v2, "deny"

    const-string v3, "default"

    const-string v4, "foreground"

    const-string v5, "ask"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    .line 673
    const/16 v0, 0x24

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/AppOpsManager;->RUNTIME_AND_APPOP_PERMISSIONS_OPS:[I

    .line 736
    const/16 v0, 0x59

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 833
    const-string v2, "android:coarse_location"

    const-string v3, "android:fine_location"

    const-string v4, "android:gps"

    const-string v5, "android:vibrate"

    const-string v6, "android:read_contacts"

    const-string v7, "android:write_contacts"

    const-string v8, "android:read_call_log"

    const-string v9, "android:write_call_log"

    const-string v10, "android:read_calendar"

    const-string v11, "android:write_calendar"

    const-string v12, "android:wifi_scan"

    const-string v13, "android:post_notification"

    const-string v14, "android:neighboring_cells"

    const-string v15, "android:call_phone"

    const-string v16, "android:read_sms"

    const-string v17, "android:write_sms"

    const-string v18, "android:receive_sms"

    const-string v19, "android:receive_emergency_broadcast"

    const-string v20, "android:receive_mms"

    const-string v21, "android:receive_wap_push"

    const-string v22, "android:send_sms"

    const-string v23, "android:read_icc_sms"

    const-string v24, "android:write_icc_sms"

    const-string v25, "android:write_settings"

    const-string v26, "android:system_alert_window"

    const-string v27, "android:access_notifications"

    const-string v28, "android:camera"

    const-string v29, "android:record_audio"

    const-string v30, "android:play_audio"

    const-string v31, "android:read_clipboard"

    const-string v32, "android:write_clipboard"

    const-string v33, "android:take_media_buttons"

    const-string v34, "android:take_audio_focus"

    const-string v35, "android:audio_master_volume"

    const-string v36, "android:audio_voice_volume"

    const-string v37, "android:audio_ring_volume"

    const-string v38, "android:audio_media_volume"

    const-string v39, "android:audio_alarm_volume"

    const-string v40, "android:audio_notification_volume"

    const-string v41, "android:audio_bluetooth_volume"

    const-string v42, "android:wake_lock"

    const-string v43, "android:monitor_location"

    const-string v44, "android:monitor_location_high_power"

    const-string v45, "android:get_usage_stats"

    const-string v46, "android:mute_microphone"

    const-string v47, "android:toast_window"

    const-string v48, "android:project_media"

    const-string v49, "android:activate_vpn"

    const-string v50, "android:write_wallpaper"

    const-string v51, "android:assist_structure"

    const-string v52, "android:assist_screenshot"

    const-string v53, "android:read_phone_state"

    const-string v54, "android:add_voicemail"

    const-string v55, "android:use_sip"

    const-string v56, "android:process_outgoing_calls"

    const-string v57, "android:use_fingerprint"

    const-string v58, "android:body_sensors"

    const-string v59, "android:read_cell_broadcasts"

    const-string v60, "android:mock_location"

    const-string v61, "android:read_external_storage"

    const-string v62, "android:write_external_storage"

    const-string v63, "android:turn_screen_on"

    const-string v64, "android:get_accounts"

    const-string v65, "android:run_in_background"

    const-string v66, "android:audio_accessibility_volume"

    const-string v67, "android:read_phone_numbers"

    const-string v68, "android:request_install_packages"

    const-string v69, "android:picture_in_picture"

    const-string v70, "android:instant_app_start_foreground"

    const-string v71, "android:answer_phone_calls"

    const-string v72, "android:run_any_in_background"

    const-string v73, "android:change_wifi_state"

    const-string v74, "android:request_delete_packages"

    const-string v75, "android:bind_accessibility_service"

    const-string v76, "android:accept_handover"

    const-string v77, "android:manage_ipsec_tunnels"

    const-string v78, "android:start_foreground"

    const-string v79, "android:bluetooth_scan"

    const-string v80, "android:bluetooth_admin"

    const-string v81, "android:auto_start"

    const-string v82, "android:send_mms"

    const-string v83, "android:write_mms"

    const-string v84, "android:install_shortcut"

    const-string/jumbo v85, "nubia:background_start_activity"

    const-string/jumbo v86, "nubia:lockscreen_display_windows"

    const-string/jumbo v87, "nubia:source_installer"

    const-string/jumbo v88, "nubia:read_browser"

    const-string/jumbo v89, "nubia:write_browser"

    const-string/jumbo v90, "nubia:access_mobile_network"

    filled-new-array/range {v2 .. v90}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 931
    const-string v2, "COARSE_LOCATION"

    const-string v3, "FINE_LOCATION"

    const-string v4, "GPS"

    const-string v5, "VIBRATE"

    const-string v6, "READ_CONTACTS"

    const-string v7, "WRITE_CONTACTS"

    const-string v8, "READ_CALL_LOG"

    const-string v9, "WRITE_CALL_LOG"

    const-string v10, "READ_CALENDAR"

    const-string v11, "WRITE_CALENDAR"

    const-string v12, "WIFI_SCAN"

    const-string v13, "POST_NOTIFICATION"

    const-string v14, "NEIGHBORING_CELLS"

    const-string v15, "CALL_PHONE"

    const-string v16, "READ_SMS"

    const-string v17, "WRITE_SMS"

    const-string v18, "RECEIVE_SMS"

    const-string v19, "RECEIVE_EMERGECY_SMS"

    const-string v20, "RECEIVE_MMS"

    const-string v21, "RECEIVE_WAP_PUSH"

    const-string v22, "SEND_SMS"

    const-string v23, "READ_ICC_SMS"

    const-string v24, "WRITE_ICC_SMS"

    const-string v25, "WRITE_SETTINGS"

    const-string v26, "SYSTEM_ALERT_WINDOW"

    const-string v27, "ACCESS_NOTIFICATIONS"

    const-string v28, "CAMERA"

    const-string v29, "RECORD_AUDIO"

    const-string v30, "PLAY_AUDIO"

    const-string v31, "READ_CLIPBOARD"

    const-string v32, "WRITE_CLIPBOARD"

    const-string v33, "TAKE_MEDIA_BUTTONS"

    const-string v34, "TAKE_AUDIO_FOCUS"

    const-string v35, "AUDIO_MASTER_VOLUME"

    const-string v36, "AUDIO_VOICE_VOLUME"

    const-string v37, "AUDIO_RING_VOLUME"

    const-string v38, "AUDIO_MEDIA_VOLUME"

    const-string v39, "AUDIO_ALARM_VOLUME"

    const-string v40, "AUDIO_NOTIFICATION_VOLUME"

    const-string v41, "AUDIO_BLUETOOTH_VOLUME"

    const-string v42, "WAKE_LOCK"

    const-string v43, "MONITOR_LOCATION"

    const-string v44, "MONITOR_HIGH_POWER_LOCATION"

    const-string v45, "GET_USAGE_STATS"

    const-string v46, "MUTE_MICROPHONE"

    const-string v47, "TOAST_WINDOW"

    const-string v48, "PROJECT_MEDIA"

    const-string v49, "ACTIVATE_VPN"

    const-string v50, "WRITE_WALLPAPER"

    const-string v51, "ASSIST_STRUCTURE"

    const-string v52, "ASSIST_SCREENSHOT"

    const-string v53, "OP_READ_PHONE_STATE"

    const-string v54, "ADD_VOICEMAIL"

    const-string v55, "USE_SIP"

    const-string v56, "PROCESS_OUTGOING_CALLS"

    const-string v57, "USE_FINGERPRINT"

    const-string v58, "BODY_SENSORS"

    const-string v59, "READ_CELL_BROADCASTS"

    const-string v60, "MOCK_LOCATION"

    const-string v61, "READ_EXTERNAL_STORAGE"

    const-string v62, "WRITE_EXTERNAL_STORAGE"

    const-string v63, "TURN_ON_SCREEN"

    const-string v64, "GET_ACCOUNTS"

    const-string v65, "RUN_IN_BACKGROUND"

    const-string v66, "AUDIO_ACCESSIBILITY_VOLUME"

    const-string v67, "READ_PHONE_NUMBERS"

    const-string v68, "REQUEST_INSTALL_PACKAGES"

    const-string v69, "PICTURE_IN_PICTURE"

    const-string v70, "INSTANT_APP_START_FOREGROUND"

    const-string v71, "ANSWER_PHONE_CALLS"

    const-string v72, "RUN_ANY_IN_BACKGROUND"

    const-string v73, "CHANGE_WIFI_STATE"

    const-string v74, "REQUEST_DELETE_PACKAGES"

    const-string v75, "BIND_ACCESSIBILITY_SERVICE"

    const-string v76, "ACCEPT_HANDOVER"

    const-string v77, "MANAGE_IPSEC_TUNNELS"

    const-string v78, "START_FOREGROUND"

    const-string v79, "BLUETOOTH_SCAN"

    const-string v80, "BLUETOOTH_ADMIN"

    const-string v81, "AUTO_START"

    const-string v82, "SEND_MMS"

    const-string v83, "WRITE_MMS"

    const-string v84, "INSTALL_SHORTCUT"

    const-string v85, "BACKGROUND_START_ACTIVITY"

    const-string v86, "LOCKSCREEN_DISPLAY_WINDOWS"

    const-string v87, "SOURCE_INSTALLER"

    const-string v88, "READ_BROWSER"

    const-string v89, "WRITE_BROWSER"

    const-string v90, "ACCESS_MOBILE_NETWORK"

    filled-new-array/range {v2 .. v90}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 1029
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string v5, "android.permission.VIBRATE"

    const-string v6, "android.permission.READ_CONTACTS"

    const-string v7, "android.permission.WRITE_CONTACTS"

    const-string v8, "android.permission.READ_CALL_LOG"

    const-string v9, "android.permission.WRITE_CALL_LOG"

    const-string v10, "android.permission.READ_CALENDAR"

    const-string v11, "android.permission.WRITE_CALENDAR"

    const-string v12, "android.permission.ACCESS_WIFI_STATE"

    const-string v15, "android.permission.CALL_PHONE"

    const-string v16, "android.permission.READ_SMS"

    const-string v17, "android.permission.WRITE_SMS"

    const-string v18, "android.permission.RECEIVE_SMS"

    const-string v19, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const-string v20, "android.permission.RECEIVE_MMS"

    const-string v21, "android.permission.RECEIVE_WAP_PUSH"

    const-string v22, "android.permission.SEND_SMS"

    const-string v23, "android.permission.READ_SMS"

    const-string v25, "android.permission.WRITE_SETTINGS"

    const-string v26, "android.permission.SYSTEM_ALERT_WINDOW"

    const-string v27, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v28, "android.permission.CAMERA"

    const-string v29, "android.permission.RECORD_AUDIO"

    const-string v42, "android.permission.WAKE_LOCK"

    const-string v45, "android.permission.PACKAGE_USAGE_STATS"

    const-string v53, "android.permission.READ_PHONE_STATE"

    const-string v54, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const-string v55, "android.permission.USE_SIP"

    const-string v56, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v57, "android.permission.USE_FINGERPRINT"

    const-string v58, "android.permission.BODY_SENSORS"

    const-string v59, "android.permission.READ_CELL_BROADCASTS"

    const-string v61, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v62, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v64, "android.permission.GET_ACCOUNTS"

    const-string v67, "android.permission.READ_PHONE_NUMBERS"

    const-string v68, "android.permission.REQUEST_INSTALL_PACKAGES"

    const-string v70, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    const-string v71, "android.permission.ANSWER_PHONE_CALLS"

    const-string v73, "android.permission.CHANGE_WIFI_STATE"

    const-string v74, "android.permission.REQUEST_DELETE_PACKAGES"

    const-string v75, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    const-string v76, "android.permission.ACCEPT_HANDOVER"

    const-string v78, "android.permission.FOREGROUND_SERVICE"

    const-string v80, "android.permission.BLUETOOTH_ADMIN"

    const-string v84, "com.android.launcher.permission.INSTALL_SHORTCUT"

    const-string/jumbo v85, "nubia.permission.BACKGROUND_START_ACTIVITY"

    const-string/jumbo v86, "nubia.permission.LOCKSCREEN_DISPLAY_WINDOWS"

    const-string/jumbo v87, "nubia.permission.SOURCE_INSTALLER"

    const-string v88, "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

    const-string v89, "com.android.browser.permission.WRITE_HISTORY_BOOKMARKS"

    const-string/jumbo v90, "nubia.permission.ACCESS_MOBILE_NETWORKS"

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v24, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v60, 0x0

    const/16 v63, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v69, 0x0

    const/16 v72, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    filled-new-array/range {v2 .. v90}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 1128
    const-string/jumbo v2, "no_share_location"

    const-string/jumbo v3, "no_share_location"

    const-string/jumbo v4, "no_share_location"

    const-string/jumbo v8, "no_outgoing_calls"

    const-string/jumbo v9, "no_outgoing_calls"

    const-string/jumbo v12, "no_share_location"

    const-string/jumbo v16, "no_sms"

    const-string/jumbo v17, "no_sms"

    const-string/jumbo v18, "no_sms"

    const-string/jumbo v20, "no_sms"

    const-string/jumbo v22, "no_sms"

    const-string/jumbo v23, "no_sms"

    const-string/jumbo v24, "no_sms"

    const-string/jumbo v26, "no_create_windows"

    const-string/jumbo v28, "no_camera"

    const-string/jumbo v29, "no_record_audio"

    const-string/jumbo v35, "no_adjust_volume"

    const-string/jumbo v36, "no_adjust_volume"

    const-string/jumbo v37, "no_adjust_volume"

    const-string/jumbo v38, "no_adjust_volume"

    const-string/jumbo v39, "no_adjust_volume"

    const-string/jumbo v40, "no_adjust_volume"

    const-string/jumbo v41, "no_adjust_volume"

    const-string/jumbo v43, "no_share_location"

    const-string/jumbo v44, "no_share_location"

    const-string/jumbo v46, "no_unmute_microphone"

    const-string/jumbo v47, "no_create_windows"

    const-string/jumbo v50, "no_wallpaper"

    const-string/jumbo v66, "no_adjust_volume"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v42, 0x0

    const/16 v45, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v78, 0x0

    const/16 v80, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    filled-new-array/range {v2 .. v90}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 1226
    new-array v1, v0, [Z

    fill-array-data v1, :array_2

    sput-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    .line 1323
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 1424
    new-array v1, v0, [Z

    fill-array-data v1, :array_4

    sput-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    .line 1521
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 1526
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    .line 1529
    sget-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v1, v1

    if-ne v1, v0, :cond_b

    .line 1533
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v0, :cond_a

    .line 1537
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v0, :cond_9

    .line 1541
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v0, :cond_8

    .line 1545
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v1, v1

    if-ne v1, v0, :cond_7

    .line 1549
    sget-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v1, v1

    if-ne v1, v0, :cond_6

    .line 1553
    sget-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v0, :cond_5

    .line 1557
    sget-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    array-length v1, v1

    if-ne v1, v0, :cond_4

    .line 1561
    const/4 v1, 0x0

    move v2, v1

    .line 1561
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1562
    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 1563
    sget-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    sget-object v4, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1574
    .end local v2    # "i":I
    :cond_1
    nop

    .line 1574
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1575
    sget-object v2, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    sget-object v2, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1576
    sget-object v2, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1580
    .end local v1    # "i":I
    :cond_3
    return-void

    .line 1558
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpAllowSYstemRestrictionsBypass length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1554
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpRestrictions length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1550
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDisableReset length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1546
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDefaultMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1542
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpPerms length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1538
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpNames length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1534
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToString length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1530
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToSwitch length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x3e
        0x8
        0x9
        0x14
        0x10
        0xe
        0x13
        0x12
        0x39
        0x3b
        0x3c
        0x0
        0x1
        0x33
        0x41
        0xd
        0x6
        0x7
        0x34
        0x35
        0x36
        0x45
        0x4a
        0x1b
        0x1a
        0x38
        0x19
        0x18
        0x17
        0x42
        0x4c
        0x56
        0x57
        0x58
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0xb
        0x0
        0xd
        0xe
        0xf
        0x10
        0x10
        0x12
        0x13
        0x14
        0xe
        0xf
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x0
        0x0
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x0
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IAppOpsService;

    .line 1922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 1923
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 1924
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 1925
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    return-object v0
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not allowed to perform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOpStrs()[Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2832
    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .locals 3
    .param p0, "service"    # Lcom/android/internal/app/IAppOpsService;

    .line 2683
    const-class v0, Landroid/app/AppOpsManager;

    monitor-enter v0

    .line 2684
    :try_start_0
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 2685
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 2688
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {p0, v1}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2691
    nop

    .line 2692
    :try_start_2
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    monitor-exit v0

    return-object v1

    .line 2689
    :catch_0
    move-exception v1

    .line 2690
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2693
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isDefaultAllowedForDispalyDialog(I)Z
    .locals 1
    .param p1, "op"    # I

    .line 2637
    const/16 v0, 0xd

    if-eq v0, p1, :cond_1

    const/16 v0, 0x58

    if-eq v0, p1, :cond_1

    const/16 v0, 0x10

    if-eq v0, p1, :cond_1

    const/16 v0, 0x12

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isDefaultAllowedForDispalyDialog(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2873
    if-nez p1, :cond_0

    .line 2874
    const/4 v0, 0x0

    return v0

    .line 2876
    :cond_0
    const/4 v0, 0x0

    .line 2877
    .local v0, "result":Z
    const-string v1, "com.cttl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "cn.nubia.cta"

    .line 2878
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2879
    :cond_1
    const/4 v0, 0x1

    .line 2881
    :cond_2
    return v0
.end method

.method public static maxTime([JII)J
    .locals 5
    .param p0, "times"    # [J
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2839
    const-wide/16 v0, 0x0

    .line 2840
    .local v0, "time":J
    move-wide v1, v0

    move v0, p1

    .local v0, "i":I
    .local v1, "time":J
    :goto_0
    if-ge v0, p2, :cond_1

    .line 2841
    aget-wide v3, p0, v0

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    .line 2842
    aget-wide v1, p0, v0

    .line 2840
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2845
    .end local v0    # "i":I
    :cond_1
    return-wide v1
.end method

.method public static modeToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 1660
    if-ltz p0, :cond_0

    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 1661
    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 1663
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private noteOpNoThrowReal(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2670
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2671
    :catch_0
    move-exception v0

    .line 2672
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static opAllowSystemBypassRestriction(I)Z
    .locals 1
    .param p0, "op"    # I

    .line 1644
    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static opAllowsReset(I)Z
    .locals 1
    .param p0, "op"    # I

    .line 1671
    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    aget-boolean v0, v0, p0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static opToDefaultMode(I)I
    .locals 1
    .param p0, "op"    # I

    .line 1652
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    return v0
.end method

.method public static opToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "op"    # I

    .line 1595
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "NONE"

    return-object v0

    .line 1596
    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .line 1616
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToRestriction(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .line 1624
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToSwitch(I)I
    .locals 1
    .param p0, "op"    # I

    .line 1587
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v0, v0, p0

    return v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .line 2094
    sget-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2095
    .local v0, "opCode":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 2096
    const/4 v1, 0x0

    return-object v1

    .line 2098
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static permissionToOpCode(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .line 1634
    sget-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1635
    .local v0, "boxedOpCode":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public static strDebugOpToOp(Ljava/lang/String;)I
    .locals 3
    .param p0, "op"    # Ljava/lang/String;

    .line 1603
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1604
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1605
    return v0

    .line 1603
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1608
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static strOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .line 2282
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2283
    .local v0, "val":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 2286
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 2284
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public checkAudioOp(IIILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 2509
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 2510
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2513
    return v0

    .line 2511
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2514
    .end local v0    # "mode":I
    :catch_0
    move-exception v0

    .line 2515
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkAudioOpNoThrow(IIILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 2526
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2527
    :catch_0
    move-exception v0

    .line 2528
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkOp(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2462
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 2463
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2466
    return v0

    .line 2464
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2467
    .end local v0    # "mode":I
    :catch_0
    move-exception v0

    .line 2468
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2317
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2479
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2480
    .local v0, "mode":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    .line 2481
    .end local v0    # "mode":I
    :catch_0
    move-exception v0

    .line 2482
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2325
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2494
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2500
    nop

    .line 2501
    return-void

    .line 2495
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not belong to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2498
    :catch_0
    move-exception v0

    .line 2499
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public finishOp(I)V
    .locals 2
    .param p1, "op"    # I

    .line 2799
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 2800
    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2791
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2794
    nop

    .line 2795
    return-void

    .line 2792
    :catch_0
    move-exception v0

    .line 2793
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2429
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 2430
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 1953
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1954
    :catch_0
    move-exception v0

    .line 1955
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 2
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 1936
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1937
    :catch_0
    move-exception v0

    .line 1938
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isBackgroundApp(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2852
    const/4 v0, 0x1

    .line 2853
    .local v0, "isBackGroundApp":Z
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getForegroundPackageName()Ljava/util/List;

    move-result-object v1

    .line 2854
    .local v1, "foregroundPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 2858
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2859
    .local v3, "pkg":Ljava/lang/String;
    const-string v4, "AppOpsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "foregroundPkg pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2861
    const/4 v0, 0x0

    .line 2862
    goto :goto_1

    .line 2864
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 2865
    :cond_2
    :goto_1
    const-string v2, "AppOpsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "permission dialog show : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isBackground app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    return v0

    .line 2855
    :cond_3
    :goto_2
    const-string v2, "AppOpsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "permission dialog show : empty froegroundPkgs ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isBackground app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    return v0
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2819
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->isOperationActive(IILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2820
    :catch_0
    move-exception v0

    .line 2821
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public noteOp(I)I
    .locals 2
    .param p1, "op"    # I

    .line 2678
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOp(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2549
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager;->isDefaultAllowedForDispalyDialog(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 2550
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2551
    invoke-direct {p0, p3}, Landroid/app/AppOpsManager;->isDefaultAllowedForDispalyDialog(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2552
    invoke-virtual {p0, p3}, Landroid/app/AppOpsManager;->isBackgroundApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2553
    const/4 v0, 0x1

    return v0

    .line 2556
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 2557
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2560
    return v0

    .line 2558
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2356
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpForM(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2581
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperationForM(IILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2582
    :catch_0
    move-exception v0

    .line 2583
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    return v1
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2649
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager;->isDefaultAllowedForDispalyDialog(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 2650
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2651
    invoke-direct {p0, p3}, Landroid/app/AppOpsManager;->isDefaultAllowedForDispalyDialog(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2652
    invoke-virtual {p0, p3}, Landroid/app/AppOpsManager;->isBackgroundApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2653
    const/4 v0, 0x1

    return v0

    .line 2656
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrowReal(IILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2657
    :catch_0
    move-exception v0

    .line 2659
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrowReal(IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2364
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOp(ILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .line 2607
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    .line 2608
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2614
    return v0

    .line 2609
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or calling package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not allowed to perform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .line 2383
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOpNoThrow(ILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .line 2624
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2625
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2624
    invoke-interface {v0, p1, v1, v2, p2}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2626
    :catch_0
    move-exception v0

    .line 2627
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .line 2391
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public resetAllModes()V
    .locals 3

    .line 2077
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2080
    nop

    .line 2081
    return-void

    .line 2078
    :catch_0
    move-exception v0

    .line 2079
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 2024
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2027
    nop

    .line 2028
    return-void

    .line 2025
    :catch_0
    move-exception v0

    .line 2026
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setMode(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2045
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2048
    nop

    .line 2049
    return-void

    .line 2046
    :catch_0
    move-exception v0

    .line 2047
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRestriction(III[Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "mode"    # I
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    .line 2066
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2067
    .local v3, "uid":I
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2070
    .end local v3    # "uid":I
    nop

    .line 2071
    return-void

    .line 2068
    :catch_0
    move-exception v0

    .line 2069
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUidMode(III)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .line 1972
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1975
    nop

    .line 1976
    return-void

    .line 1973
    :catch_0
    move-exception v0

    .line 1974
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUidMode(Ljava/lang/String;II)V
    .locals 2
    .param p1, "appOp"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1992
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1995
    nop

    .line 1996
    return-void

    .line 1993
    :catch_0
    move-exception v0

    .line 1994
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;

    .line 2000
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;[Ljava/lang/String;)V

    .line 2001
    return-void
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    .line 2006
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 2007
    return-void
.end method

.method public setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "exceptionPackages"    # [Ljava/lang/String;
    .param p5, "userId"    # I

    .line 2013
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2016
    nop

    .line 2017
    return-void

    .line 2014
    :catch_0
    move-exception v0

    .line 2015
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startOp(I)I
    .locals 2
    .param p1, "op"    # I

    .line 2698
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2720
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;Z)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "startIfModeDefault"    # Z

    .line 2743
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;Z)I

    move-result v0

    .line 2744
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2747
    return v0

    .line 2745
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2411
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2756
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;Z)I
    .locals 6
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "startIfModeDefault"    # Z

    .line 2775
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2777
    :catch_0
    move-exception v0

    .line 2778
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2419
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startWatchingActive([ILandroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .locals 3
    .param p1, "ops"    # [I
    .param p2, "callback"    # Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    .line 2225
    const-string/jumbo v0, "ops cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2226
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2228
    iget-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2229
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 2230
    .local v1, "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    if-eqz v1, :cond_0

    .line 2231
    monitor-exit v0

    return-void

    .line 2233
    :cond_0
    new-instance v2, Landroid/app/AppOpsManager$2;

    invoke-direct {v2, p0, p2}, Landroid/app/AppOpsManager$2;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    move-object v1, v2

    .line 2239
    iget-object v2, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2242
    :try_start_1
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2245
    nop

    .line 2246
    return-void

    .line 2243
    :catch_0
    move-exception v0

    .line 2244
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2240
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 2160
    iget-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2161
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsCallback;

    .line 2162
    .local v1, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-nez v1, :cond_0

    .line 2163
    new-instance v2, Landroid/app/AppOpsManager$1;

    invoke-direct {v2, p0, p4}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    move-object v1, v2

    .line 2173
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2176
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2179
    nop

    .line 2180
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :try_start_2
    monitor-exit v0

    .line 2181
    return-void

    .line 2177
    .restart local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v2

    .line 2178
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2180
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 2142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 2143
    return-void
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 2126
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 2127
    return-void
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 2111
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 2112
    return-void
.end method

.method public stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    .line 2262
    iget-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2263
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsActiveCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2264
    .local v1, "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    if-eqz v1, :cond_0

    .line 2266
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2269
    goto :goto_0

    .line 2267
    :catch_0
    move-exception v2

    .line 2268
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2271
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 2272
    return-void

    .line 2271
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 2188
    iget-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2189
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2190
    .local v1, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v1, :cond_0

    .line 2192
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2195
    goto :goto_0

    .line 2193
    :catch_0
    move-exception v2

    .line 2194
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2197
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 2198
    return-void

    .line 2197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2335
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2336
    :catch_0
    move-exception v0

    .line 2337
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
