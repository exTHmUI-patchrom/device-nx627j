.class public final Lcn/nubia/server/appmgmt/ApplicationManagerService;
.super Lcn/nubia/server/NubiaSystemService;
.source "ApplicationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/ApplicationManagerService$AppLearningRecommendStub;,
        Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;
    }
.end annotation


# static fields
.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "support_game_name"

.field private static final CONTENT_URI_GAMEPI:Landroid/net/Uri;

.field private static final DATA_SCHEME:Ljava/lang/String; = "package"

.field private static final DATA_SSP:Ljava/lang/String; = "cn.nubia.security2"

.field static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ApplicationManagerService"


# instance fields
.field private mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

.field private mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

.field private mAppBehaviorController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

.field private mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mAppLearningCallback:Lnubia/os/IAppLearningCallback;

.field private mAppLearningProcessList:Ljava/util/List;

.field private mAppLearningRecommendCallback:Lnubia/os/IAppLearningRecommendCallback;

.field private mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

.field private mApplicationDynamicController:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

.field private mApplicationRecordController:Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

.field private mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;

.field private mBadAppController:Lcn/nubia/server/appmgmt/BadAppController;

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mCABCController:Lcn/nubia/server/appmgmt/CABCController;

.field private mContext:Landroid/content/Context;

.field private mCtsController:Lcn/nubia/server/appmgmt/ApplicationCTSController;

.field private mCursor:Landroid/database/Cursor;

.field private mDataCollectionController:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

.field private mEyeProtectionController:Lcn/nubia/server/appmgmt/EyeProtectionController;

.field private mFreezeCallback:Lnubia/os/IFreezeCallback;

.field private mGameModeController:Lcn/nubia/server/appmgmt/game/GameModeController;

.field private mGamePerformanceModeController:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

.field private mGamePiUpgradeReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mIsGamePiLaunched:Z

.field private mLightEffectController:Lcn/nubia/server/appmgmt/LightEffectController;

.field private mLogSwitchReceiver:Lcn/nubia/server/appmgmt/LogSwitchReceiver;

.field private mModuleDataCollectionController:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

.field private mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

.field private mNBLogSwitcher:Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;

.field private mNetWorkDetectorController:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

.field private mNubiaFullScreenController:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

.field private mNubiaHighlightsProducer:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPermissionMonitorActivityState:Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

.field private mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

.field private mPreLaunchController:Lcn/nubia/server/appmgmt/PreLaunchController;

.field private mPressSensorController:Lcn/nubia/server/appmgmt/PressSensorController;

.field private mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

.field private mScreenSwitchController:Lcn/nubia/server/appmgmt/ScreenSwitchController;

.field private final mStub:Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;

.field private mSyncController:Lcn/nubia/server/appmgmt/SyncController;

.field private mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;

.field private mThread:Landroid/os/HandlerThread;

.field private mVibration4DController:Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    const-string v0, "content://cn.nubia.gamepi/gamepi"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->CONTENT_URI_GAMEPI:Landroid/net/Uri;

    .line 97
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    sput-boolean v0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 165
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCursor:Landroid/database/Cursor;

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mIsGamePiLaunched:Z

    .line 103
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ApplicationManagerIO"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mThread:Landroid/os/HandlerThread;

    .line 124
    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    .line 125
    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppLearningCallback:Lnubia/os/IAppLearningCallback;

    .line 141
    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNubiaFullScreenController:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 149
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService$1;-><init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNBLogSwitcher:Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;

    .line 299
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService$2;-><init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$3;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService$3;-><init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 1527
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$AppLearningRecommendStub;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService$AppLearningRecommendStub;-><init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppLearningRecommendCallback:Lnubia/os/IAppLearningRecommendCallback;

    .line 1571
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$4;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService$4;-><init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mGamePiUpgradeReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 167
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    .line 168
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    .line 169
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;-><init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mStub:Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;

    .line 170
    const-class v0, Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-virtual {p0, v0, p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->updateAllControllersData()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNubiaHighlightsProducer:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPermissionMonitorActivityState:Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mVibration4DController:Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppBehaviorController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mGameModeController:Lcn/nubia/server/appmgmt/game/GameModeController;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mGamePerformanceModeController:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    return-object v0
.end method

.method static synthetic access$1800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/EyeProtectionController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mEyeProtectionController:Lcn/nubia/server/appmgmt/EyeProtectionController;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationRecordController:Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

    return-object v0
.end method

.method static synthetic access$2100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LightEffectController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mLightEffectController:Lcn/nubia/server/appmgmt/LightEffectController;

    return-object v0
.end method

.method static synthetic access$2200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SyncController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    return-object v0
.end method

.method static synthetic access$2300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NetWorkDetectorController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNetWorkDetectorController:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    return-object v0
.end method

.method static synthetic access$2402(Lcn/nubia/server/appmgmt/ApplicationManagerService;Lnubia/os/IFreezeCallback;)Lnubia/os/IFreezeCallback;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;
    .param p1, "x1"    # Lnubia/os/IFreezeCallback;

    .line 86
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    return-object p1
.end method

.method static synthetic access$2500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lnubia/os/IAppLearningCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppLearningCallback:Lnubia/os/IAppLearningCallback;

    return-object v0
.end method

.method static synthetic access$2502(Lcn/nubia/server/appmgmt/ApplicationManagerService;Lnubia/os/IAppLearningCallback;)Lnubia/os/IAppLearningCallback;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;
    .param p1, "x1"    # Lnubia/os/IAppLearningCallback;

    .line 86
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppLearningCallback:Lnubia/os/IAppLearningCallback;

    return-object p1
.end method

.method static synthetic access$2600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PreLaunchController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPreLaunchController:Lcn/nubia/server/appmgmt/PreLaunchController;

    return-object v0
.end method

.method static synthetic access$2700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lnubia/os/IAppLearningRecommendCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppLearningRecommendCallback:Lnubia/os/IAppLearningRecommendCallback;

    return-object v0
.end method

.method static synthetic access$2800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppLearningProcessList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2802(Lcn/nubia/server/appmgmt/ApplicationManagerService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;
    .param p1, "x1"    # Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppLearningProcessList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ScreenSwitchController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mScreenSwitchController:Lcn/nubia/server/appmgmt/ScreenSwitchController;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/ApplicationManagerService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->startGamePiService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PressSensorController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPressSensorController:Lcn/nubia/server/appmgmt/PressSensorController;

    return-object v0
.end method

.method static synthetic access$3100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/BadAppController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mBadAppController:Lcn/nubia/server/appmgmt/BadAppController;

    return-object v0
.end method

.method static synthetic access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mDataCollectionController:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    return-object v0
.end method

.method static synthetic access$3300(Lcn/nubia/server/appmgmt/ApplicationManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->dumpApplicationManagerService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    return-object v0
.end method

.method static synthetic access$3500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mModuleDataCollectionController:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    return-object v0
.end method

.method static synthetic access$3600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationCTSController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCtsController:Lcn/nubia/server/appmgmt/ApplicationCTSController;

    return-object v0
.end method

.method static synthetic access$3700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNubiaFullScreenController:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    return-object v0
.end method

.method static synthetic access$3800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationDynamicController:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/server/appmgmt/ApplicationManagerService;Lcn/nubia/server/appmgmt/LogSwitchReceiver;)Lcn/nubia/server/appmgmt/LogSwitchReceiver;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;
    .param p1, "x1"    # Lcn/nubia/server/appmgmt/LogSwitchReceiver;

    .line 86
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mLogSwitchReceiver:Lcn/nubia/server/appmgmt/LogSwitchReceiver;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNBLogSwitcher:Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPushController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;

    return-object v0
.end method

.method private static creatMkdirs(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "pathname"    # Ljava/lang/String;

    .line 1430
    if-nez p0, :cond_0

    .line 1431
    const/4 v0, 0x0

    return-object v0

    .line 1433
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1434
    .local v0, "parent":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1435
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1437
    :cond_1
    return-object v0
.end method

.method private createAllControllers()V
    .locals 7

    .line 212
    new-instance v0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPermissionMonitorActivityState:Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    .line 213
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/SysStateProducer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;

    .line 214
    new-instance v0, Lcn/nubia/server/appmgmt/BadAppController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/BadAppController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mBadAppController:Lcn/nubia/server/appmgmt/BadAppController;

    .line 215
    new-instance v0, Lcn/nubia/server/appmgmt/LightEffectController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/LightEffectController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mLightEffectController:Lcn/nubia/server/appmgmt/LightEffectController;

    .line 216
    new-instance v0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    invoke-direct {v0}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationDynamicController:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    .line 218
    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mPowerManageFeature:Z

    if-eqz v0, :cond_1

    .line 219
    new-instance v0, Lcn/nubia/server/appmgmt/AppLevelController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/AppLevelController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    .line 220
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/appmgmt/AppLevelController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    .line 221
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/ApplicationPowerController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/appmgmt/AppLevelController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .line 222
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPushController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/ApplicationPushController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/appmgmt/AppLevelController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    .line 223
    new-instance v0, Lcn/nubia/server/appmgmt/SyncController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/SyncController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/appmgmt/AppLevelController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    .line 224
    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/MotionDozeController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 225
    new-instance v0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNetWorkDetectorController:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    .line 226
    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mCABCFeature:Z

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lcn/nubia/server/appmgmt/CABCController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/CABCController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    .line 229
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationUtils;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/ApplicationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;

    .line 230
    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mFreezeFeature:Z

    if-eqz v0, :cond_1

    .line 231
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lnubia/os/IFreezeCallback;Lcn/nubia/server/appmgmt/AppLevelController;Lcn/nubia/server/appmgmt/ApplicationUtils;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 232
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationCTSController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationCTSController;-><init>(Landroid/content/Context;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCtsController:Lcn/nubia/server/appmgmt/ApplicationCTSController;

    .line 236
    :cond_1
    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isSupportRedMagic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    new-instance v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNubiaHighlightsProducer:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    .line 242
    :cond_2
    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mBehaviorDetectionFeature:Z

    if-eqz v0, :cond_4

    .line 243
    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mColorStatusBarFeature:Z

    if-eqz v0, :cond_3

    .line 244
    new-instance v0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppBehaviorController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    .line 246
    :cond_3
    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mDataCollectionFeature:Z

    if-eqz v0, :cond_4

    .line 247
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mDataCollectionController:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 251
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    if-eqz v0, :cond_5

    .line 252
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppBehaviorController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->setAppBehaviorController(Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;)V

    .line 254
    :cond_5
    new-instance v0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    .line 255
    new-instance v0, Lcn/nubia/server/appmgmt/PreLaunchController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppLearningCallback:Lnubia/os/IAppLearningCallback;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppBehaviorController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/server/appmgmt/PreLaunchController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lnubia/os/IAppLearningCallback;Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPreLaunchController:Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 256
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mGameModeController:Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 257
    new-instance v0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mGamePerformanceModeController:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 258
    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mVibration4DFeature:Z

    if-eqz v0, :cond_6

    .line 259
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4DControllerFactory;->createVibration4DController(Landroid/content/Context;)Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mVibration4DController:Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;

    .line 262
    :cond_6
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "nubia_screen_switch_feature"

    invoke-static {v1}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 263
    new-instance v0, Lcn/nubia/server/appmgmt/EyeProtectionController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/EyeProtectionController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mEyeProtectionController:Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 266
    :cond_7
    new-instance v0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationRecordController:Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    .line 268
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mModuleDataCollectionController:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    .line 269
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 270
    new-instance v0, Lcn/nubia/server/appmgmt/ScreenSwitchController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/ScreenSwitchController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mScreenSwitchController:Lcn/nubia/server/appmgmt/ScreenSwitchController;

    .line 272
    :cond_8
    new-instance v0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNubiaFullScreenController:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 273
    invoke-static {}, Lnubia/os/presssensor/PressSensorFeatureConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 274
    new-instance v0, Lcn/nubia/server/appmgmt/PressSensorController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/PressSensorController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPressSensorController:Lcn/nubia/server/appmgmt/PressSensorController;

    .line 276
    :cond_9
    return-void
.end method

.method private static createFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "child"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1441
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1442
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1443
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1445
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1446
    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1447
    return-object v0
.end method

.method private dumpApplicationManagerService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1330
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump meminfo from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1332
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1335
    return-void

    .line 1338
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1339
    .local v1, "opti":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_f

    .line 1340
    aget-object v2, p3, v1

    .line 1341
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_1

    .line 1342
    goto/16 :goto_4

    .line 1344
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1345
    const-string v3, "-list"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1346
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->dumpListArray(Ljava/io/PrintWriter;)V

    goto/16 :goto_3

    .line 1347
    :cond_2
    const-string v3, "-debug"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1348
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->dumpDebug(Ljava/io/PrintWriter;)V

    goto/16 :goto_3

    .line 1349
    :cond_3
    const-string v3, "-freeze"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1350
    invoke-direct {p0, p2, p3, v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->dumpFreeze(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1351
    :cond_4
    const-string v3, "-detection"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1352
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppBehaviorController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    if-eqz v3, :cond_e

    .line 1353
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppBehaviorController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    invoke-virtual {v3, p2, p3, v1}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1355
    :cond_5
    const-string v3, "-security"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1356
    sget-boolean v3, Lcn/nubia/server/appmgmt/ApplicationManagerService;->DEBUG:Z

    if-eqz v3, :cond_e

    .line 1357
    new-instance v3, Landroid/content/Intent;

    const-string v4, "cn.nubia.securuty.DUMP_APP_LIST"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1358
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1359
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    goto/16 :goto_3

    .line 1360
    :cond_7
    const-string v3, "-kill"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1361
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_e

    .line 1362
    array-length v3, p3

    if-lt v1, v3, :cond_8

    return-void

    .line 1364
    :cond_8
    aget-object v3, p3, v1

    .line 1365
    .local v3, "cmd":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "cn.nubia.securuty.KILL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1366
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "enable"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1367
    const-string/jumbo v5, "value"

    const-string v6, "enable"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1368
    :cond_9
    const-string v5, "disable"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1369
    const-string/jumbo v5, "value"

    const-string v6, "disable"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1371
    :cond_a
    :goto_1
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1372
    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1374
    .end local v3    # "cmd":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_b
    goto :goto_3

    .line 1375
    :cond_c
    const-string v3, "-screenshot"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1377
    :try_start_0
    invoke-static {p3}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->screenshot([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    .end local v2    # "opt":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 1378
    .restart local v2    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1379
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ApplicationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "screenshot error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1380
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 1382
    :cond_d
    const-string v3, "-subscreenshot"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1384
    :try_start_1
    invoke-static {p3}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->subScreenshot([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1388
    goto :goto_3

    .line 1385
    :catch_1
    move-exception v3

    .line 1386
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v4, "ApplicationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subscreenshot error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1390
    .end local v2    # "opt":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_e
    :goto_3
    goto/16 :goto_0

    .line 1391
    :cond_f
    :goto_4
    return-void
.end method

.method private dumpDebug(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1516
    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1517
    const-string v0, "ApplicationManagerService has already set to debug status."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1519
    :cond_0
    sput-boolean v1, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->DEBUG:Z

    .line 1520
    const-string v0, "Set to debug successful."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    :goto_0
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->setDebugLogEnabled(Z)V

    .line 1523
    const-string v0, "All controllers are already on the debug mode."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1524
    return-void
.end method

.method private dumpFreeze(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "next"    # I

    .line 1540
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 1543
    :cond_0
    return-void
.end method

.method private dumpListArray(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1471
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 1474
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    if-eqz v0, :cond_1

    .line 1475
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationPushController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 1477
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    if-eqz v0, :cond_2

    .line 1478
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 1480
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    if-eqz v0, :cond_3

    .line 1481
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/SyncController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 1483
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    if-eqz v0, :cond_4

    .line 1484
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 1486
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;

    if-eqz v0, :cond_5

    .line 1487
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/SysStateProducer;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 1489
    :cond_5
    return-void
.end method

.method private static getFormatTime()Ljava/lang/String;
    .locals 3

    .line 1451
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1452
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1453
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1454
    .local v1, "format":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private registerBootReceiver()V
    .locals 3

    .line 337
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 338
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 310
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 311
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 313
    const-string v1, "cn.nubia.security2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 314
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    return-void
.end method

.method private static saveScreenshot(Ljava/io/File;III)V
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "builtInDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1458
    const-string v0, "android.view.SurfaceControl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1459
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v1, "screenshotForAOD"

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1460
    .local v1, "m":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 1461
    .local v2, "screenBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1462
    .local v3, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1463
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1464
    .local v4, "bytes":[B
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1465
    .local v5, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v5, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1466
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 1467
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 1468
    return-void
.end method

.method private static screenshot([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1394
    const-string v0, "ApplicationManagerService"

    const-string/jumbo v1, "screenshot"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 1398
    :cond_0
    const/4 v0, 0x1

    aget-object v0, p0, v0

    .line 1399
    .local v0, "pathname":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, p0, v1

    .line 1401
    .local v1, "builtInDisplayId":Ljava/lang/String;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->creatMkdirs(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1402
    .local v2, "parent":Ljava/io/File;
    if-nez v2, :cond_1

    .line 1403
    return-void

    .line 1405
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->getFormatTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_screenshot.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1406
    .local v3, "screenshotName":Ljava/lang/String;
    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->createFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1407
    .local v4, "file":Ljava/io/File;
    const-string v5, "ApplicationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "screenshot path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const/16 v5, 0x438

    const/16 v6, 0x924

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->saveScreenshot(Ljava/io/File;III)V

    .line 1409
    return-void

    .line 1396
    .end local v0    # "pathname":Ljava/lang/String;
    .end local v1    # "builtInDisplayId":Ljava/lang/String;
    .end local v2    # "parent":Ljava/io/File;
    .end local v3    # "screenshotName":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :cond_2
    :goto_0
    return-void
.end method

.method private setDebugLogEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1492
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    if-eqz v0, :cond_0

    .line 1493
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->setDebugLogEnabled(Z)V

    .line 1495
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    if-eqz v0, :cond_1

    .line 1496
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/SyncController;->setDebugLogEnabled(Z)V

    .line 1498
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    if-eqz v0, :cond_2

    .line 1499
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->setDebugLogEnabled(Z)V

    .line 1501
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

    if-eqz v0, :cond_3

    .line 1502
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/MotionDozeController;->setDebugLogEnabled(Z)V

    .line 1504
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;

    if-eqz v0, :cond_4

    .line 1505
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/SysStateProducer;->setDebugLogEnabled(Z)V

    .line 1507
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNubiaHighlightsProducer:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    if-eqz v0, :cond_5

    .line 1508
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNubiaHighlightsProducer:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->setDebugLogEnabled(Z)V

    .line 1510
    :cond_5
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCtsController:Lcn/nubia/server/appmgmt/ApplicationCTSController;

    if-eqz v0, :cond_6

    .line 1511
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCtsController:Lcn/nubia/server/appmgmt/ApplicationCTSController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationCTSController;->setDebugLogEnabled(Z)V

    .line 1513
    :cond_6
    return-void
.end method

.method private startGamePiService(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 1546
    if-nez p1, :cond_0

    return-void

    .line 1547
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCursor:Landroid/database/Cursor;

    .line 1548
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1549
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "support_game_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 1552
    .local v3, "selections":[Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    sget-object v2, Lcn/nubia/server/appmgmt/ApplicationManagerService;->CONTENT_URI_GAMEPI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCursor:Landroid/database/Cursor;

    .line 1553
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 1564
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mIsGamePiLaunched:Z

    if-eqz v0, :cond_1

    .line 1565
    iput-boolean v8, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mIsGamePiLaunched:Z

    .line 1566
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mGamePiUpgradeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1553
    :cond_1
    return-void

    .line 1555
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1556
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1557
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1558
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mGamePiUpgradeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v1, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mIsGamePiLaunched:Z

    .line 1560
    const-string v0, "ApplicationManagerService"

    const-string/jumbo v2, "succeed in launching gamepi service."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1564
    .end local v1    # "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mIsGamePiLaunched:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1561
    :catch_0
    move-exception v0

    .line 1562
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "ApplicationManagerService"

    const-string v2, "failed to start gamepi service."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1564
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mIsGamePiLaunched:Z

    if-eqz v0, :cond_3

    .line 1565
    :goto_0
    iput-boolean v8, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mIsGamePiLaunched:Z

    .line 1566
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mGamePiUpgradeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1569
    :cond_3
    return-void

    .line 1564
    :goto_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mIsGamePiLaunched:Z

    if-eqz v1, :cond_4

    .line 1565
    iput-boolean v8, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mIsGamePiLaunched:Z

    .line 1566
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mGamePiUpgradeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    throw v0
.end method

.method private static subScreenshot([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1412
    const-string v0, "ApplicationManagerService"

    const-string/jumbo v1, "subScreenshot"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 1416
    :cond_0
    const/4 v0, 0x1

    aget-object v0, p0, v0

    .line 1417
    .local v0, "pathname":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, p0, v1

    .line 1419
    .local v1, "builtInDisplayId":Ljava/lang/String;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->creatMkdirs(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1420
    .local v2, "parent":Ljava/io/File;
    if-nez v2, :cond_1

    .line 1421
    return-void

    .line 1423
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->getFormatTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_subscreenshot.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1424
    .local v3, "screenshotName":Ljava/lang/String;
    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->createFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1425
    .local v4, "file":Ljava/io/File;
    const-string v5, "ApplicationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subScreenshot path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const/16 v5, 0x2d0

    const/16 v6, 0x5f0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->saveScreenshot(Ljava/io/File;III)V

    .line 1427
    return-void

    .line 1414
    .end local v0    # "pathname":Ljava/lang/String;
    .end local v1    # "builtInDisplayId":Ljava/lang/String;
    .end local v2    # "parent":Ljava/io/File;
    .end local v3    # "screenshotName":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :cond_2
    :goto_0
    return-void
.end method

.method private updateAllControllersData()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->updateNubiaData()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->updateNubiaData()V

    .line 285
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/CABCController;->updateNubiaData()V

    .line 288
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    if-eqz v0, :cond_3

    .line 289
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->updateNubiaData()V

    .line 291
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    if-eqz v0, :cond_4

    .line 292
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->updateNubiaData()V

    .line 294
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mGameModeController:Lcn/nubia/server/appmgmt/game/GameModeController;

    if-eqz v0, :cond_5

    .line 295
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mGameModeController:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->updateNubiaData()V

    .line 297
    :cond_5
    return-void
.end method


# virtual methods
.method public adjustAppWindowSize(Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "screenOrientation"    # I
    .param p3, "screenDisplayFrame"    # Landroid/graphics/Rect;
    .param p4, "navBarContentFrame"    # Landroid/graphics/Rect;
    .param p5, "statusBarContentFrame"    # Landroid/graphics/Rect;
    .param p6, "parentFrame"    # Landroid/graphics/Rect;
    .param p7, "displayFrame"    # Landroid/graphics/Rect;
    .param p8, "contentFrame"    # Landroid/graphics/Rect;
    .param p9, "visibleFrame"    # Landroid/graphics/Rect;
    .param p10, "stableFrame"    # Landroid/graphics/Rect;
    .param p11, "outsetFrame"    # Landroid/graphics/Rect;

    move-object v0, p0

    .line 179
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNubiaFullScreenController:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 180
    iget-object v2, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNubiaFullScreenController:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->adjustAppWindowSize(Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 182
    :cond_0
    return-void
.end method

.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .line 208
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mStub:Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 195
    const-string/jumbo v0, "nubia.application.manager"

    return-object v0
.end method

.method public noteFocusedApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "focusedAppPkgName"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNubiaFullScreenController:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNubiaFullScreenController:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->noteFocusedApp(Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 0

    .line 200
    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->initFeatureConfig()V

    .line 201
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->createAllControllers()V

    .line 202
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->registerReceiver()V

    .line 203
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->registerBootReceiver()V

    .line 204
    return-void
.end method
