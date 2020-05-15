.class public Lcn/nubia/server/appmgmt/AppDataManager;
.super Ljava/lang/Object;
.source "AppDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/AppDataManager$FreezeActionTableObserver;,
        Lcn/nubia/server/appmgmt/AppDataManager$FreezeParamsTableObserver;,
        Lcn/nubia/server/appmgmt/AppDataManager$FreezeTCPTableObserver;,
        Lcn/nubia/server/appmgmt/AppDataManager$FreezeGPSTableObserver;,
        Lcn/nubia/server/appmgmt/AppDataManager$UpgradeAppTableObserver;
    }
.end annotation


# static fields
.field public static final ALLOW_ALL_BUILD_IN_FREZON:Z = false

.field private static final APP_TYPE_COLUMN:Ljava/lang/String; = "app_type"

.field private static final FREEZE_ACTION_COLUMN:Ljava/lang/String; = "action"

.field private static final FREEZE_ACTION_FILE:Ljava/lang/String; = "freeze_action_list.xml"

.field private static final FREEZE_ACTION_URI:Ljava/lang/String; = "content://cn.nubia.security.power/freeze_action_table"

.field private static final FREEZE_PARAMS_COLUMN:Ljava/lang/String; = "params"

.field private static final FREEZE_PARAMS_FILE:Ljava/lang/String; = "freeze_params_list.xml"

.field private static final FREEZE_PARAMS_URI:Ljava/lang/String; = "content://cn.nubia.security.power/freeze_params_table"

.field private static final FREEZE_STRATEGY_COLUMN:Ljava/lang/String; = "strategy"

.field private static final FREEZE_TYPE_COLUMN:Ljava/lang/String; = "type"

.field private static final FREEZE_WHITE_FILE:Ljava/lang/String; = "freeze_white_list.xml"

.field private static final GPS_APP_FILE:Ljava/lang/String; = "gps_white_list.xml"

.field private static final GPS_APP_URI:Ljava/lang/String; = "content://cn.nubia.security.power/freeze_gps_table"

.field private static final MUSIC_APP_FILE:Ljava/lang/String; = "music_app_list.xml"

.field private static final MUSIC_APP_WHITE_FILE:Ljava/lang/String; = "music_white_app.xml"

.field public static NONE_ALLOWED:Z = false

.field private static final PKG_COLUMN:Ljava/lang/String; = "pkg_name"

.field private static final PKG_NAME_COLUMN:Ljava/lang/String; = "pkg_name"

.field private static final SPORT_APP_FILE:Ljava/lang/String; = "sport_app_list.xml"

.field private static final TAG:Ljava/lang/String; = "AppDataManager"

.field private static final TYPE_APPLICATION_THREAD:Ljava/lang/String; = "app_thread"

.field private static final TYPE_BROADCAST:Ljava/lang/String; = "broadcast"

.field private static final TYPE_CONFIG_CHANGED:Ljava/lang/String; = "config_changed"

.field private static final TYPE_IGNORE_SENSORS:Ljava/lang/String; = "ignore_sensors"

.field private static final TYPE_SOCIAL_APP:Ljava/lang/String; = "social_app"

.field private static final UNFREEZE_TCP_FILE:Ljava/lang/String; = "freeze_tcp_white_list.xml"

.field private static final UNFREEZE_TCP_URI:Ljava/lang/String; = "content://cn.nubia.security.power/freeze_tcp_table"

.field private static final UPGRADE_APP_URI:Ljava/lang/String; = "content://cn.nubia.security.power/upgrade_app_table"

.field public static mAppDataManager:Lcn/nubia/server/appmgmt/AppDataManager;


# instance fields
.field public mAdjHoldTime:J

.field private mBuildAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBuildInAppBlackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFreezeActionTableRunnable:Ljava/lang/Runnable;

.field private mFreezeActionXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ActionXmlOperator;

.field public mFreezeAgainTime:J

.field private mFreezeGPSTableRunnable:Ljava/lang/Runnable;

.field private mFreezeParamsTableRunnable:Ljava/lang/Runnable;

.field private mFreezeParamsXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ParamsXmlOperator;

.field private mFreezeTCPTableRunnable:Ljava/lang/Runnable;

.field private mFreezeWhiteAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFreezeWhiteXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

.field private mGpsAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreSensors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInterceptActionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInterceptApplicatonThreadList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInterceptBroadcastList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterceptConfigChangeFlag:I

.field private mLoadBuildAppRunnable:Ljava/lang/Runnable;

.field private mMusicAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMusicCheckTime:J

.field private mMusicWhiteAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicWhiteXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

.field private mMusicXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

.field private mNoFreezeNetworkConnAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPM:Landroid/content/pm/PackageManager;

.field public mProcessFreezeStepTime:J

.field public mProcessMaxFreezeTime:J

.field public mProcessScheduleThrottleTime:J

.field public mProcessUnfreezeTime:J

.field private mSensorBlackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSocialAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialLinkAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSportAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSportXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

.field private mStrategyParamsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTCPWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTrafficCalInterval:J

.field public mTrafficFreezeThreshold:J

.field private mUnFreezeTcpXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private mUpgradeAppTableRunnable:Ljava/lang/Runnable;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 458
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/server/appmgmt/AppDataManager;->NONE_ALLOWED:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mBuildInAppBlackList:Ljava/util/HashSet;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mDefaultWhiteList:Ljava/util/HashSet;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mNoFreezeNetworkConnAppList:Ljava/util/HashSet;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSpecialLinkAppList:Ljava/util/HashSet;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSocialAppList:Ljava/util/HashSet;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mIgnoreSensors:Ljava/util/HashSet;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicAppList:Ljava/util/HashSet;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicWhiteAppList:Ljava/util/HashSet;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteAppList:Ljava/util/HashSet;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptConfigChangeFlag:I

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptApplicatonThreadList:Ljava/util/HashSet;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mBuildAppList:Ljava/util/HashSet;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSensorBlackList:Ljava/util/HashSet;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mAdjHoldTime:J

    .line 107
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicCheckTime:J

    .line 108
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeAgainTime:J

    .line 109
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mProcessFreezeStepTime:J

    .line 110
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mProcessUnfreezeTime:J

    .line 111
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mProcessMaxFreezeTime:J

    .line 112
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mProcessScheduleThrottleTime:J

    .line 113
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTrafficFreezeThreshold:J

    .line 114
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTrafficCalInterval:J

    .line 116
    new-instance v0, Lcn/nubia/server/appmgmt/AppDataManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/AppDataManager$1;-><init>(Lcn/nubia/server/appmgmt/AppDataManager;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcn/nubia/server/appmgmt/AppDataManager$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/AppDataManager$2;-><init>(Lcn/nubia/server/appmgmt/AppDataManager;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mLoadBuildAppRunnable:Ljava/lang/Runnable;

    .line 809
    new-instance v0, Lcn/nubia/server/appmgmt/AppDataManager$3;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/AppDataManager$3;-><init>(Lcn/nubia/server/appmgmt/AppDataManager;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mUpgradeAppTableRunnable:Ljava/lang/Runnable;

    .line 837
    new-instance v0, Lcn/nubia/server/appmgmt/AppDataManager$4;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/AppDataManager$4;-><init>(Lcn/nubia/server/appmgmt/AppDataManager;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeGPSTableRunnable:Ljava/lang/Runnable;

    .line 865
    new-instance v0, Lcn/nubia/server/appmgmt/AppDataManager$5;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/AppDataManager$5;-><init>(Lcn/nubia/server/appmgmt/AppDataManager;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeTCPTableRunnable:Ljava/lang/Runnable;

    .line 893
    new-instance v0, Lcn/nubia/server/appmgmt/AppDataManager$6;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/AppDataManager$6;-><init>(Lcn/nubia/server/appmgmt/AppDataManager;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeParamsTableRunnable:Ljava/lang/Runnable;

    .line 921
    new-instance v0, Lcn/nubia/server/appmgmt/AppDataManager$7;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/AppDataManager$7;-><init>(Lcn/nubia/server/appmgmt/AppDataManager;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeActionTableRunnable:Ljava/lang/Runnable;

    .line 140
    iput-object p1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mPM:Landroid/content/pm/PackageManager;

    .line 142
    iput-object p2, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mHandler:Landroid/os/Handler;

    .line 143
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->initXmlOperator()V

    .line 144
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->initData()V

    .line 145
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->initDefaultWhiteList()V

    .line 146
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->initNoFreezeNetworkConnAppList()V

    .line 147
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->initSpecialLinkList()V

    .line 148
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->initObserver()V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/AppDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppDataManager;

    .line 29
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->updateData()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/AppDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppDataManager;

    .line 29
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadBuildApp()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/AppDataManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppDataManager;

    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeParamsTableRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/AppDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppDataManager;

    .line 29
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadStrategyParameter()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/AppDataManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppDataManager;

    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeActionTableRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/AppDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppDataManager;

    .line 29
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadInterceptData()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/AppDataManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppDataManager;

    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/AppDataManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppDataManager;

    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mUpgradeAppTableRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/AppDataManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppDataManager;

    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/AppDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppDataManager;

    .line 29
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadUpgradeAppTable()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/AppDataManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppDataManager;

    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeGPSTableRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/AppDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppDataManager;

    .line 29
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadGpsList()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/AppDataManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppDataManager;

    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeTCPTableRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/AppDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppDataManager;

    .line 29
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadTcpList()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcn/nubia/server/appmgmt/AppDataManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 133
    sget-object v0, Lcn/nubia/server/appmgmt/AppDataManager;->mAppDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/appmgmt/AppDataManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcn/nubia/server/appmgmt/AppDataManager;->mAppDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

    .line 136
    :cond_0
    sget-object v0, Lcn/nubia/server/appmgmt/AppDataManager;->mAppDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

    return-object v0
.end method

.method private initData()V
    .locals 3

    .line 176
    const-string/jumbo v0, "sport_app_list.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 178
    .local v0, "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    monitor-enter v1

    .line 180
    :try_start_0
    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    .line 181
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 183
    .end local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    goto :goto_1

    .line 184
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadUpgradeAppTable()V

    .line 187
    :goto_1
    const-string/jumbo v0, "music_app_list.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 189
    .restart local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 190
    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicAppList:Ljava/util/HashSet;

    monitor-enter v1

    .line 191
    :try_start_1
    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicAppList:Ljava/util/HashSet;

    .line 192
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 194
    .end local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    goto :goto_3

    .line 195
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadUpgradeAppTable()V

    .line 198
    :goto_3
    const-string/jumbo v0, "music_white_app.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicWhiteXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 200
    .restart local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    .line 201
    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicWhiteAppList:Ljava/util/HashSet;

    monitor-enter v1

    .line 202
    :try_start_2
    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicWhiteAppList:Ljava/util/HashSet;

    .line 203
    monitor-exit v1

    goto :goto_4

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 205
    .end local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    :goto_4
    goto :goto_5

    .line 206
    :cond_5
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadUpgradeAppTable()V

    .line 209
    :goto_5
    const-string v0, "freeze_white_list.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 210
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 211
    .restart local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_6

    .line 212
    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteAppList:Ljava/util/HashSet;

    monitor-enter v1

    .line 213
    :try_start_3
    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteAppList:Ljava/util/HashSet;

    .line 214
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 215
    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteAppList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 216
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadUpgradeAppTable()V

    .line 216
    .end local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_6

    .line 214
    .restart local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_3
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v2

    .line 219
    .end local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_6
    :goto_6
    goto :goto_7

    .line 220
    :cond_7
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadUpgradeAppTable()V

    .line 223
    :goto_7
    const-string v0, "gps_white_list.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 225
    .restart local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_8

    .line 226
    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    monitor-enter v1

    .line 227
    :try_start_5
    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    .line 228
    monitor-exit v1

    goto :goto_8

    :catchall_4
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v2

    .line 230
    .end local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_8
    :goto_8
    goto :goto_9

    .line 231
    :cond_9
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadGpsList()V

    .line 234
    :goto_9
    const-string v0, "freeze_tcp_white_list.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 235
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mUnFreezeTcpXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 236
    .restart local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    .line 237
    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    monitor-enter v1

    .line 238
    :try_start_6
    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    .line 239
    monitor-exit v1

    goto :goto_a

    :catchall_5
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v2

    .line 241
    .end local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_a
    :goto_a
    goto :goto_b

    .line 242
    :cond_b
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadTcpList()V

    .line 245
    :goto_b
    const-string v0, "freeze_params_list.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 246
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeParamsXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ParamsXmlOperator;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ParamsXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 247
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_c

    .line 248
    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 249
    :try_start_7
    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    .line 250
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 251
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->initStrategyParams()V

    .line 251
    .end local v0    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_c

    .line 250
    .restart local v0    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_6
    move-exception v2

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v2

    .line 253
    .end local v0    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_c
    :goto_c
    goto :goto_d

    .line 254
    :cond_d
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadStrategyParameter()V

    .line 257
    :goto_d
    const-string v0, "freeze_action_list.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 258
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeActionXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ActionXmlOperator;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ActionXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 259
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_e

    .line 260
    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 261
    :try_start_9
    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    .line 262
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 263
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->initInterceptData()V

    .line 263
    .end local v0    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    goto :goto_e

    .line 262
    .restart local v0    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    :catchall_7
    move-exception v2

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    throw v2

    .line 265
    .end local v0    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    :cond_e
    :goto_e
    goto :goto_f

    .line 266
    :cond_f
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadInterceptData()V

    .line 269
    :goto_f
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mLoadBuildAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 270
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mLoadBuildAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadSensorBlackList()V

    .line 272
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadBuildInAppBlackList()V

    .line 273
    return-void
.end method

.method private initDefaultWhiteList()V
    .locals 2

    .line 594
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mDefaultWhiteList:Ljava/util/HashSet;

    const-string v1, "com.cttl"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 595
    return-void
.end method

.method private initNoFreezeNetworkConnAppList()V
    .locals 2

    .line 644
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mNoFreezeNetworkConnAppList:Ljava/util/HashSet;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mNoFreezeNetworkConnAppList:Ljava/util/HashSet;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mNoFreezeNetworkConnAppList:Ljava/util/HashSet;

    const-string v1, "com.tencent.qqlite"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mNoFreezeNetworkConnAppList:Ljava/util/HashSet;

    const-string v1, "com.tencent.tim"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 648
    return-void
.end method

.method private initObserver()V
    .locals 2

    .line 782
    new-instance v0, Lcn/nubia/server/appmgmt/AppDataManager$UpgradeAppTableObserver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/AppDataManager$UpgradeAppTableObserver;-><init>(Lcn/nubia/server/appmgmt/AppDataManager;Landroid/os/Handler;)V

    .line 783
    new-instance v0, Lcn/nubia/server/appmgmt/AppDataManager$FreezeGPSTableObserver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/AppDataManager$FreezeGPSTableObserver;-><init>(Lcn/nubia/server/appmgmt/AppDataManager;Landroid/os/Handler;)V

    .line 784
    new-instance v0, Lcn/nubia/server/appmgmt/AppDataManager$FreezeTCPTableObserver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/AppDataManager$FreezeTCPTableObserver;-><init>(Lcn/nubia/server/appmgmt/AppDataManager;Landroid/os/Handler;)V

    .line 785
    new-instance v0, Lcn/nubia/server/appmgmt/AppDataManager$FreezeParamsTableObserver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/AppDataManager$FreezeParamsTableObserver;-><init>(Lcn/nubia/server/appmgmt/AppDataManager;Landroid/os/Handler;)V

    .line 786
    new-instance v0, Lcn/nubia/server/appmgmt/AppDataManager$FreezeActionTableObserver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/AppDataManager$FreezeActionTableObserver;-><init>(Lcn/nubia/server/appmgmt/AppDataManager;Landroid/os/Handler;)V

    .line 787
    return-void
.end method

.method private initSpecialLinkList()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSpecialLinkAppList:Ljava/util/HashSet;

    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method private initStrategyParams()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string v1, "adj_hold"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mAdjHoldTime:J

    .line 277
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "music_check"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicCheckTime:J

    .line 278
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string v1, "freeze_again"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeAgainTime:J

    .line 279
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "process_freeze_step"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mProcessFreezeStepTime:J

    .line 280
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "process_unfreeze"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mProcessUnfreezeTime:J

    .line 281
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "process_max_freeze"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mProcessMaxFreezeTime:J

    .line 282
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "process_schedule_throttle"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mProcessScheduleThrottleTime:J

    .line 283
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "traffic_freeze_threshold"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTrafficFreezeThreshold:J

    .line 284
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "traffic_cal_interval"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTrafficCalInterval:J

    .line 285
    return-void
.end method

.method private initXmlOperator()V
    .locals 3

    .line 156
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationXmlOperator;

    invoke-direct {v0}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator;-><init>()V

    .line 157
    .local v0, "fxo":Lcn/nubia/server/appmgmt/ApplicationXmlOperator;
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sport_app_list.xml"

    .line 158
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationXmlOperator;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    .line 159
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "music_app_list.xml"

    .line 160
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationXmlOperator;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    .line 161
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "freeze_white_list.xml"

    .line 162
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationXmlOperator;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    .line 163
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gps_white_list.xml"

    .line 164
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationXmlOperator;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    .line 165
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "freeze_tcp_white_list.xml"

    .line 166
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationXmlOperator;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mUnFreezeTcpXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    .line 167
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ParamsXmlOperator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "freeze_params_list.xml"

    .line 168
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ParamsXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationXmlOperator;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeParamsXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ParamsXmlOperator;

    .line 169
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ActionXmlOperator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "freeze_action_list.xml"

    .line 170
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ActionXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationXmlOperator;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeActionXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ActionXmlOperator;

    .line 171
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "music_white_app.xml"

    .line 172
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationXmlOperator;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicWhiteXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    .line 173
    return-void
.end method

.method public static isNubiaApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 762
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cn.nubia."

    .line 763
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 762
    :goto_0
    return v0
.end method

.method private loadBuildApp()V
    .locals 5

    .line 767
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 768
    .local v0, "buildApp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mPM:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 769
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_2

    .line 770
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 771
    .local v3, "app":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 773
    :cond_0
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 774
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_0

    .line 776
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mBuildAppList:Ljava/util/HashSet;

    monitor-enter v2

    .line 777
    :try_start_0
    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mBuildAppList:Ljava/util/HashSet;

    .line 778
    monitor-exit v2

    .line 779
    return-void

    .line 778
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private loadBuildInAppBlackList()V
    .locals 1

    .line 409
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mBuildInAppBlackList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 411
    return-void
.end method

.method private loadDefaultFreezeWhiteAppsList()V
    .locals 2

    .line 638
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteAppList:Ljava/util/HashSet;

    const-string v1, "com.ludashi.benchmark"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteAppList:Ljava/util/HashSet;

    const-string v1, "com.antutu.ABenchMark"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 640
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteAppList:Ljava/util/HashSet;

    const-string v1, "com.antutu.benchmark.full"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 641
    return-void
.end method

.method private loadDefaultGpsList()V
    .locals 2

    .line 652
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.baidu.navi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 653
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.baidu.BaiduMap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 654
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.autonavi.xmgd.navigator"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 655
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 656
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.cld.nv.h"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.sogou.map.android.maps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 658
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.tencent.map"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 659
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    const-string v1, "cld.navi.mainframe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.tencent.navsns"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 661
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.autonavi.minimap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 662
    return-void
.end method

.method private loadDefaultInterceptData()V
    .locals 2

    .line 684
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 685
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 687
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 688
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 690
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 695
    const/16 v0, 0x480

    iput v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptConfigChangeFlag:I

    .line 697
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptApplicatonThreadList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 698
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptApplicatonThreadList:Ljava/util/HashSet;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSocialAppList:Ljava/util/HashSet;

    const-string v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSocialAppList:Ljava/util/HashSet;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 703
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSocialAppList:Ljava/util/HashSet;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSocialAppList:Ljava/util/HashSet;

    const-string v1, "com.tencent.tim"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mIgnoreSensors:Ljava/util/HashSet;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 708
    return-void
.end method

.method private loadDefaultMusicAppsList()V
    .locals 0

    .line 631
    return-void
.end method

.method private loadDefaultMusicWhiteAppsList()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicWhiteAppList:Ljava/util/HashSet;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 635
    return-void
.end method

.method private loadDefaultSportList()V
    .locals 2

    .line 599
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.hupu.joggers"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 600
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.codoon.gps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.yuedong.sport"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "cn.ledongli.ldl"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.mandian.android.dongdong"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "co.runner.app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.nike.plusgpschina"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 606
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string/jumbo v1, "me.chunyu.Pedometer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.imohoo.shanpao"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 608
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.ffree.Pedometer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "cc.pacer.androidapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.grinasys.weightlossgoogleplay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.endomondo.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.mapmyrun.android2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.fitnesskeeper.runkeeper.pro"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.fitness22.running"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.runtastic.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.sportractive"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.strava"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.hm.health"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.huawei.bone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.lemon.running"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.beastbike.bluegogo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 623
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.cool.coolqi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.mobike.mobikeapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string v1, "com.xiaoming.bike"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    const-string/jumbo v1, "so.ofo.labofo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 627
    return-void
.end method

.method private loadDefaultStrategyParameter()V
    .locals 6

    .line 672
    const-wide/16 v0, 0x2ee0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mAdjHoldTime:J

    .line 673
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicCheckTime:J

    .line 674
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeAgainTime:J

    .line 675
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mProcessFreezeStepTime:J

    .line 676
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mProcessUnfreezeTime:J

    .line 677
    const-wide/32 v4, 0x1b7740

    iput-wide v4, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mProcessMaxFreezeTime:J

    .line 678
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mProcessScheduleThrottleTime:J

    .line 679
    const-wide/32 v0, 0x32000

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTrafficFreezeThreshold:J

    .line 680
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTrafficCalInterval:J

    .line 681
    return-void
.end method

.method private loadDefaultTcpList()V
    .locals 2

    .line 666
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.pb"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 667
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    const-string v1, "com.immomo.momo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 669
    return-void
.end method

.method private loadGpsList()V
    .locals 1

    .line 370
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadNubiaGpsList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadDefaultGpsList()V

    .line 373
    :cond_0
    return-void
.end method

.method private loadInterceptData()V
    .locals 1

    .line 397
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadNubiaInterceptData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadDefaultInterceptData()V

    .line 400
    :cond_0
    return-void
.end method

.method private loadNubiaGpsList()Z
    .locals 8

    .line 478
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 479
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "content://cn.nubia.security.power/freeze_gps_table"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 479
    .local v2, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 480
    if-nez v2, :cond_1

    .line 481
    nop

    .line 493
    if-eqz v2, :cond_0

    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/AppDataManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    :cond_0
    return v0

    .line 483
    :cond_1
    :try_start_1
    const-string/jumbo v4, "pkg_name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 484
    .local v4, "pkgIndex":I
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 485
    .local v5, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v6, -0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 486
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 487
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 488
    .local v6, "pkgName":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 489
    .end local v6    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 490
    :cond_2
    iget-object v6, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 491
    :try_start_2
    iput-object v5, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    .line 492
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 493
    .end local v4    # "pkgIndex":I
    .end local v5    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    :try_start_3
    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/AppDataManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 496
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_3
    nop

    .line 497
    iget-object v7, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    monitor-enter v7

    .line 498
    :try_start_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 499
    monitor-exit v7

    .line 500
    const/4 v0, 0x1

    return v0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 492
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v4    # "pkgIndex":I
    .restart local v5    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v7

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 493
    .end local v4    # "pkgIndex":I
    .end local v5    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v4

    goto :goto_1

    .line 479
    :catch_0
    move-exception v3

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 493
    :goto_1
    if-eqz v2, :cond_4

    :try_start_8
    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/AppDataManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 493
    .end local v2    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v2

    .line 494
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AppDataManager"

    const-string v4, "failed load gps packages list from database"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    return v0
.end method

.method private loadNubiaInterceptData()Z
    .locals 11

    .line 559
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 560
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "content://cn.nubia.security.power/freeze_action_table"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 560
    .local v2, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 561
    if-nez v2, :cond_1

    .line 562
    nop

    .line 582
    if-eqz v2, :cond_0

    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/AppDataManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 562
    :cond_0
    return v0

    .line 564
    :cond_1
    :try_start_1
    const-string/jumbo v4, "type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 565
    .local v4, "typeIndex":I
    const-string v5, "action"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 566
    .local v5, "actionIndex":I
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 567
    .local v6, "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v7, -0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 568
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 569
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 570
    .local v7, "type":Ljava/lang/String;
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 571
    .local v8, "action":Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    .line 572
    .local v9, "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v9, :cond_2

    .line 573
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-object v9, v10

    .line 575
    :cond_2
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-virtual {v6, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "action":Ljava/lang/String;
    .end local v9    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_0

    .line 578
    :cond_3
    iget-object v7, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 579
    :try_start_2
    iput-object v6, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    .line 580
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 581
    :try_start_3
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->initInterceptData()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 582
    .end local v4    # "typeIndex":I
    .end local v5    # "actionIndex":I
    .end local v6    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    if-eqz v2, :cond_4

    :try_start_4
    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/AppDataManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 585
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_4
    nop

    .line 586
    iget-object v4, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 587
    :try_start_5
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeActionXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ActionXmlOperator;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ActionXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 588
    monitor-exit v4

    .line 589
    const/4 v0, 0x1

    return v0

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 580
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v4    # "typeIndex":I
    .restart local v5    # "actionIndex":I
    .restart local v6    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    :catchall_1
    move-exception v8

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v8
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 582
    .end local v4    # "typeIndex":I
    .end local v5    # "actionIndex":I
    .end local v6    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    :catchall_2
    move-exception v4

    goto :goto_1

    .line 560
    :catch_0
    move-exception v3

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 582
    :goto_1
    if-eqz v2, :cond_5

    :try_start_9
    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/AppDataManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 582
    .end local v2    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v2

    .line 583
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AppDataManager"

    const-string v4, "failed load intercept data from database"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    return v0
.end method

.method private loadNubiaStrategyParameter()Z
    .locals 10

    .line 530
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 531
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "content://cn.nubia.security.power/freeze_params_table"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 531
    .local v2, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 532
    if-nez v2, :cond_1

    .line 533
    nop

    .line 548
    if-eqz v2, :cond_0

    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/AppDataManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 533
    :cond_0
    return v0

    .line 535
    :cond_1
    :try_start_1
    const-string/jumbo v4, "strategy"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 536
    .local v4, "strategyIndex":I
    const-string/jumbo v5, "params"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 537
    .local v5, "paramsIndex":I
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 538
    .local v6, "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v7, -0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 539
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 540
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 541
    .local v7, "strategy":Ljava/lang/String;
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 542
    .local v8, "params":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .end local v7    # "strategy":Ljava/lang/String;
    .end local v8    # "params":I
    goto :goto_0

    .line 544
    :cond_2
    iget-object v7, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 545
    :try_start_2
    iput-object v6, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    .line 546
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 547
    :try_start_3
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->initStrategyParams()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 548
    .end local v4    # "strategyIndex":I
    .end local v5    # "paramsIndex":I
    .end local v6    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_3

    :try_start_4
    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/AppDataManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 551
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_3
    nop

    .line 552
    iget-object v4, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 553
    :try_start_5
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeParamsXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ParamsXmlOperator;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ParamsXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 554
    monitor-exit v4

    .line 555
    const/4 v0, 0x1

    return v0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 546
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v4    # "strategyIndex":I
    .restart local v5    # "paramsIndex":I
    .restart local v6    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v8

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v8
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 548
    .end local v4    # "strategyIndex":I
    .end local v5    # "paramsIndex":I
    .end local v6    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_2
    move-exception v4

    goto :goto_1

    .line 531
    :catch_0
    move-exception v3

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 548
    :goto_1
    if-eqz v2, :cond_4

    :try_start_9
    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/AppDataManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 548
    .end local v2    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v2

    .line 549
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AppDataManager"

    const-string v4, "failed load strategy parameters from database"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    return v0
.end method

.method private loadNubiaTcpList()Z
    .locals 8

    .line 504
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 505
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "content://cn.nubia.security.power/freeze_tcp_table"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 505
    .local v2, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 506
    if-nez v2, :cond_1

    .line 507
    nop

    .line 519
    if-eqz v2, :cond_0

    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/AppDataManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 507
    :cond_0
    return v0

    .line 509
    :cond_1
    :try_start_1
    const-string/jumbo v4, "pkg_name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 510
    .local v4, "pkgIndex":I
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 511
    .local v5, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v6, -0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 512
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 513
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 514
    .local v6, "pkgName":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 515
    .end local v6    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 516
    :cond_2
    iget-object v6, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 517
    :try_start_2
    iput-object v5, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    .line 518
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 519
    .end local v4    # "pkgIndex":I
    .end local v5    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    :try_start_3
    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/AppDataManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 522
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_3
    nop

    .line 523
    iget-object v7, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    monitor-enter v7

    .line 524
    :try_start_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mUnFreezeTcpXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 525
    monitor-exit v7

    .line 526
    const/4 v0, 0x1

    return v0

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 518
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v4    # "pkgIndex":I
    .restart local v5    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v7

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 519
    .end local v4    # "pkgIndex":I
    .end local v5    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v4

    goto :goto_1

    .line 505
    :catch_0
    move-exception v3

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 519
    :goto_1
    if-eqz v2, :cond_4

    :try_start_8
    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/AppDataManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 519
    .end local v2    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v2

    .line 520
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AppDataManager"

    const-string v4, "failed load tcp packages list from database"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    return v0
.end method

.method private loadSensorBlackList()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSensorBlackList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 404
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSensorBlackList:Ljava/util/HashSet;

    const-string v1, "cn.opda.a.phonoalbumshoushou"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSensorBlackList:Ljava/util/HashSet;

    const-string v1, "com.qihoo360.mobilesafe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSensorBlackList:Ljava/util/HashSet;

    const-string v1, "com.netease.onmyoji"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method private loadStrategyParameter()V
    .locals 1

    .line 391
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadNubiaStrategyParameter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadDefaultStrategyParameter()V

    .line 394
    :cond_0
    return-void
.end method

.method private loadTcpList()V
    .locals 1

    .line 385
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadNubiaTcpList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadDefaultTcpList()V

    .line 388
    :cond_0
    return-void
.end method

.method private loadUpgradeAppTable()V
    .locals 1

    .line 376
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadUpgradeAppTableList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadDefaultSportList()V

    .line 378
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadDefaultMusicAppsList()V

    .line 379
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadDefaultMusicWhiteAppsList()V

    .line 380
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadDefaultFreezeWhiteAppsList()V

    .line 382
    :cond_0
    return-void
.end method

.method private loadUpgradeAppTableList()Z
    .locals 18

    .line 414
    move-object/from16 v1, p0

    iget-object v0, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 415
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string v9, "SPORT_APP"

    .line 416
    .local v9, "sportApp":Ljava/lang/String;
    const-string v10, "BLACK_MUSIC_APP"

    .line 417
    .local v10, "musicApp":Ljava/lang/String;
    const-string v11, "WHITE_MUSIC_APP"

    .line 418
    .local v11, "musicWhiteApp":Ljava/lang/String;
    const-string v0, "NO_FREEZER_APP"

    move-object v12, v0

    .line 420
    .local v12, "whiteFreezeApp":Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_0
    const-string v0, "content://cn.nubia.security.power/upgrade_app_table"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .local v2, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 421
    if-nez v2, :cond_1

    .line 422
    nop

    .line 458
    if-eqz v2, :cond_0

    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/AppDataManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 422
    :cond_0
    return v13

    .line 424
    :cond_1
    :try_start_1
    const-string/jumbo v0, "pkg_name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 425
    .local v4, "pkgIndex":I
    const-string v0, "app_type"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .line 426
    .local v5, "typeIndex":I
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v6, v0

    .line 427
    .local v6, "sportTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v7, v0

    .line 428
    .local v7, "musicTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v14, v0

    .line 429
    .local v14, "musicWhiteTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v15, v0

    .line 430
    .local v15, "freezeWhiteTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, -0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 431
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 432
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "appType":Ljava/lang/String;
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 434
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_2
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 437
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_3
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 440
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_4
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 443
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v0    # "appType":Ljava/lang/String;
    :cond_5
    nop

    .line 431
    const/4 v13, 0x0

    goto :goto_0

    .line 446
    :cond_6
    iget-object v13, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    monitor-enter v13
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 447
    :try_start_2
    iput-object v6, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    .line 448
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 449
    :try_start_3
    iget-object v13, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicAppList:Ljava/util/HashSet;

    monitor-enter v13
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 450
    :try_start_4
    iput-object v7, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicAppList:Ljava/util/HashSet;

    .line 451
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 452
    :try_start_5
    iget-object v13, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicWhiteAppList:Ljava/util/HashSet;

    monitor-enter v13
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 453
    :try_start_6
    iput-object v14, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicWhiteAppList:Ljava/util/HashSet;

    .line 454
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 455
    :try_start_7
    iget-object v13, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteAppList:Ljava/util/HashSet;

    monitor-enter v13
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 456
    :try_start_8
    iput-object v15, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteAppList:Ljava/util/HashSet;

    .line 457
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 458
    .end local v4    # "pkgIndex":I
    .end local v5    # "typeIndex":I
    .end local v6    # "sportTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "musicTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14    # "musicWhiteTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15    # "freezeWhiteTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_7

    :try_start_9
    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/AppDataManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 461
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_7
    nop

    .line 462
    iget-object v2, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    monitor-enter v2

    .line 463
    :try_start_a
    iget-object v0, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mSportXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    iget-object v3, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 464
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 465
    iget-object v3, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicAppList:Ljava/util/HashSet;

    monitor-enter v3

    .line 466
    :try_start_b
    iget-object v0, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    iget-object v2, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicAppList:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 467
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 468
    iget-object v2, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicWhiteAppList:Ljava/util/HashSet;

    monitor-enter v2

    .line 469
    :try_start_c
    iget-object v0, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicWhiteXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    iget-object v3, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicWhiteAppList:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 470
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 471
    iget-object v3, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteAppList:Ljava/util/HashSet;

    monitor-enter v3

    .line 472
    :try_start_d
    iget-object v0, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteXmlOperator:Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;

    iget-object v2, v1, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteAppList:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 473
    monitor-exit v3

    .line 474
    const/4 v0, 0x1

    return v0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v0

    .line 470
    :catchall_1
    move-exception v0

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v0

    .line 467
    :catchall_2
    move-exception v0

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v0

    .line 464
    :catchall_3
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v0

    .line 457
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v4    # "pkgIndex":I
    .restart local v5    # "typeIndex":I
    .restart local v6    # "sportTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v7    # "musicTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v14    # "musicWhiteTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v15    # "freezeWhiteTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_4
    move-exception v0

    :try_start_11
    monitor-exit v13
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 454
    :catchall_5
    move-exception v0

    :try_start_13
    monitor-exit v13
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw v0
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 451
    :catchall_6
    move-exception v0

    :try_start_15
    monitor-exit v13
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    throw v0
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 448
    :catchall_7
    move-exception v0

    :try_start_17
    monitor-exit v13
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :try_start_18
    throw v0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 458
    .end local v4    # "pkgIndex":I
    .end local v5    # "typeIndex":I
    .end local v6    # "sportTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "musicTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14    # "musicWhiteTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15    # "freezeWhiteTemp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_8
    move-exception v0

    goto :goto_1

    .line 420
    :catch_0
    move-exception v0

    move-object v3, v0

    :try_start_19
    throw v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 458
    :goto_1
    if-eqz v2, :cond_8

    :try_start_1a
    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/AppDataManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_8
    throw v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1

    .line 458
    .end local v2    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AppDataManager"

    const-string v3, "failed load sport and music packages list from database"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    const/4 v2, 0x0

    return v2
.end method

.method private updateData()V
    .locals 0

    .line 362
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadGpsList()V

    .line 363
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadTcpList()V

    .line 364
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadStrategyParameter()V

    .line 365
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadInterceptData()V

    .line 366
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadUpgradeAppTable()V

    .line 367
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 930
    const-string v0, "System app black list:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mBuildInAppBlackList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 932
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 934
    :cond_0
    const-string/jumbo v0, "tcp unfreeze when connect list:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 936
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 937
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_1

    .line 938
    :cond_1
    const-string v0, "gps unfreeze when use list:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 940
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 941
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_2

    .line 942
    :cond_2
    const-string v0, "gps freeze when use sport list:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 944
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_3

    .line 946
    :cond_3
    const-string/jumbo v0, "music freeze when use music list:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicAppList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 948
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_4

    .line 950
    :cond_4
    const-string/jumbo v0, "music freeze when use music white list:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicWhiteAppList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 952
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_5

    .line 954
    :cond_5
    const-string v0, "freeze white app list:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteAppList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 956
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_6

    .line 958
    :cond_6
    return-void
.end method

.method public getBuildInAppBlackList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mBuildInAppBlackList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getDefaultWhiteList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mDefaultWhiteList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getFreezeWhiteAppList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeWhiteAppList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getIgnoreSensors()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 750
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mIgnoreSensors:Ljava/util/HashSet;

    return-object v0
.end method

.method public getMusicAppList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicAppList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getMusicWhiteAppList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicWhiteAppList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getNoFreezeGpsAppList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mGpsAppList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getNoFreezeNetworkConnAppList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mNoFreezeNetworkConnAppList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getSocialAppList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSocialAppList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getSpecialLinkAppList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSpecialLinkAppList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getSportAppList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSportAppList:Ljava/util/HashSet;

    return-object v0
.end method

.method public initInterceptData()V
    .locals 7

    .line 288
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    const-string v1, "broadcast"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    .line 289
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    .line 292
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "social_app"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSocialAppList:Ljava/util/HashSet;

    .line 293
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSocialAppList:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 294
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSocialAppList:Ljava/util/HashSet;

    .line 296
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    const-string v1, "config_changed"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 297
    .local v0, "configChangedList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 298
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 300
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    const-string v2, "app_thread"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 301
    .local v1, "applicatonThreadList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v1, :cond_3

    .line 302
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v1, v2

    .line 304
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    const-string v3, "ignore_sensors"

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 305
    .local v2, "ignoreSensorsList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v2, :cond_4

    .line 306
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v2, v3

    .line 310
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 311
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 312
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 313
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptConfigChangeFlag:I

    .line 314
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 315
    :cond_5
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 316
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 317
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 318
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptApplicatonThreadList:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_1

    .line 320
    :cond_6
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 321
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 322
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 323
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mIgnoreSensors:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_2

    .line 325
    :cond_7
    return-void
.end method

.method public isBuildInApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 754
    invoke-static {p1}, Lcn/nubia/server/appmgmt/AppDataManager;->isNubiaApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/AppDataManager;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isDontFreezeWhenTCPConnect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInSensorBlackList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 345
    if-eqz p1, :cond_1

    .line 346
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mSensorBlackList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 347
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    const/4 v0, 0x1

    return v0

    .line 350
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 352
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isInterceptApplicationThreadTransaction(I)Z
    .locals 2
    .param p1, "transaction"    # I

    .line 337
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptApplicatonThreadList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInterceptBroadcast(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInterceptConfigChange(I)Z
    .locals 1
    .param p1, "config"    # I

    .line 332
    iget v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptConfigChangeFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mInterceptConfigChangeFlag:I

    not-int v0, v0

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystemApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 758
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mBuildAppList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadData()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method
