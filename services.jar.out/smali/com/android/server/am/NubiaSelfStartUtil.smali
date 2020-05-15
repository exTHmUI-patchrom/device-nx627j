.class public Lcom/android/server/am/NubiaSelfStartUtil;
.super Ljava/lang/Object;
.source "NubiaSelfStartUtil.java"


# static fields
.field private static final ACTION_APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field private static final ACTION_APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field private static final APPWIDGET_ACTION:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_"

.field protected static final BIND_SERVICE:Ljava/lang/String; = "bindServiceLocked"

.field private static final CLOSE_STATUS:I = 0x1

.field private static final COLUMN_ACTION_NAME:Ljava/lang/String; = "action_name"

.field private static final COLUMN_CALLED_NAME:Ljava/lang/String; = "called_package_name"

.field private static final COLUMN_CALLER_NAME:Ljava/lang/String; = "caller_package_name"

.field private static final COLUMN_CHARGING_ALLOW:Ljava/lang/String; = "charging_allow"

.field private static final COLUMN_CLASS_NAME:Ljava/lang/String; = "class_name"

.field private static final COLUMN_DATE:Ljava/lang/String; = "date"

.field private static final COLUMN_MAX_NUM:Ljava/lang/String; = "max_num"

.field private static final COLUMN_NUM:Ljava/lang/String; = "num"

.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field protected static final CONTENT_PROVIDER:Ljava/lang/String; = "ContentProviderImpl"

.field private static final CONTENT_URI_SELFSTART:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_ACTIVITY_BLACKLIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_BIND_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_BROADCAST_ACTION_BLACKLIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_CALLER_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_FRIEND_WHITELIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_JOBSCHEDULER_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_NOTIFICATION_MANAGER:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_NUBIA_SUPERPOWER_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_PROTECTION_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_PROVIDER_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_STARTSERVICE_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_SYNCMANAGER_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_STATUS:I = 0x0

.field private static final FEATURE_FALSE:Ljava/lang/String; = "false"

.field private static final FEATURE_OFF:Ljava/lang/String; = "off"

.field private static final FEATURE_ON:Ljava/lang/String; = "on"

.field private static final FEATURE_POWER_CONTROL:Ljava/lang/String; = "nubia_powercontroller_feature"

.field private static final FEATURE_POWER_CONTROL_INTERNATIONAL:Ljava/lang/String; = "PowerController_International"

.field private static final FEATURE_SELFSTART:Ljava/lang/String; = "nubia_selfstart_feature"

.field private static final FEATURE_TRUE:Ljava/lang/String; = "true"

.field private static final INTERNAL_BUILD_ID:Ljava/lang/String; = "ro.build.internal.id"

.field protected static final JOB_SCHEDULER:Ljava/lang/String; = "JobScheduler"

.field public static final MAX_INIT_NUM:I = 0x190

.field protected static final NOTIFICATION_MANAGER:Ljava/lang/String; = "NoficationManager"

.field private static final NUBIA_SUPERPOWER_MODE:Ljava/lang/String; = "persist.sys.power.nbpsm"

.field private static final OPEN_STATUS:I = 0x2

.field protected static final REBIND_SERVICE:Ljava/lang/String; = "rebindService"

.field protected static final RESTART_SERVICE:Ljava/lang/String; = "killServicesLocked"

.field protected static final START_ACTIVITY_EMPTY_USER:Ljava/lang/String; = "startActivityEmptyUser"

.field protected static final START_FROM_BROADCAST:Ljava/lang/String; = "startfrombroadcast"

.field protected static final START_SERVICE:Ljava/lang/String; = "startServiceLocked"

.field protected static final SYNC_MANAGER:Ljava/lang/String; = "SyncManager"

.field private static final TAG:Ljava/lang/String; = "NubiaSelfStartUtil"

.field public static initCount:I

.field private static mAllowBackgroundServicePkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAllowSelfStartPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;


# instance fields
.field private final mActivityBlackListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBindListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBlackListPkgNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastWhiteListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallerListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFirstBoot:Z

.field private final mFriendWhiteNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsInternationVersion:Ljava/lang/Boolean;

.field private mIsPowerConnected:Ljava/lang/Boolean;

.field private mIsSelfStartControl:Ljava/lang/Boolean;

.field private final mJobSchedulerListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLimitListPkgNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationManagerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNubiaSuperPowerPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProtectListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderInstalled:Z

.field private final mProviderListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStartServiceListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSyncManagerListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWhiteListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-string v0, "content://selfstart_provider/selfstart"

    .line 46
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    .line 47
    const-string v0, "content://selfstart_provider/protection_list"

    .line 48
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROTECTION_LIST:Landroid/net/Uri;

    .line 49
    const-string v0, "content://selfstart_provider/black_list"

    .line 50
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    .line 51
    const-string v0, "content://selfstart_provider/limit_list"

    .line 52
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

    .line 53
    const-string v0, "content://selfstart_provider/widget_list"

    .line 54
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 55
    const-string v0, "content://selfstart_provider/bind_list"

    .line 56
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BIND_LIST:Landroid/net/Uri;

    .line 57
    const-string v0, "content://selfstart_provider/caller_list"

    .line 58
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_CALLER_LIST:Landroid/net/Uri;

    .line 59
    const-string v0, "content://selfstart_provider/startservice_list"

    .line 60
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_STARTSERVICE_LIST:Landroid/net/Uri;

    .line 61
    const-string v0, "content://selfstart_provider/provider_list"

    .line 62
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROVIDER_LIST:Landroid/net/Uri;

    .line 63
    const-string v0, "content://selfstart_provider/syncmanager_list"

    .line 64
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_SYNCMANAGER_LIST:Landroid/net/Uri;

    .line 65
    const-string v0, "content://selfstart_provider/jobscheduler_list"

    .line 66
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_JOBSCHEDULER_LIST:Landroid/net/Uri;

    .line 67
    const-string v0, "content://selfstart_provider/superpower_list"

    .line 68
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_NUBIA_SUPERPOWER_LIST:Landroid/net/Uri;

    .line 69
    const-string v0, "content://selfstart_provider/activity_blacklist"

    .line 70
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_ACTIVITY_BLACKLIST:Landroid/net/Uri;

    .line 71
    const-string v0, "content://selfstart_provider/broadcast_action_blacklist"

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BROADCAST_ACTION_BLACKLIST:Landroid/net/Uri;

    .line 73
    const-string v0, "content://selfstart_provider/friend_whitelist"

    .line 74
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_FRIEND_WHITELIST:Landroid/net/Uri;

    .line 75
    const-string v0, "content://selfstart_provider/notification_manager_list"

    .line 76
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_NOTIFICATION_MANAGER:Landroid/net/Uri;

    .line 116
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/NubiaSelfStartUtil;->initCount:I

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->mAllowSelfStartPkgNames:Ljava/util/Set;

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->mAllowBackgroundServicePkgNames:Ljava/util/Set;

    .line 145
    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->mAllowSelfStartPkgNames:Ljava/util/Set;

    const-string v1, "com.antutu.ABenchMark"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->mAllowSelfStartPkgNames:Ljava/util/Set;

    const-string v1, "com.antutu.benchmark.full"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->mAllowBackgroundServicePkgNames:Ljava/util/Set;

    const-string v1, "com.android.providers.media"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->mAllowBackgroundServicePkgNames:Ljava/util/Set;

    const-string v1, "cn.nubia.jobdispatcher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-direct {v0}, Lcom/android/server/am/NubiaSelfStartUtil;-><init>()V

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->sNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNubiaSuperPowerPkgNames:Ljava/util/Set;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mSyncManagerListNames:Ljava/util/Map;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mJobSchedulerListNames:Ljava/util/Map;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mActivityBlackListNames:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBroadcastWhiteListNames:Ljava/util/Map;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFriendWhiteNames:Ljava/util/Map;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNotificationManagerList:Ljava/util/Map;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFirstBoot:Z

    .line 152
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderInstalled:Z

    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsSelfStartControl:Ljava/lang/Boolean;

    .line 154
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsInternationVersion:Ljava/lang/Boolean;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    .line 156
    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 159
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsPowerConnected:Ljava/lang/Boolean;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setWhiteListPkgNames()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setStartServiceListPkgNames()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setContentProviderListPkgNames()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setLimitListPkgNames()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setActivityBlackListPkgNames()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mActivityBlackListNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setBroadcastActionBlackListPkgNames()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setFriendWhiteListPkgNames()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setProtectionListPkgNames()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setNotificationManagerListPkgNames()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsPowerConnected:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 41
    iput-object p1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsPowerConnected:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->addWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->deleteWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setBlackListPkgNames()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setBindListPkgNames()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setCallerListPkgNames()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method private addWidget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 1227
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/NubiaSelfStartUtil$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil$14;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1233
    return-void
.end method

.method private addWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 467
    return-void

    .line 469
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->widgetIsInDb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 471
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 472
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 473
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "package_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v3, "class_name"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    goto :goto_0

    .line 477
    :catch_0
    move-exception v3

    .line 478
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private delelteWidgetDataFromDb()I
    .locals 4

    .line 503
    const/4 v0, -0x1

    .line 504
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 505
    return v0

    .line 507
    :cond_0
    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 508
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 510
    .local v2, "cr":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 513
    goto :goto_0

    .line 511
    :catch_0
    move-exception v3

    .line 512
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private deleteWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 484
    const/4 v0, -0x1

    .line 485
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 486
    return v0

    .line 488
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->widgetIsInDb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 490
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "package_name=? and class_name=?"

    .line 491
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 492
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 494
    .local v4, "cr":Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {v4, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    .line 497
    goto :goto_0

    .line 495
    :catch_0
    move-exception v5

    .line 496
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "selection":Ljava/lang/String;
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v0
.end method

.method private getActivityBlackList(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1564
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1565
    .local v0, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_ACTIVITY_BLACKLIST:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 1566
    return-object v0
.end method

.method private getBindListPackageNames(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1523
    .local v0, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BIND_LIST:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 1524
    return-object v0
.end method

.method private getBlackListPackageNames(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1516
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1517
    .local v0, "resultHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPkgNameAndChargingAllowFromeDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1518
    return-object v0
.end method

.method private getBroadcastBlackList(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1570
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1571
    .local v0, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->loadBroadcastActionBlackListFromDb(Landroid/content/Context;Ljava/util/Map;)V

    .line 1572
    return-object v0
.end method

.method private getCPPermittedStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1365
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Allow to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    const-string v1, " from ContentProvider autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCallerListPackageNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1528
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1529
    .local v0, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_CALLER_LIST:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 1530
    return-object v0
.end method

.method private getContentProviderListPackageNames(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1540
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1541
    .local v0, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROVIDER_LIST:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 1542
    return-object v0
.end method

.method private getDataFromDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 397
    .local p5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "package_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "selections":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 399
    return-void

    .line 401
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 402
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    move-object v7, v1

    .line 404
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    .line 405
    if-eqz v7, :cond_1

    .line 406
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 407
    .local v1, "sum":I
    const/4 v2, 0x0

    move v4, v2

    .line 407
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 408
    invoke-interface {v7, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 409
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p5, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 424
    .end local v1    # "sum":I
    .end local v4    # "i":I
    :cond_1
    if-eqz v7, :cond_4

    .line 426
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 429
    :goto_1
    goto :goto_3

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 424
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 421
    :catch_1
    move-exception v1

    .line 422
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 424
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_4

    .line 426
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 412
    :catch_2
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v4, "Cannot access system provider"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "before system providers are installed"

    .line 415
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 416
    :cond_2
    const-string v4, "NubiaSelfStartUtil"

    const-string/jumbo v5, "selfstart cannot be install"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    throw v1

    .line 419
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 424
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "msg":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 426
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 432
    :cond_4
    :goto_3
    return-void

    .line 424
    :goto_4
    if-eqz v7, :cond_5

    .line 426
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 429
    goto :goto_5

    .line 427
    :catch_3
    move-exception v2

    .line 428
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 429
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_5
    throw v1
.end method

.method private getForbidStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "offer"    # Ljava/lang/String;

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1325
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Not allow packageName=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->getOfferStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    const-string v1, " autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFriendWhiteList(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1576
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1577
    .local v0, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->loadFriendWhiteListFromDb(Landroid/content/Context;Ljava/util/Map;)V

    .line 1578
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/NubiaSelfStartUtil;
    .locals 1

    .line 172
    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->sNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    return-object v0
.end method

.method private getJobSchedulerListPkgNames(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1558
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1559
    .local v0, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_JOBSCHEDULER_LIST:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 1560
    return-object v0
.end method

.method private getLimitListPkgNames(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1546
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1547
    .local v0, "resultHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->loadLimitListFromDb(Landroid/content/Context;Ljava/util/Map;)V

    .line 1548
    return-object v0
.end method

.method private getNotificationManagerList(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1582
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1583
    .local v0, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNotificationManagerListFromDb(Landroid/content/Context;Ljava/util/Map;)V

    .line 1584
    return-object v0
.end method

.method private getNubiaSuperPowerListPkgNames()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1588
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1589
    .local v0, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_NUBIA_SUPERPOWER_LIST:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 1590
    return-object v0
.end method

.method private getOfferStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "offer"    # Ljava/lang/String;

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1334
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "startServiceLocked"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "SyncManager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "NoficationManager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v1, "bindServiceLocked"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "startActivityEmptyUser"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "JobScheduler"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "killServicesLocked"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1357
    const-string v1, " from service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1354
    :pswitch_0
    const-string v1, " from notification manager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    goto :goto_2

    .line 1351
    :pswitch_1
    const-string v1, " from startActivityForEmptyUser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    goto :goto_2

    .line 1348
    :pswitch_2
    const-string v1, " from restartservice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    goto :goto_2

    .line 1345
    :pswitch_3
    const-string v1, " from syncmanager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    goto :goto_2

    .line 1342
    :pswitch_4
    const-string v1, " from jobscheduler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    goto :goto_2

    .line 1339
    :pswitch_5
    const-string v1, " from bindservice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    goto :goto_2

    .line 1336
    :pswitch_6
    const-string v1, " from service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    nop

    .line 1360
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c4b43fa -> :sswitch_6
        -0x45818262 -> :sswitch_5
        -0x34facfd9 -> :sswitch_4
        -0x1b011f1e -> :sswitch_3
        0x258f82f7 -> :sswitch_2
        0x335a2072 -> :sswitch_1
        0x573464dd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPermittedStr(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1373
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Allow to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    const-string v1, " from broadcast Intent{act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1377
    const-string/jumbo v1, "} autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPermittedStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "offer"    # Ljava/lang/String;

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1316
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Allow to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->getOfferStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    const-string v1, " autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getProtectionListPackageNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1510
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1511
    .local v0, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROTECTION_LIST:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 1512
    return-object v0
.end method

.method private getStartServiceListPackageNames(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1534
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1535
    .local v0, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_STARTSERVICE_LIST:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 1536
    return-object v0
.end method

.method private getSyncManagerListPkgNames(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1552
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1553
    .local v0, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_SYNCMANAGER_LIST:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 1554
    return-object v0
.end method

.method private getTodayZeroTime()J
    .locals 3

    .line 691
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 692
    .local v0, "c":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 693
    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 694
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 695
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 696
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 697
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 698
    .local v1, "time":J
    return-wide v1
.end method

.method private getWhiteListPackageNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 310
    .local v0, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    const-string/jumbo v4, "status=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 311
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    .line 310
    move-object v1, p0

    move-object v2, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 312
    return-object v0
.end method

.method private inBroadcastWhiteList(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 1719
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1723
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1724
    .local v1, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBroadcastWhiteListNames:Ljava/util/Map;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const-string v2, ""

    .line 1725
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1726
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBroadcastWhiteListNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1727
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 1728
    .local v4, "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1729
    const-string v0, "NubiaSelfStartUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allow action :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/4 v0, 0x1

    return v0

    .line 1732
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4    # "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 1734
    :cond_2
    return v0

    .line 1720
    .end local v1    # "action":Ljava/lang/String;
    :cond_3
    :goto_1
    return v0
.end method

.method private initConfig()V
    .locals 4

    .line 1622
    const-string/jumbo v0, "nubia_selfstart_feature"

    invoke-static {v0}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1623
    .local v0, "selfStartFeature":Ljava/lang/String;
    const-string/jumbo v1, "nubia_powercontroller_feature"

    invoke-static {v1}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1624
    .local v1, "powerControlFeature":Ljava/lang/String;
    const-string/jumbo v2, "nubia_powercontroller_feature"

    const-string v3, "PowerController_International"

    invoke-static {v2, v3}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1625
    .local v2, "powerControlInternationalFeature":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1626
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsSelfStartControl:Ljava/lang/Boolean;

    .line 1628
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1629
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1630
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsInternationVersion:Ljava/lang/Boolean;

    .line 1636
    :cond_1
    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 780
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NubiaSelfStartUtil"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 781
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 782
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandler:Landroid/os/Handler;

    .line 783
    return-void
.end method

.method private initPlugType()V
    .locals 3

    .line 176
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 177
    .local v0, "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsPowerConnected:Ljava/lang/Boolean;

    monitor-enter v1

    .line 178
    const/4 v2, 0x7

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsPowerConnected:Ljava/lang/Boolean;

    .line 179
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1606
    const/4 v0, 0x0

    .line 1608
    .local v0, "isInstall":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1609
    .local v1, "manager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1611
    .local v3, "apkInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 1614
    :cond_1
    const/4 v0, 0x1

    .line 1617
    .end local v1    # "manager":Landroid/content/pm/PackageManager;
    .end local v3    # "apkInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    goto :goto_0

    .line 1616
    :catch_0
    move-exception v1

    .line 1618
    :goto_0
    return v0
.end method

.method private isAuthorityAllow(Ljava/lang/String;)Z
    .locals 7
    .param p1, "authority"    # Ljava/lang/String;

    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, "result":Z
    if-eqz p1, :cond_3

    .line 987
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 988
    .local v1, "authorities":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .end local v0    # "result":Z
    .local v4, "result":Z
    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v5, v1, v0

    .line 989
    .local v5, "auth":Ljava/lang/String;
    const-string v6, "browser"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.android.browser"

    .line 990
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "android.accounts.cts.unaffiliated.authenticators.provider"

    .line 991
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v6, v3

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    move v4, v6

    .line 992
    if-eqz v4, :cond_2

    .line 993
    goto :goto_3

    .line 988
    .end local v5    # "auth":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1000
    .end local v1    # "authorities":[Ljava/lang/String;
    .end local v4    # "result":Z
    .restart local v0    # "result":Z
    :cond_3
    move v4, v0

    .end local v0    # "result":Z
    .restart local v4    # "result":Z
    :cond_4
    :goto_3
    return v4
.end method

.method private isDefaultAllow(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "startStyle"    # Ljava/lang/String;

    .line 1251
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Map;

    monitor-enter v0

    .line 1252
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Map;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 1253
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsPowerConnected:Ljava/lang/Boolean;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1254
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Map;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsPowerConnected:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1258
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v3

    .line 1260
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v2

    .line 1262
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    .line 1272
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_3

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "cn.nubia."

    .line 1274
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.cts."

    .line 1275
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.externalservice.cts"

    .line 1276
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.externalservice.service"

    .line 1277
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.tests."

    .line 1278
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.accounts.cts"

    .line 1279
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android.xts."

    .line 1280
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.compatibility.common.deviceinfo"

    .line 1281
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.cttl"

    .line 1282
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.jobscheduler.cts.deviceside"

    .line 1284
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, ".cts"

    .line 1285
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, ".gts"

    .line 1286
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1289
    :cond_2
    monitor-exit v0

    .line 1290
    return v2

    .line 1287
    :cond_3
    :goto_0
    monitor-exit v0

    return v3

    .line 1289
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private isDefaultAllowSelfStart(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 1648
    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->mAllowSelfStartPkgNames:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1649
    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->mAllowSelfStartPkgNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->mAllowSelfStartPkgNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 1651
    :cond_1
    return v1
.end method

.method private isInBindList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 1130
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    monitor-enter v0

    .line 1131
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1132
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1134
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isInProtectList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1124
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    monitor-enter v0

    .line 1125
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1004
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    monitor-enter v0

    .line 1005
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1006
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isInternalVersion()Z
    .locals 2

    .line 1594
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsInternationVersion:Ljava/lang/Boolean;

    monitor-enter v0

    .line 1595
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsInternationVersion:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1596
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isLimited(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1140
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    monitor-enter v0

    .line 1141
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1142
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getTodayZeroTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    .line 1143
    .local v1, "time":I
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    .line 1144
    .local v3, "count":[Ljava/lang/Integer;
    const/4 v4, 0x2

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v1, v5, :cond_0

    .line 1145
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 1146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1147
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    aget-object v5, v3, v2

    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/am/NubiaSelfStartUtil;->updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1150
    :cond_0
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v5, v3, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1151
    aget-object v4, v3, v2

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1152
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    aget-object v5, v3, v2

    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/am/NubiaSelfStartUtil;->updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1155
    :cond_1
    monitor-exit v0

    return v6

    .line 1165
    .end local v1    # "time":I
    .end local v3    # "count":[Ljava/lang/Integer;
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1166
    return v2

    .line 1165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isNubiaSuperPowerAllowPkg(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "startStyle"    # Ljava/lang/String;

    .line 1294
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNubiaSuperPowerPkgNames:Ljava/util/Set;

    monitor-enter v0

    .line 1295
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNubiaSuperPowerPkgNames:Ljava/util/Set;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1296
    monitor-exit v0

    return v2

    .line 1306
    :cond_0
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1310
    :cond_1
    monitor-exit v0

    .line 1311
    const/4 v0, 0x0

    return v0

    .line 1308
    :cond_2
    :goto_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "cn.nubia."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1310
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isNubiaSuperPowerSavingMode()Z
    .locals 3

    .line 1639
    const/4 v0, 0x0

    .line 1640
    .local v0, "result":Z
    const-string/jumbo v1, "persist.sys.power.nbpsm"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1641
    .local v1, "mode":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1642
    const/4 v0, 0x1

    .line 1644
    :cond_0
    return v0
.end method

.method private isProviderInstallFinish()Z
    .locals 8

    .line 762
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 764
    .local v5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    const-string/jumbo v3, "status=?"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v0, 0x2

    .line 765
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 764
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->getDataFromDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    return v7

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 769
    sget v1, Lcom/android/server/am/NubiaSelfStartUtil;->initCount:I

    add-int/2addr v1, v7

    sput v1, Lcom/android/server/am/NubiaSelfStartUtil;->initCount:I

    .line 770
    sget v1, Lcom/android/server/am/NubiaSelfStartUtil;->initCount:I

    const/16 v2, 0x190

    if-ge v1, v2, :cond_0

    .line 771
    return v6

    .line 773
    :cond_0
    const-string v1, "NubiaSelfStartUtil"

    const-string/jumbo v2, "init fail max num :400"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return v7
.end method

.method private isRootOrShell(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .line 1246
    if-eqz p1, :cond_1

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

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

.method private isRunningAppProcess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1655
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mService:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->isRunningAppProcessesFull(Ljava/lang/String;)Z

    move-result v0

    .line 1660
    .local v0, "result":Z
    return v0

    .line 1656
    .end local v0    # "result":Z
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSelfStartControl()Z
    .locals 2

    .line 1600
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsSelfStartControl:Ljava/lang/Boolean;

    monitor-enter v0

    .line 1601
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsSelfStartControl:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1602
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isWidget(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1170
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    monitor-enter v0

    .line 1171
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isWidgetAction(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 835
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "android.appwidget.action.APPWIDGET_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    const/4 v1, 0x1

    return v1

    .line 841
    .end local v0    # "intentAction":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private loadBroadcastActionBlackListFromDb(Landroid/content/Context;Ljava/util/Map;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 548
    .local p2, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 549
    sget-object v6, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BROADCAST_ACTION_BLACKLIST:Landroid/net/Uri;

    .line 550
    .local v6, "uri":Landroid/net/Uri;
    const-string/jumbo v0, "package_name"

    const-string v1, "action_name"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "selections":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 552
    return-void

    .line 554
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 555
    .local v7, "cr":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    move-object v8, v0

    .line 557
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 558
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 559
    const-string/jumbo v0, "package_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 560
    .local v0, "packageNameIndex":I
    const-string v1, "action_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 561
    .local v1, "actionNameIndex":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 562
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 565
    .local v4, "actionName":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 566
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 566
    .local v5, "actionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 568
    .end local v5    # "actionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 570
    .restart local v5    # "actionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 571
    invoke-interface {p2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "actionName":Ljava/lang/String;
    .end local v5    # "actionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 577
    .end local v0    # "packageNameIndex":I
    .end local v1    # "actionNameIndex":I
    :cond_2
    if-eqz v8, :cond_3

    .line 579
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 582
    :goto_2
    goto :goto_3

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 581
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 577
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 574
    :catch_1
    move-exception v0

    .line 575
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 577
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_3

    .line 579
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 585
    :cond_3
    :goto_3
    return-void

    .line 577
    :goto_4
    if-eqz v8, :cond_4

    .line 579
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 582
    goto :goto_5

    .line 580
    :catch_2
    move-exception v1

    .line 581
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 582
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_5
    throw v0
.end method

.method private loadFriendWhiteListFromDb(Landroid/content/Context;Ljava/util/Map;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 589
    .local p2, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 590
    sget-object v6, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_FRIEND_WHITELIST:Landroid/net/Uri;

    .line 591
    .local v6, "uri":Landroid/net/Uri;
    const-string v0, "caller_package_name"

    const-string v1, "called_package_name"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, "selections":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 593
    return-void

    .line 595
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 596
    .local v7, "cr":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    move-object v8, v0

    .line 598
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 599
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 600
    const-string v0, "caller_package_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 601
    .local v0, "callerPkgNameIndex":I
    const-string v1, "called_package_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 602
    .local v1, "calledPkgNameIndex":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 603
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 604
    .local v3, "callerPkgName":Ljava/lang/String;
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 606
    .local v4, "calledPkgName":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 607
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .local v5, "calledSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 609
    .end local v5    # "calledSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 611
    .restart local v5    # "calledSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-interface {p2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    .end local v3    # "callerPkgName":Ljava/lang/String;
    .end local v4    # "calledPkgName":Ljava/lang/String;
    .end local v5    # "calledSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 618
    .end local v0    # "callerPkgNameIndex":I
    .end local v1    # "calledPkgNameIndex":I
    :cond_2
    if-eqz v8, :cond_3

    .line 620
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 623
    :goto_2
    goto :goto_3

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 618
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 615
    :catch_1
    move-exception v0

    .line 616
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 618
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_3

    .line 620
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 626
    :cond_3
    :goto_3
    return-void

    .line 618
    :goto_4
    if-eqz v8, :cond_4

    .line 620
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 623
    goto :goto_5

    .line 621
    :catch_2
    move-exception v1

    .line 622
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 623
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_5
    throw v0
.end method

.method private loadLimitListFromCrusor(Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 13
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 671
    .local p1, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Integer;>;"
    const-string/jumbo v0, "package_name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 672
    .local v0, "packageNameIndex":I
    const-string/jumbo v1, "num"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 673
    .local v1, "numIndex":I
    const-string/jumbo v2, "max_num"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 674
    .local v2, "maxNumIndex":I
    const-string v3, "date"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 675
    .local v3, "dateIndex":I
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getTodayZeroTime()J

    move-result-wide v4

    .line 676
    .local v4, "time":J
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 677
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 678
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 679
    .local v7, "maxNum":I
    const/4 v8, 0x0

    .line 680
    .local v8, "num":I
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    cmp-long v9, v9, v4

    if-nez v9, :cond_0

    .line 681
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_1

    .line 683
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v9, v6, v10}, Lcom/android/server/am/NubiaSelfStartUtil;->updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 685
    :goto_1
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-wide/16 v11, 0x3e8

    div-long v11, v4, v11

    long-to-int v11, v11

    .line 686
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 685
    invoke-interface {p1, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "maxNum":I
    .end local v8    # "num":I
    goto :goto_0

    .line 688
    :cond_1
    return-void
.end method

.method private loadLimitListFromDb(Landroid/content/Context;Ljava/util/Map;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 519
    .local p2, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 520
    sget-object v6, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

    .line 521
    .local v6, "uri":Landroid/net/Uri;
    const-string/jumbo v0, "package_name"

    const-string/jumbo v1, "num"

    const-string/jumbo v2, "max_num"

    const-string v3, "date"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, "selections":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 524
    return-void

    .line 526
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 527
    .local v7, "cr":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    move-object v8, v0

    .line 529
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 530
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 531
    invoke-direct {p0, p2, v8}, Lcom/android/server/am/NubiaSelfStartUtil;->loadLimitListFromCrusor(Ljava/util/Map;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    :cond_1
    if-eqz v8, :cond_2

    .line 538
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 541
    :goto_0
    goto :goto_1

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 540
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 536
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 533
    :catch_1
    move-exception v0

    .line 534
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 538
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 544
    :cond_2
    :goto_1
    return-void

    .line 536
    :goto_2
    if-eqz v8, :cond_3

    .line 538
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 541
    goto :goto_3

    .line 539
    :catch_2
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 541
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    throw v0
.end method

.method private loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 317
    .local p5, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "package_name"

    const-string v1, "class_name"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "selections":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 320
    return-void

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 323
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 325
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 326
    if-eqz v1, :cond_2

    .line 327
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 328
    .local v2, "sum":I
    const/4 v3, 0x0

    .line 328
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 329
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 330
    const-string/jumbo v5, "package_name"

    .line 331
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 330
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 332
    .local v5, "packageName":Ljava/lang/String;
    const-string v6, "class_name"

    .line 333
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 332
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, "className":Ljava/lang/String;
    invoke-interface {p5, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 336
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 336
    .local v7, "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 338
    .end local v7    # "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 340
    .restart local v7    # "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-interface {p5, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    .end local v2    # "sum":I
    .end local v3    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    .line 349
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 352
    :goto_2
    goto :goto_3

    .line 350
    :catch_0
    move-exception v2

    .line 351
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 347
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 344
    :catch_1
    move-exception v2

    .line 345
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3

    .line 349
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 355
    :cond_3
    :goto_3
    return-void

    .line 347
    :goto_4
    if-eqz v1, :cond_4

    .line 349
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 352
    goto :goto_5

    .line 350
    :catch_2
    move-exception v3

    .line 351
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_5
    throw v2
.end method

.method private loadNotificationManagerListFromDb(Landroid/content/Context;Ljava/util/Map;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 630
    .local p2, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 631
    sget-object v6, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_NOTIFICATION_MANAGER:Landroid/net/Uri;

    .line 632
    .local v6, "uri":Landroid/net/Uri;
    const-string/jumbo v0, "package_name"

    const-string v1, "class_name"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 633
    .local v2, "selections":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 634
    return-void

    .line 636
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 637
    .local v7, "cr":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    move-object v8, v0

    .line 639
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 640
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 641
    const-string/jumbo v0, "package_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 642
    .local v0, "pkgNameIndex":I
    const-string v1, "class_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 643
    .local v1, "classNameIndex":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 644
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 645
    .local v3, "pkgName":Ljava/lang/String;
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 647
    .local v4, "className":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 648
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 648
    .local v5, "packageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 650
    .end local v5    # "packageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 652
    .restart local v5    # "packageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 653
    invoke-interface {p2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "packageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 659
    .end local v0    # "pkgNameIndex":I
    .end local v1    # "classNameIndex":I
    :cond_2
    if-eqz v8, :cond_3

    .line 661
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 664
    :goto_2
    goto :goto_3

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 663
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 659
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 656
    :catch_1
    move-exception v0

    .line 657
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 659
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_3

    .line 661
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 667
    :cond_3
    :goto_3
    return-void

    .line 659
    :goto_4
    if-eqz v8, :cond_4

    .line 661
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 664
    goto :goto_5

    .line 662
    :catch_2
    move-exception v1

    .line 663
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 664
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_5
    throw v0
.end method

.method private loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 390
    .local p5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/NubiaSelfStartUtil;->getDataFromDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private loadPkgNameAndChargingAllowFromeDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 359
    .local p5, "resultHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v0, "package_name"

    const-string v1, "charging_allow"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, "selections":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 361
    return-void

    .line 363
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 364
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 366
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 367
    if-eqz v1, :cond_1

    .line 368
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 369
    .local v2, "sum":I
    const/4 v3, 0x0

    move v5, v3

    .line 369
    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 370
    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 371
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 377
    .end local v2    # "sum":I
    .end local v5    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 379
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 382
    :goto_1
    goto :goto_2

    .line 380
    :catch_0
    move-exception v2

    .line 381
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 377
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 374
    :catch_1
    move-exception v2

    .line 375
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 377
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 379
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 385
    :cond_2
    :goto_2
    return-void

    .line 377
    :goto_3
    if-eqz v1, :cond_3

    .line 379
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 382
    goto :goto_4

    .line 380
    :catch_2
    move-exception v3

    .line 381
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 382
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    throw v2
.end method

.method private onWidgetDisabled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 1213
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1214
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1215
    .local v0, "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1216
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1217
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->removeWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1220
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    .end local v0    # "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private onWidgetEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 1198
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1200
    .local v0, "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1201
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1202
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->addWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    .end local v0    # "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 1205
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1206
    .restart local v0    # "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1207
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->addWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    .end local v0    # "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    return-void
.end method

.method private removeWidget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 1237
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/NubiaSelfStartUtil$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil$15;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1243
    return-void
.end method

.method private setActivityBlackListPkgNames()V
    .locals 5

    .line 1474
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getActivityBlackList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1475
    .local v0, "activityBlackListNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mActivityBlackListNames:Ljava/util/Map;

    monitor-enter v1

    .line 1476
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mActivityBlackListNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1477
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mActivityBlackListNames:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1478
    const-string v2, "NubiaSelfStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mActivityNames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mActivityBlackListNames:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    monitor-exit v1

    .line 1480
    return-void

    .line 1479
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setBindListPkgNames()V
    .locals 3

    .line 1410
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getBindListPackageNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1411
    .local v0, "bindListPkgNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    monitor-enter v1

    .line 1412
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1413
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1414
    monitor-exit v1

    .line 1415
    return-void

    .line 1414
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setBlackListPkgNames()V
    .locals 3

    .line 1398
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getBlackListPackageNames(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 1399
    .local v0, "blackPkgNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Map;

    monitor-enter v1

    .line 1400
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1401
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1402
    monitor-exit v1

    .line 1403
    return-void

    .line 1402
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setBroadcastActionBlackListPkgNames()V
    .locals 5

    .line 1483
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getBroadcastBlackList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1484
    .local v0, "broadcastBlackListNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBroadcastWhiteListNames:Ljava/util/Map;

    monitor-enter v1

    .line 1485
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBroadcastWhiteListNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1486
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBroadcastWhiteListNames:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1487
    const-string v2, "NubiaSelfStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBroadcastNames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBroadcastWhiteListNames:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    monitor-exit v1

    .line 1489
    return-void

    .line 1488
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setCallerListPkgNames()V
    .locals 3

    .line 1418
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getCallerListPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 1419
    .local v0, "callerPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    monitor-enter v1

    .line 1420
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1421
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1422
    monitor-exit v1

    .line 1423
    return-void

    .line 1422
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setContentProviderListPkgNames()V
    .locals 3

    .line 1434
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getContentProviderListPackageNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1435
    .local v0, "contentProviderListPkgNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    monitor-enter v1

    .line 1436
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1437
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1438
    monitor-exit v1

    .line 1439
    return-void

    .line 1438
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setFriendWhiteListPkgNames()V
    .locals 5

    .line 1492
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getFriendWhiteList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1493
    .local v0, "friendWhiteNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFriendWhiteNames:Ljava/util/Map;

    monitor-enter v1

    .line 1494
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFriendWhiteNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1495
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFriendWhiteNames:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1496
    const-string v2, "NubiaSelfStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mFriendNames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFriendWhiteNames:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    monitor-exit v1

    .line 1498
    return-void

    .line 1497
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setJobSchedulerListPkgNames()V
    .locals 3

    .line 1458
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getJobSchedulerListPkgNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1459
    .local v0, "jobSchedulerListPkgNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mJobSchedulerListNames:Ljava/util/Map;

    monitor-enter v1

    .line 1460
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mJobSchedulerListNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1461
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mJobSchedulerListNames:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1462
    monitor-exit v1

    .line 1463
    return-void

    .line 1462
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setLimitListPkgNames()V
    .locals 3

    .line 1442
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getLimitListPkgNames(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 1443
    .local v0, "limitListPkgNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    monitor-enter v1

    .line 1444
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1445
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1446
    monitor-exit v1

    .line 1447
    return-void

    .line 1446
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setNotificationManagerListPkgNames()V
    .locals 5

    .line 1501
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getNotificationManagerList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1502
    .local v0, "notificationManagerList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNotificationManagerList:Ljava/util/Map;

    monitor-enter v1

    .line 1503
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNotificationManagerList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1504
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNotificationManagerList:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1505
    const-string v2, "NubiaSelfStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mNotificationNames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNotificationManagerList:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    monitor-exit v1

    .line 1507
    return-void

    .line 1506
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setNubiaSuperPowerListPkgNames()V
    .locals 3

    .line 1466
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getNubiaSuperPowerListPkgNames()Ljava/util/Set;

    move-result-object v0

    .line 1467
    .local v0, "nubiaSuperPowerListPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNubiaSuperPowerPkgNames:Ljava/util/Set;

    monitor-enter v1

    .line 1468
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNubiaSuperPowerPkgNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1469
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNubiaSuperPowerPkgNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1470
    monitor-exit v1

    .line 1471
    return-void

    .line 1470
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setProtectionListPkgNames()V
    .locals 3

    .line 1390
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getProtectionListPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 1391
    .local v0, "protectionPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    monitor-enter v1

    .line 1392
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1393
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1394
    monitor-exit v1

    .line 1395
    return-void

    .line 1394
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setStartServiceListPkgNames()V
    .locals 3

    .line 1426
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getStartServiceListPackageNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1427
    .local v0, "startServiceListPkgNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    monitor-enter v1

    .line 1428
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1429
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1430
    monitor-exit v1

    .line 1431
    return-void

    .line 1430
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setSyncManagerListPkgNames()V
    .locals 3

    .line 1450
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getSyncManagerListPkgNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1451
    .local v0, "syncManagerListPkgNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mSyncManagerListNames:Ljava/util/Map;

    monitor-enter v1

    .line 1452
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mSyncManagerListNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1453
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mSyncManagerListNames:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1454
    monitor-exit v1

    .line 1455
    return-void

    .line 1454
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setWhiteListPkgNames()V
    .locals 3

    .line 1382
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getWhiteListPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 1383
    .local v0, "allowedPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    monitor-enter v1

    .line 1384
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1385
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1386
    monitor-exit v1

    .line 1387
    return-void

    .line 1386
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setWidgetListPkgNames()V
    .locals 0

    .line 1406
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->delelteWidgetDataFromDb()I

    .line 1407
    return-void
.end method

.method private updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/Integer;

    .line 703
    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

    .line 704
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "package_name=? "

    .line 705
    .local v1, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 706
    .local v2, "selectionArgs":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 707
    return-void

    .line 709
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 710
    .local v3, "cr":Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 711
    .local v4, "cv":Landroid/content/ContentValues;
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getTodayZeroTime()J

    move-result-wide v5

    .line 712
    .local v5, "time":J
    const-string/jumbo v7, "num"

    invoke-virtual {v4, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 713
    const-string v7, "date"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 715
    :try_start_0
    invoke-virtual {v3, v0, v4, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    goto :goto_0

    .line 716
    :catch_0
    move-exception v7

    .line 717
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 719
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private widgetIsInDb(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 437
    return v0

    .line 439
    :cond_0
    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 440
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "package_name"

    const-string v3, "class_name"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "selections":[Ljava/lang/String;
    const-string/jumbo v8, "package_name=? and class_name=?"

    .line 443
    .local v8, "selection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    const/4 v2, 0x1

    aput-object p2, v6, v2

    .line 444
    .local v6, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 445
    .local v9, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    move-object v10, v2

    .line 447
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, v1

    move-object v5, v8

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v10, v2

    .line 448
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_1

    .line 449
    const/4 v0, 0x1

    .line 454
    :cond_1
    if-eqz v10, :cond_2

    .line 456
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 459
    :goto_0
    goto :goto_1

    .line 457
    :catch_0
    move-exception v2

    .line 458
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 458
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 454
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 451
    :catch_1
    move-exception v2

    .line 452
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v10, :cond_2

    .line 456
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 462
    :cond_2
    :goto_1
    return v0

    .line 454
    :goto_2
    if-eqz v10, :cond_3

    .line 456
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 459
    goto :goto_3

    .line 457
    :catch_2
    move-exception v3

    .line 458
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    throw v2
.end method


# virtual methods
.method public closeNubiaSelfStart()V
    .locals 1

    .line 163
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsSelfStartControl:Ljava/lang/Boolean;

    .line 164
    return-void
.end method

.method countWidget(Lcom/android/server/am/BroadcastRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 1176
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1178
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1180
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1181
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1182
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1185
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1186
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1187
    .local v1, "className":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1188
    .local v2, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    monitor-enter v3

    .line 1189
    :try_start_0
    const-string v4, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1190
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->onWidgetEnabled(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1191
    :cond_2
    const-string v4, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1192
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->onWidgetDisabled(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    :cond_3
    :goto_0
    monitor-exit v3

    .line 1195
    return-void

    .line 1194
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1183
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "action":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void
.end method

.method firstBootGetAllowPkgNames()V
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->firstBootInitConfig()V

    .line 723
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderInstalled:Z

    if-nez v0, :cond_0

    .line 724
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isProviderInstallFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->initDataFromProvider()V

    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderInstalled:Z

    .line 729
    :cond_0
    return-void
.end method

.method firstBootInitConfig()V
    .locals 1

    .line 732
    iget-boolean v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFirstBoot:Z

    if-eqz v0, :cond_0

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFirstBoot:Z

    .line 734
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->initConfig()V

    .line 735
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->initHandler()V

    .line 737
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->initPlugType()V

    .line 740
    :cond_0
    return-void
.end method

.method public getCallerPkgList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method initContext(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 281
    iput-object p1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    .line 282
    iput-object p2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 283
    return-void
.end method

.method initDataFromProvider()V
    .locals 0

    .line 743
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setWhiteListPkgNames()V

    .line 744
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setProtectionListPkgNames()V

    .line 745
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setBlackListPkgNames()V

    .line 746
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setWidgetListPkgNames()V

    .line 747
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setBindListPkgNames()V

    .line 748
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setCallerListPkgNames()V

    .line 749
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setStartServiceListPkgNames()V

    .line 750
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setContentProviderListPkgNames()V

    .line 751
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setLimitListPkgNames()V

    .line 752
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setSyncManagerListPkgNames()V

    .line 753
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setJobSchedulerListPkgNames()V

    .line 754
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setNubiaSuperPowerListPkgNames()V

    .line 755
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setActivityBlackListPkgNames()V

    .line 756
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setBroadcastActionBlackListPkgNames()V

    .line 757
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setFriendWhiteListPkgNames()V

    .line 758
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setNotificationManagerListPkgNames()V

    .line 759
    return-void
.end method

.method public is2LevelPreStartProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1699
    if-eqz p1, :cond_0

    .line 1700
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->is2LevelPreStart:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    .line 1701
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-nez v0, :cond_0

    .line 1703
    const-string v0, "NubiaSelfStartUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NubiaSelfStartUtil is2LevelPreStartProcess true :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    const/4 v0, 0x1

    return v0

    .line 1707
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAllowBackgroundService(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1711
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1712
    :cond_0
    const-string v1, "cn.nubia."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->mAllowBackgroundServicePkgNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1715
    :cond_1
    return v0

    .line 1713
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1711
    :cond_3
    :goto_1
    return v0
.end method

.method public isAllowedReBind(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 957
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 958
    const/4 v0, 0x0

    .line 960
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 962
    .local v1, "appInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 963
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v3, "rebindService"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 964
    const/4 v0, 0x1

    .line 967
    .end local v1    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    .line 968
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isRunningAppProcess(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 969
    :cond_1
    const/4 v0, 0x1

    .line 974
    :cond_2
    if-nez v0, :cond_3

    .line 975
    const-string v1, "NubiaSelfStartUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allow packageName=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from RebindServices autostart"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_3
    return v0

    .line 980
    .end local v0    # "result":Z
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public isAllowedSelfStartFromBindService(Lcom/android/server/am/ServiceRecord;)Z
    .locals 1
    .param p1, "serviceRecord"    # Lcom/android/server/am/ServiceRecord;

    .line 895
    const/4 v0, 0x1

    .line 903
    .local v0, "result":Z
    return v0
.end method

.method public isAllowedSelfStartFromBindService(Lcom/android/server/am/ServiceRecord;I)Z
    .locals 5
    .param p1, "serviceRecord"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingUid"    # I

    .line 869
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 870
    const/4 v0, 0x0

    .line 871
    .local v0, "result":Z
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 872
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 873
    .local v2, "className":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerSavingMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 874
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const-string v4, "bindServiceLocked"

    .line 875
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerAllowPkg(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 876
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 877
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const-string v4, "bindServiceLocked"

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 878
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 879
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 880
    invoke-direct {p0, v1, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->isInBindList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isRunningAppProcess(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 881
    :cond_4
    const/4 v0, 0x1

    .line 885
    :cond_5
    :goto_0
    if-nez v0, :cond_6

    .line 886
    const-string v3, "NubiaSelfStartUtil"

    const-string v4, "bindServiceLocked"

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/NubiaSelfStartUtil;->getForbidStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_6
    return v0

    .line 890
    .end local v0    # "result":Z
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method isAllowedSelfStartPkg(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z
    .locals 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "callingUid"    # I
    .param p3, "offer"    # Ljava/lang/String;

    .line 845
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, "result":Z
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 848
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 849
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 850
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerAllowPkg(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 851
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 852
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 853
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 854
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isRunningAppProcess(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 855
    :cond_4
    const/4 v0, 0x1

    .line 859
    :cond_5
    :goto_0
    if-nez v0, :cond_6

    .line 860
    const-string v2, "NubiaSelfStartUtil"

    invoke-direct {p0, v1, p3}, Lcom/android/server/am/NubiaSelfStartUtil;->getForbidStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_6
    return v0

    .line 864
    .end local v0    # "result":Z
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method isAllowedSelfStartPkg(Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .line 787
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "result":Z
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 790
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 791
    const-string v2, "cn.nubia.ultrapower.launcher"

    .line 792
    .local v2, "launcher":Ljava/lang/String;
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-direct {p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v4, "startfrombroadcast"

    .line 793
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerAllowPkg(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 794
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 795
    :cond_0
    const/4 v0, 0x1

    .line 796
    .end local v2    # "launcher":Ljava/lang/String;
    :cond_1
    goto :goto_1

    :cond_2
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-direct {p0, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v3, "startfrombroadcast"

    .line 797
    invoke-direct {p0, v2, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 798
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 799
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidgetAction(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isRunningAppProcess(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->inBroadcastWhiteList(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 801
    :cond_5
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllowSelfStart(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 802
    const-string v2, "NubiaSelfStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allow default packageName=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " R=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v0, 0x1

    goto :goto_1

    .line 800
    :cond_6
    :goto_0
    const/4 v0, 0x1

    .line 810
    :cond_7
    :goto_1
    return v0

    .line 812
    .end local v0    # "result":Z
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method isAllowedSelfStartPkg(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;

    .line 819
    const/4 v0, 0x0

    .line 820
    .local v0, "result":Z
    iget-object v1, p2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 821
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 823
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-direct {p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "startfrombroadcast"

    .line 824
    invoke-direct {p0, v2, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 825
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 826
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidgetAction(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isRunningAppProcess(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 827
    :cond_2
    const/4 v0, 0x1

    .line 830
    :cond_3
    return v0
.end method

.method isAllowedSelfStartPkg(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)Z
    .locals 5
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "callingUid"    # I

    .line 908
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 909
    const/4 v0, 0x0

    .line 910
    .local v0, "result":Z
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 911
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 912
    invoke-direct {p0, p3}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ContentProviderImpl"

    .line 913
    invoke-direct {p0, p2, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerAllowPkg(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 914
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 915
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ContentProviderImpl"

    invoke-direct {p0, p2, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 916
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 917
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isAuthorityAllow(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isRunningAppProcess(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 918
    :cond_4
    const/4 v0, 0x1

    .line 922
    :cond_5
    :goto_0
    if-nez v0, :cond_6

    .line 923
    const-string v2, "NubiaSelfStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allow packageName=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from contentProvider autostart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_6
    return v0

    .line 928
    .end local v0    # "result":Z
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method isAllowedServiceRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 933
    const/4 v0, 0x0

    move v1, v0

    .line 933
    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 934
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    const-string/jumbo v5, "killServicesLocked"

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartPkg(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z

    move-result v2

    .line 935
    .local v2, "allow":Z
    if-eqz v2, :cond_0

    .line 936
    return v3

    .line 933
    .end local v2    # "allow":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 939
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 940
    .local v2, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 940
    .local v4, "conni":I
    :goto_2
    if-ltz v4, :cond_4

    .line 941
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 942
    .local v5, "cl":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 943
    .local v7, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 944
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_2

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v10, 0x3e8

    if-ne v9, v10, :cond_2

    .line 948
    return v3

    .line 950
    .end local v7    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    goto :goto_3

    .line 940
    .end local v5    # "cl":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 952
    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v4    # "conni":I
    :cond_4
    goto :goto_1

    .line 953
    :cond_5
    return v0
.end method

.method public isInActivityBlackList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 1677
    const-string v0, "*"

    .line 1678
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInActivityBlackList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isInActivityBlackList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 1665
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1666
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mActivityBlackListNames:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mActivityBlackListNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1667
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mActivityBlackListNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1668
    .local v1, "classSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1669
    const-string v0, "NubiaSelfStartUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isInActivityBlackListtrue :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    const/4 v0, 0x1

    return v0

    .line 1673
    .end local v1    # "classSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return v0

    .line 1665
    :cond_2
    :goto_0
    return v0
.end method

.method isInCallerList(I)Z
    .locals 6
    .param p1, "callerUid"    # I

    .line 1014
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1015
    const/4 v0, 0x1

    return v0

    .line 1017
    :cond_0
    const/4 v0, 0x0

    .line 1018
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 1020
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1021
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1022
    .local v1, "callerPkgList":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1023
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1024
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 1025
    const/4 v0, 0x1

    .line 1026
    goto :goto_1

    .line 1023
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1032
    .end local v1    # "callerPkgList":[Ljava/lang/String;
    :cond_2
    :goto_1
    goto :goto_2

    .line 1030
    :catch_0
    move-exception v1

    .line 1031
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1034
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return v0
.end method

.method isInCallerList(Landroid/util/ArrayMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)Z"
        }
    .end annotation

    .line 1038
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1040
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1041
    return v1

    .line 1043
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1044
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1046
    :cond_2
    return v1
.end method

.method isInContentProviderList(Lcom/android/server/am/ContentProviderRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/am/ContentProviderRecord;

    .line 1070
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1071
    const/4 v0, 0x0

    .line 1072
    .local v0, "result":Z
    iget-object v1, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 1073
    iget-object v1, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1074
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1075
    .local v2, "className":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1076
    const/4 v0, 0x0

    goto :goto_0

    .line 1078
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1081
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 1083
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method isInJobSchedulerList(Lcom/android/server/am/ServiceRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/am/ServiceRecord;

    .line 1106
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1107
    const/4 v0, 0x0

    .line 1108
    .local v0, "result":Z
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 1109
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1110
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1111
    .local v2, "className":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mJobSchedulerListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1112
    const/4 v0, 0x0

    goto :goto_0

    .line 1114
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mJobSchedulerListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1117
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 1119
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method isInNotificationManagerList(Lcom/android/server/am/ServiceRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/am/ServiceRecord;

    .line 1682
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1683
    const/4 v0, 0x0

    .line 1684
    .local v0, "result":Z
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 1685
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1686
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1687
    .local v2, "className":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNotificationManagerList:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1688
    const/4 v0, 0x0

    goto :goto_0

    .line 1690
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNotificationManagerList:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1693
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 1695
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method isInStartServiceList(Lcom/android/server/am/ServiceRecord;)Z
    .locals 4
    .param p1, "serviceRecord"    # Lcom/android/server/am/ServiceRecord;

    .line 1051
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    const/4 v0, 0x1

    return v0

    .line 1054
    :cond_0
    const/4 v0, 0x0

    .line 1055
    .local v0, "result":Z
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    .line 1056
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1057
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1058
    .local v2, "className":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 1059
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1060
    const/4 v0, 0x0

    goto :goto_0

    .line 1062
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1066
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method isInSyncManagerList(Lcom/android/server/am/ServiceRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/am/ServiceRecord;

    .line 1088
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1089
    const/4 v0, 0x0

    .line 1090
    .local v0, "result":Z
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 1091
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1092
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1093
    .local v2, "className":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mSyncManagerListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1094
    const/4 v0, 0x0

    goto :goto_0

    .line 1096
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mSyncManagerListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1099
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 1101
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public registerBroadcastReceiver()V
    .locals 3

    .line 286
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "powerConnectedFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 290
    new-instance v1, Lcom/android/server/am/NubiaSelfStartUtil$13;

    invoke-direct {v1, p0}, Lcom/android/server/am/NubiaSelfStartUtil$13;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;)V

    .line 304
    .local v1, "powerConnectedBroadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    .end local v0    # "powerConnectedFilter":Landroid/content/IntentFilter;
    .end local v1    # "powerConnectedBroadcastReceiver":Landroid/content/BroadcastReceiver;
    :cond_0
    return-void
.end method

.method registerSelfStartObserver()V
    .locals 5

    .line 183
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isSelfStartControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$1;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 192
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROTECTION_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4}, Lcom/android/server/am/NubiaSelfStartUtil$2;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 200
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4}, Lcom/android/server/am/NubiaSelfStartUtil$3;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BIND_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4}, Lcom/android/server/am/NubiaSelfStartUtil$4;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_CALLER_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$5;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4}, Lcom/android/server/am/NubiaSelfStartUtil$5;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 224
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_STARTSERVICE_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$6;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4}, Lcom/android/server/am/NubiaSelfStartUtil$6;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROVIDER_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$7;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4}, Lcom/android/server/am/NubiaSelfStartUtil$7;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$8;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4}, Lcom/android/server/am/NubiaSelfStartUtil$8;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 248
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_ACTIVITY_BLACKLIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$9;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4}, Lcom/android/server/am/NubiaSelfStartUtil$9;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 256
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BROADCAST_ACTION_BLACKLIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$10;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4}, Lcom/android/server/am/NubiaSelfStartUtil$10;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_FRIEND_WHITELIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$11;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4}, Lcom/android/server/am/NubiaSelfStartUtil$11;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 270
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_NOTIFICATION_MANAGER:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$12;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4}, Lcom/android/server/am/NubiaSelfStartUtil$12;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 278
    :cond_0
    return-void
.end method
