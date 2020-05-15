.class public Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;
.super Ljava/lang/Object;
.source "DataCollectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$TrackBclHandler;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteWakeUpRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteNotificationClickRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteThreadLagRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEdgeGestureRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndNetworkPositionRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndGpsRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartGpsRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppExitReasonRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartMusicFlagRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartMusicRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_INITIALIZATION_WIZARD:Ljava/lang/String; = "android.intent.action.DEVICE_INITIALIZATION_WIZARD"

.field private static final ANDROID_ID:Ljava/lang/String; = "android_id"

.field private static final APP_BACKGROUND:Ljava/lang/String; = "app_background"

.field private static final APP_END_BATTERY_LEVEL:Ljava/lang/String; = "app_end_battery_level"

.field private static final APP_END_GPS:Ljava/lang/String; = "app_end_gps"

.field private static final APP_END_MUSIC:Ljava/lang/String; = "app_end_music"

.field private static final APP_END_NETWORK_POSITION:Ljava/lang/String; = "app_end_network_position"

.field private static final APP_END_TIMESTAMP:Ljava/lang/String; = "app_end_timestamp"

.field private static final APP_EXIT:Ljava/lang/String; = "app_exit"

.field private static final APP_EXIT_CAUSE:Ljava/lang/String; = "app_exit_cause"

.field private static final APP_EXIT_REASON:Ljava/lang/String; = "app_exit_reason"

.field private static final APP_FOREGROUND:Ljava/lang/String; = "app_foreground"

.field private static final APP_INSTALLATION:Ljava/lang/String; = "app_installation"

.field private static final APP_IS_SYSTEM_FLAG:Ljava/lang/String; = "app_is_system_flag"

.field private static final APP_LOCATE_INTERVAL:Ljava/lang/String; = "app_locate_interval"

.field private static final APP_LOCATE_KEY:Ljava/lang/String; = "app_locate_key"

.field private static final APP_MOBILETRAFFIC:Ljava/lang/String; = "app_mobiletraffic"

.field private static final APP_NAME:Ljava/lang/String; = "app_name"

.field private static final APP_PACKAGE:Ljava/lang/String; = "app_package"

.field private static final APP_PID:Ljava/lang/String; = "app_pid"

.field private static final APP_PROCESSNAME:Ljava/lang/String; = "app_processname"

.field private static final APP_SIGNATURE:Ljava/lang/String; = "app_signature"

.field private static final APP_START_BATTERY_LEVEL:Ljava/lang/String; = "app_start_battery_level"

.field private static final APP_START_GPS:Ljava/lang/String; = "app_start_gps"

.field private static final APP_START_MUSIC:Ljava/lang/String; = "app_start_music"

.field private static final APP_START_NETWORK_POSITIONING:Ljava/lang/String; = "app_start_network_positioning"

.field private static final APP_START_TIMESTAMP:Ljava/lang/String; = "app_start_timestamp"

.field private static final APP_UNINSTALL:Ljava/lang/String; = "app_uninstall"

.field private static final APP_USERID:Ljava/lang/String; = "app_userid"

.field private static final APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final APP_WIFITRAFFIC:Ljava/lang/String; = "app_wifitraffic"

.field private static final ATTR_APP_NAME:Ljava/lang/String; = "package"

.field private static final BASEBAND_VERSION:Ljava/lang/String; = "baseband_version"

.field private static final BATTERY_CAPACITY:Ljava/lang/String; = "battery_capacity"

.field private static final BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final BUILD_VERSION:Ljava/lang/String; = "build_version"

.field private static final CHECK_CYCLE:J = 0xea60L

.field private static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final DEVICE_INFO_CPU:Ljava/lang/String; = "device_info_cpu"

.field private static final DEVICE_INFO_DEVICE_BOARD:Ljava/lang/String; = "device_info_device_board"

.field private static final DEVICE_INFO_DEVICE_BRAND:Ljava/lang/String; = "device_info_device_brand"

.field private static final DEVICE_INFO_DEVICE_INTERNAL:Ljava/lang/String; = "device_info_device_internal"

.field private static final DEVICE_INFO_DEVICE_MANUFACTURER:Ljava/lang/String; = "device_info_device_manufacturer"

.field private static final DEVICE_INFO_DEVICE_MANUTIME:Ljava/lang/String; = "device_info_device_manutime"

.field private static final DEVICE_INFO_MODEL:Ljava/lang/String; = "device_info_model"

.field private static final DEVICE_INFO_OS:Ljava/lang/String; = "device_info_os"

.field private static final DEVICE_INFO_OS_VERSION:Ljava/lang/String; = "device_info_os_version"

.field private static final DEVICE_INFO_ROM_VERSION:Ljava/lang/String; = "device_info_rom_version"

.field private static final DEVICE_INFO_SCREENHEIGHT:Ljava/lang/String; = "device_info_screenheight"

.field private static final DEVICE_INFO_SCREENWIDTH:Ljava/lang/String; = "device_info_screenwidth"

.field private static final DEVICE_INFO_UI_VERSION:Ljava/lang/String; = "device_info_ui_version"

.field private static final EVENT_BOOT:Ljava/lang/String; = "mobile_turn_on"

.field private static final EVENT_END_CHARGE:Ljava/lang/String; = "end_charge"

.field private static final EVENT_POWER_OFF:Ljava/lang/String; = "mobile_turn_off"

.field private static final EVENT_START_CHARGE:Ljava/lang/String; = "start_charge"

.field private static final FIRST_BOOT_APP_MESSAGE:Ljava/lang/String; = "first_boot_app_message"

.field private static final FIRST_BOOT_PHONE_MESSAGE:Ljava/lang/String; = "first_boot_phone_message"

.field public static ForegroundpackageName:Ljava/lang/String; = null

.field private static final GRANT_PERMISSION_DIALOG_CLICK:Ljava/lang/String; = "grant_permission_dialog_click"

.field private static final MUSIC_VALID_DURATION:J = 0xea60L

.field private static final NET_INFO_ACCESS_SUBTYPE:Ljava/lang/String; = "net_info_access_subtype"

.field private static final NET_INFO_ACCESS_TYPE:Ljava/lang/String; = "net_info_access_type"

.field private static final NET_INFO_CARRIER:Ljava/lang/String; = "net_info_carrier"

.field private static final NOTIFICATION_CLICK:Ljava/lang/String; = "notificationcenter_click_notification"

.field private static final NOTIFICATION_PKG_NAME:Ljava/lang/String; = "package_name"

.field private static final PLUG_TYPE:Ljava/lang/String; = "plug_type"

.field private static final PRODUCT_MODEL:Ljava/lang/String; = "product_model"

.field private static final REPORT_CYCLE:J = 0x1499700L

.field private static final ROM_VERSION:Ljava/lang/String; = "rom_version"

.field private static final SMALL_PERMISSION_DIALOG_CLICK:Ljava/lang/String; = "small_permission_dialog_click"

.field private static final TAG:Ljava/lang/String; = "data_collection_tag"

.field private static final TAG_APP:Ljava/lang/String; = "app"

.field private static final ZONE_INFO_COUNTRY:Ljava/lang/String; = "zone_info_country"

.field private static final ZONE_INFO_IP:Ljava/lang/String; = "zone_info_ip"

.field private static final ZONE_INFO_LANGUAGE:Ljava/lang/String; = "zone_info_language"

.field private static final ZONE_INFO_TIME_ZONE:Ljava/lang/String; = "zone_info_time_zone"


# instance fields
.field private mAppBatteryLevel:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppInfoUtils:Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

.field private mAppResumeTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAppUsingCameraTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBclHandler:Landroid/os/Handler;

.field private mBclHandlerThread:Landroid/os/HandlerThread;

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

.field private mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

.field private mFirstBoot:Z

.field private mGpsStartTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsUserAMonkey:Z

.field private mMusicEndTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicStartTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkPositionStartTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->ForegroundpackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppResumeTime:Landroid/util/ArrayMap;

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mMusicStartTime:Landroid/util/ArrayMap;

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mMusicEndTime:Landroid/util/ArrayMap;

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mGpsStartTime:Landroid/util/ArrayMap;

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mNetworkPositionStartTime:Landroid/util/ArrayMap;

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppBatteryLevel:Landroid/util/ArrayMap;

    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppUsingCameraTime:Landroid/util/ArrayMap;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mFirstBoot:Z

    .line 121
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    .line 144
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$1;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mConn:Landroid/content/ServiceConnection;

    .line 174
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mContext:Landroid/content/Context;

    .line 133
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataCollectionControllerIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mThread:Landroid/os/HandlerThread;

    .line 134
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    invoke-direct {v0, p1}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppInfoUtils:Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    .line 137
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-direct {v0, p1}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    .line 138
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->registerReceiver()V

    .line 139
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->bindService(Landroid/content/Context;)V

    .line 140
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->initTrackBclEvent()V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;
    .param p1, "x1"    # Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    .line 27
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->traceBootComplete()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppResumeTime:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppBatteryLevel:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mGpsStartTime:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mNetworkPositionStartTime:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppUsingCameraTime:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mBclHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteDeviceInfo()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteAppInfo()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mMusicStartTime:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppInfoUtils:Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mMusicEndTime:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.processmanager"

    const-string v3, "cn.nubia.processmanager.datacollection.DataCollectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 162
    return-void
.end method

.method private initTrackBclEvent()V
    .locals 3

    .line 1327
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mBclHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mBclHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 1328
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TrackBclThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mBclHandlerThread:Landroid/os/HandlerThread;

    .line 1329
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mBclHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1330
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$TrackBclHandler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mBclHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$TrackBclHandler;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mBclHandler:Landroid/os/Handler;

    .line 1331
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mBclHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mBclHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1333
    :cond_1
    return-void
.end method

.method private noteAppInfo()V
    .locals 8

    .line 281
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 282
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 283
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 285
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 286
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "app_package"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v5, "app_name"

    iget-object v6, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppInfoUtils:Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    invoke-virtual {v6, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v5, "app_version"

    iget-object v6, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppInfoUtils:Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    invoke-virtual {v6, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v5, "app_signature"

    iget-object v6, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppInfoUtils:Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    invoke-virtual {v6, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v5, "app_is_system_flag"

    iget-object v6, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppInfoUtils:Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    iget-object v7, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    iget-object v5, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    if-eqz v5, :cond_0

    .line 294
    :try_start_0
    iget-object v5, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    const-string v6, "first_boot_app_message"

    invoke-interface {v5, v6, v4}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_1

    .line 295
    :catch_0
    move-exception v5

    .line 296
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 300
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 301
    :cond_1
    return-void
.end method

.method private noteDeviceInfo()V
    .locals 4

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android_id"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "device_id"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v1, "product_model"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "build_version"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getBuildVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "baseband_version"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getBasebandVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v1, "rom_version"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getRomVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "battery_capacity"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getBatteryCapacity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    const-string v1, "device_info_device_brand"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getDeviceBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "device_info_device_manufacturer"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getDeviceManufature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "device_info_model"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "device_info_device_internal"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getDeviceInternal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "device_info_device_manutime"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getDeviceManutime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 253
    const-string v1, "device_info_os"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getOs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "device_info_os_version"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "device_info_ui_version"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getUiVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "device_info_rom_version"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getRomVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getScreenSize()[I

    move-result-object v1

    .line 258
    .local v1, "screenSize":[I
    const-string v2, "device_info_screenwidth"

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v2, "device_info_screenheight"

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    const-string v2, "device_info_cpu"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getCpu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v2, "device_info_device_board"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getDeviceBoard()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string/jumbo v2, "zone_info_country"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string/jumbo v2, "zone_info_time_zone"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getTimeZone()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    const-string/jumbo v2, "zone_info_ip"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v2, "zone_info_language"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string/jumbo v2, "net_info_access_type"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getAccessType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string/jumbo v2, "net_info_carrier"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v2, "net_info_access_subtype"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDeviceInfoUtils:Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getSubAccessType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    if-eqz v2, :cond_0

    .line 272
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    const-string v3, "first_boot_phone_message"

    invoke-interface {v2, v3, v0}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 273
    const-string v2, "DataCollectionController"

    const-string/jumbo v3, "updateData first_boot_phone_message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    goto :goto_0

    .line 274
    :catch_0
    move-exception v2

    .line 275
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 278
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.intent.action.DEVICE_INITIALIZATION_WIZARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    return-void
.end method

.method private traceBootComplete()V
    .locals 4

    .line 226
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    if-nez v0, :cond_0

    .line 227
    return-void

    .line 230
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 232
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    const-string/jumbo v2, "mobile_turn_on"

    invoke-interface {v1, v2, v0}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public grantPermissionDialogClick(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 646
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 647
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    if-eqz v0, :cond_1

    .line 652
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    const-string v1, "grant_permission_dialog_click"

    invoke-interface {v0, v1, p1}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    goto :goto_0

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 657
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public installEvent(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 618
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 619
    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    if-eqz v0, :cond_1

    .line 624
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    const-string v1, "app_installation"

    invoke-interface {v0, v1, p1}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    goto :goto_0

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 629
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public noteAppAnrCrash(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .line 374
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 375
    return-void

    .line 377
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Ljava/lang/String;ILjava/lang/String;J)V

    .line 378
    .local v0, "naacr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    return-void
.end method

.method public noteAppBackground(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J

    .line 321
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 322
    return-void

    .line 324
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;ILjava/lang/String;ILjava/lang/String;J)V

    .line 326
    .local v0, "nabr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    return-void
.end method

.method public noteAppExit(ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .line 330
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 331
    return-void

    .line 334
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 335
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "app_package"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v1, "app_name"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppInfoUtils:Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    invoke-virtual {v2, p2}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v1, "app_version"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppInfoUtils:Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    invoke-virtual {v2, p2}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v1, "app_signature"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppInfoUtils:Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    invoke-virtual {v2, p2}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v1, "app_processname"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v1, "app_pid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    const-string v1, "app_userid"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppInfoUtils:Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    invoke-virtual {v2, p1}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    const-string v1, "app_mobiletraffic"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppInfoUtils:Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppMobileTraffic(Landroid/content/Context;I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 343
    const-string v1, "app_wifitraffic"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppInfoUtils:Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppWifiTraffic(Landroid/content/Context;I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 344
    const-string v1, "app_is_system_flag"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mAppInfoUtils:Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p2}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 346
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    if-eqz v1, :cond_1

    .line 348
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    const-string v2, "app_exit"

    invoke-interface {v1, v2, v0}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    goto :goto_0

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 353
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public noteAppExitReason(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    .line 356
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 357
    return-void

    .line 360
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppExitReasonRunnable;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppExitReasonRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .local v0, "naerr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppExitReasonRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method

.method public noteAppForeground(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "timestamp"    # J
    .param p8, "isColdLaunch"    # Z

    move-object v10, p0

    .line 309
    sput-object p2, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->ForegroundpackageName:Ljava/lang/String;

    .line 310
    iget-boolean v0, v10, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 311
    return-void

    .line 314
    :cond_0
    new-instance v11, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;

    move-object v0, v11

    move-object v1, v10

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V

    .line 316
    .local v0, "nafr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;
    iget-object v1, v10, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method

.method public noteAppUsingCamera(ILjava/lang/String;ILjava/lang/String;JZ)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J
    .param p7, "isLaunch"    # Z

    move-object v9, p0

    .line 366
    iget-boolean v0, v9, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 367
    return-void

    .line 369
    :cond_0
    new-instance v10, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;

    move-object v0, v10

    move-object v1, v9

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;ILjava/lang/String;ILjava/lang/String;JZ)V

    .line 370
    .local v0, "naucr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;
    iget-object v1, v9, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 371
    return-void
.end method

.method public noteEdgeGesture(Ljava/lang/String;)V
    .locals 3
    .param p1, "gesture"    # Ljava/lang/String;

    .line 1071
    const-string v0, "data_collection_tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataCollectionController gesture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEdgeGestureRunnable;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEdgeGestureRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Ljava/lang/String;)V

    .line 1073
    .local v0, "negr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEdgeGestureRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1074
    return-void
.end method

.method public noteEndGps(IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 12
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "interval"    # J
    .param p7, "timestamp"    # J

    move-object v10, p0

    .line 586
    iget-boolean v0, v10, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 587
    return-void

    .line 590
    :cond_0
    new-instance v11, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndGpsRunnable;

    move-object v0, v11

    move-object v1, v10

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndGpsRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 592
    .local v0, "negr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndGpsRunnable;
    iget-object v1, v10, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    return-void
.end method

.method public noteEndMusic(IIJ)V
    .locals 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "timestamp"    # J

    .line 492
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 493
    return-void

    .line 496
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;IIJ)V

    .line 497
    .local v0, "nemfr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    return-void
.end method

.method public noteEndNetworkPosition(IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 12
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "interval"    # J
    .param p7, "timestamp"    # J

    move-object v10, p0

    .line 608
    iget-boolean v0, v10, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 609
    return-void

    .line 612
    :cond_0
    new-instance v11, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndNetworkPositionRunnable;

    move-object v0, v11

    move-object v1, v10

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndNetworkPositionRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 614
    .local v0, "nenpr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndNetworkPositionRunnable;
    iget-object v1, v10, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 615
    return-void
.end method

.method public noteFingerprintAuth(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .line 1099
    const-string v0, "data_collection_tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataCollectionController packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Ljava/lang/String;Z)V

    .line 1101
    .local v0, "negr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1102
    return-void
.end method

.method public noteNotificationClick(Landroid/content/Intent;J)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestamp"    # J

    .line 1257
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteNotificationClickRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteNotificationClickRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Landroid/content/Intent;J)V

    .line 1259
    .local v0, "r":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteNotificationClickRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1260
    return-void
.end method

.method public noteStartGps(IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 12
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "interval"    # J
    .param p7, "timestamp"    # J

    move-object v10, p0

    .line 575
    iget-boolean v0, v10, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 576
    return-void

    .line 579
    :cond_0
    new-instance v11, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartGpsRunnable;

    move-object v0, v11

    move-object v1, v10

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartGpsRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 581
    .local v0, "nsgr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartGpsRunnable;
    iget-object v1, v10, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 582
    return-void
.end method

.method public noteStartMusic(IIJ)V
    .locals 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "timestamp"    # J

    .line 483
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 484
    return-void

    .line 487
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartMusicFlagRunnable;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartMusicFlagRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;IIJ)V

    .line 488
    .local v0, "nsmfr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartMusicFlagRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 489
    return-void
.end method

.method public noteStartNetworkPosition(IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 12
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "interval"    # J
    .param p7, "timestamp"    # J

    move-object v10, p0

    .line 597
    iget-boolean v0, v10, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 598
    return-void

    .line 601
    :cond_0
    new-instance v11, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;

    move-object v0, v11

    move-object v1, v10

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 603
    .local v0, "nsnpr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;
    iget-object v1, v10, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 604
    return-void
.end method

.method public noteThreadLag(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "tid"    # J
    .param p5, "delay"    # J
    .param p7, "reason"    # Ljava/lang/String;

    move-object v9, p0

    .line 382
    iget-boolean v0, v9, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 383
    return-void

    .line 385
    :cond_0
    new-instance v10, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteThreadLagRunnable;

    move-object v0, v10

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteThreadLagRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 386
    .local v0, "ntlr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteThreadLagRunnable;
    iget-object v1, v9, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 387
    return-void
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 390
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 391
    return-void

    .line 393
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteWakeUpRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteWakeUpRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Ljava/lang/String;I)V

    .line 394
    .local v0, "nwur":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteWakeUpRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    return-void
.end method

.method public setUserAMonkey(Z)V
    .locals 0
    .param p1, "isUserAMonkey"    # Z

    .line 304
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    .line 305
    return-void
.end method

.method public smallPermissionDialogClick(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 660
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 661
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    if-eqz v0, :cond_1

    .line 666
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    const-string/jumbo v1, "small_permission_dialog_click"

    invoke-interface {v0, v1, p1}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    goto :goto_0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 671
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public uninstallEvent(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 632
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mIsUserAMonkey:Z

    if-eqz v0, :cond_0

    .line 633
    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    if-eqz v0, :cond_1

    .line 638
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->mDataCollectionInterface:Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    const-string v1, "app_uninstall"

    invoke-interface {v0, v1, p1}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 643
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method
