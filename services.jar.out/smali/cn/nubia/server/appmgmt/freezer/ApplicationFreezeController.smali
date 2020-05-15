.class public Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
.super Ljava/lang/Object;
.source "ApplicationFreezeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$MonkeySwitchRunnable;,
        Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$NetworkConnectedRunnable;
    }
.end annotation


# static fields
.field private static final CHECK_TIME_INTERVAL:I = 0x1f4

.field static DEBUG:Z = false

.field static DEBUG_FREEZE:Z = false

.field static DEBUG_MANAGE:Z = false

.field static DEBUG_STRATEGY:Z = false

.field private static final LOOPER_CHECK_TIME:J = 0xea60L

.field static final TAG:Ljava/lang/String; = "ApplicationFreeze"


# instance fields
.field private final SCHE_DELAY_TIME:J

.field private SCHE_FREEZE_MONKEY:J

.field private isFristCheck:Z

.field private mAllProcessList:Lcn/nubia/server/appmgmt/freezer/AllProcessList;

.field private mAppBehaviorController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

.field private mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

.field private mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;

.field private mCheckProcessRunnable:Ljava/lang/Runnable;

.field private mClearFreezeProcessBeforeBoot:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field mCurrentlyIdleState:I

.field private mDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

.field private mForegroundPackageName:Ljava/lang/String;

.field private mFreezeCallback:Lnubia/os/IFreezeCallback;

.field private mFreezeStrategyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/server/appmgmt/freezer/IStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private mFreezeTime:J

.field private mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

.field private mGPSCheck:Lcn/nubia/server/appmgmt/freezer/GPSCheck;

.field private mGetStatusRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIgnorNearestTime:J

.field public mIs2GNetwork:Z

.field mIsConnectNetWok:Z

.field private mIsKeyguardOn:Z

.field private mIsScreenOn:Z

.field mLinkAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedProcesses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMonkeyMode:Z

.field private mMusicFreezeStrategy:Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;

.field private mNearestTime:J

.field private mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

.field private mNoteDozeRunnable:Ljava/lang/Runnable;

.field private mNotifier:Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;

.field private mPackagesLock:Ljava/lang/Object;

.field private mQuitProcesses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorAllPids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

.field private mStandbyAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCheck:Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;

.field private mThread:Landroid/os/HandlerThread;

.field private mUnfreezeResumeAppRunnable:Ljava/lang/Runnable;

.field private mUnfreezeStrategyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/server/appmgmt/freezer/IStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetCheck:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
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
    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    .line 42
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    .line 43
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    .line 44
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lnubia/os/IFreezeCallback;Lcn/nubia/server/appmgmt/AppLevelController;Lcn/nubia/server/appmgmt/ApplicationUtils;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Lnubia/os/IFreezeCallback;
    .param p4, "appLevelController"    # Lcn/nubia/server/appmgmt/AppLevelController;
    .param p5, "applicationUtils"    # Lcn/nubia/server/appmgmt/ApplicationUtils;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mQuitProcesses:Ljava/util/HashSet;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStandbyAppList:Ljava/util/HashSet;

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeTime:J

    .line 72
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    .line 73
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIgnorNearestTime:J

    .line 74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsScreenOn:Z

    .line 75
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsKeyguardOn:Z

    .line 76
    const-string v3, ""

    iput-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mForegroundPackageName:Ljava/lang/String;

    .line 77
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mPackagesLock:Ljava/lang/Object;

    .line 79
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsConnectNetWok:Z

    .line 80
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIs2GNetwork:Z

    .line 81
    iput v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCurrentlyIdleState:I

    .line 83
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "ApplicationFreezeIO"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mThread:Landroid/os/HandlerThread;

    .line 84
    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->SCHE_DELAY_TIME:J

    .line 85
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->SCHE_FREEZE_MONKEY:J

    .line 86
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mMonkeyMode:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorAllPids:Ljava/util/List;

    .line 89
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isFristCheck:Z

    .line 103
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$1;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeResumeAppRunnable:Ljava/lang/Runnable;

    .line 110
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$2;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCheckProcessRunnable:Ljava/lang/Runnable;

    .line 126
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$3;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$3;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mGetStatusRunnable:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$4;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$4;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mClearFreezeProcessBeforeBoot:Ljava/lang/Runnable;

    .line 1142
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$5;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$5;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNoteDozeRunnable:Ljava/lang/Runnable;

    .line 232
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mContext:Landroid/content/Context;

    .line 233
    iput-object p5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;

    .line 234
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 235
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    .line 236
    iput-object p3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    .line 237
    iput-object p4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    .line 238
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNotifier:Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;

    .line 239
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    .line 240
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mWidgetCheck:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    .line 241
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStatusCheck:Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;

    .line 242
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-direct {v0, v1, p0, v2}, Lcn/nubia/server/appmgmt/freezer/AllProcessList;-><init>(Landroid/os/Handler;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/AppLevelController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mAllProcessList:Lcn/nubia/server/appmgmt/freezer/AllProcessList;

    .line 243
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/AppDataManager;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

    .line 244
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->getSpecialLinkAppList()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mLinkAppList:Ljava/util/HashSet;

    .line 245
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;-><init>(Landroid/content/Context;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    .line 246
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/freezer/GPSCheck;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mGPSCheck:Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    .line 247
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/freezer/NetworkCheck;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    .line 248
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;-><init>(Landroid/content/Context;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mMusicFreezeStrategy:Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;

    .line 250
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->initUnfreezeStrategyList()V

    .line 251
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->initFreezeStrategyList()V

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 39
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleUnfreezeResumeApp()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 39
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->doCheck()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Lnubia/os/IFreezeCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 39
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 39
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Lcn/nubia/server/appmgmt/freezer/FreezerProxy;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 39
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 39
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 39
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 39
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mMonkeyMode:Z

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 39
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->openCloseLog()V

    return-void
.end method

.method private checkFreeze(Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .local p1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .local p2, "freezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .local p3, "againFreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .local p4, "unfreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 671
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 672
    .local v2, "thawedList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/AppLevelController;->getFreezeBlackList()Ljava/util/HashSet;

    move-result-object v3

    .line 673
    .local v3, "thirdAppBlackList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mMusicFreezeStrategy:Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;

    if-eqz v4, :cond_0

    .line 674
    iget-object v4, v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mMusicFreezeStrategy:Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;

    invoke-virtual {v4}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->initIsActivePids()V

    .line 677
    :cond_0
    iget-object v4, v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    if-eqz v4, :cond_1

    .line 678
    iget-object v4, v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    invoke-virtual {v4}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->getSensorsAllPids()Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorAllPids:Ljava/util/List;

    .line 680
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 681
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 682
    .local v6, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->isKilled()Z

    move-result v7

    if-eqz v7, :cond_2

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v6    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    goto :goto_0

    .line 683
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .restart local v6    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_2
    iget-boolean v7, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mNeedQuit:Z

    if-eqz v7, :cond_3

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v6    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    goto :goto_0

    .line 684
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .restart local v6    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_3
    iget-object v7, v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStatusCheck:Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;

    invoke-virtual {v7, v6}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->isDifferentFromInfo(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v7

    .line 685
    .local v7, "isDiff":Z
    xor-int/lit8 v8, v7, 0x1

    invoke-virtual {v6, v8}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->addCheckStatus(Z)V

    .line 686
    const/4 v8, 0x0

    if-eqz v7, :cond_5

    .line 687
    iput-boolean v8, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    .line 688
    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetFreezingTimer()V

    .line 689
    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetCheckStatus()V

    .line 690
    invoke-direct {v0, v6}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleUnfreezeInfo(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)V

    .line 691
    invoke-direct {v0, v6}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleUnfreezeNative(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)V

    .line 692
    invoke-direct {v0, v6, v8}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleUnfreezeSameUidProcess(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;Z)V

    .line 701
    :cond_4
    move-object/from16 v9, p4

    goto :goto_1

    .line 694
    :cond_5
    iget-boolean v9, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-eqz v9, :cond_4

    .line 695
    move-object/from16 v9, p4

    invoke-direct {v0, v9, v6}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->checkUnFreeze(Ljava/util/HashSet;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)V

    .line 696
    iget-object v10, v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStatusCheck:Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;

    invoke-virtual {v10, v6, v7, v2}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->shouldFreezeAgain(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;ZLjava/util/HashSet;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 697
    goto :goto_0

    .line 701
    :cond_6
    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v10, "dontFreezeStrategy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x1

    .line 704
    .local v11, "needFreeze":Z
    iget-object v12, v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/nubia/server/appmgmt/freezer/IStrategy;

    .line 705
    .local v13, "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    iget v14, v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCurrentlyIdleState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_10

    .line 706
    const/4 v14, 0x0

    .line 707
    .local v14, "dozeFlag":Z
    iget-object v8, v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    invoke-virtual {v8, v6}, Lcn/nubia/server/appmgmt/freezer/NetworkCheck;->isNoFreezeApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 708
    instance-of v8, v13, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;

    if-nez v8, :cond_8

    instance-of v8, v13, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    move v8, v15

    :goto_4
    goto :goto_6

    .line 711
    :cond_9
    instance-of v8, v13, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;

    if-nez v8, :cond_b

    instance-of v8, v13, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;

    if-nez v8, :cond_b

    instance-of v8, v13, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;

    if-eqz v8, :cond_a

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    move v8, v15

    .line 715
    .end local v14    # "dozeFlag":Z
    .local v8, "dozeFlag":Z
    :goto_6
    if-eqz v8, :cond_f

    .line 716
    if-nez v11, :cond_c

    invoke-interface {v13}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->needCheckWhenOtherNotAllow()Z

    move-result v14

    if-nez v14, :cond_c

    .end local v8    # "dozeFlag":Z
    .end local v13    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    goto :goto_9

    .line 717
    .restart local v8    # "dozeFlag":Z
    .restart local v13    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    :cond_c
    invoke-interface {v13, v6}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v14

    .line 718
    .local v14, "thisAllowed":Z
    sget-boolean v16, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v16, :cond_d

    if-nez v14, :cond_d

    .line 719
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_d
    if-eqz v11, :cond_e

    if-eqz v14, :cond_e

    const/16 v17, 0x1

    goto :goto_7

    :cond_e
    const/16 v17, 0x0

    :goto_7
    move/from16 v11, v17

    .line 722
    .end local v14    # "thisAllowed":Z
    goto :goto_8

    .line 723
    :cond_f
    nop

    .line 725
    .end local v8    # "dozeFlag":Z
    :goto_8
    goto :goto_b

    .line 726
    :cond_10
    if-nez v11, :cond_11

    invoke-interface {v13}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->needCheckWhenOtherNotAllow()Z

    move-result v8

    if-nez v8, :cond_11

    .line 704
    .end local v13    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    :goto_9
    const/4 v8, 0x0

    goto :goto_2

    .line 728
    .restart local v13    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    :cond_11
    invoke-interface {v13, v6}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v8

    .line 729
    .local v8, "thisAllowed":Z
    sget-boolean v14, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v14, :cond_12

    if-nez v8, :cond_12

    .line 730
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_12
    if-eqz v11, :cond_13

    if-eqz v8, :cond_13

    const/16 v17, 0x1

    goto :goto_a

    :cond_13
    const/16 v17, 0x0

    :goto_a
    move/from16 v8, v17

    .line 734
    .end local v11    # "needFreeze":Z
    .end local v13    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    .local v8, "needFreeze":Z
    move v11, v8

    .end local v8    # "needFreeze":Z
    .restart local v11    # "needFreeze":Z
    :goto_b
    goto :goto_9

    .line 736
    :cond_14
    if-eqz v11, :cond_16

    .line 737
    iget-boolean v8, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-eqz v8, :cond_15

    .line 738
    move-object/from16 v8, p3

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 740
    :cond_15
    move-object/from16 v8, p3

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 742
    :goto_c
    sget-boolean v12, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v12, :cond_17

    .line 743
    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->cleanDontFreezeStrategy()V

    goto :goto_d

    .line 746
    :cond_16
    move-object/from16 v8, p3

    sget-boolean v12, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v12, :cond_17

    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getDontFreezeStrategy()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    .line 747
    const-string v12, "ApplicationFreeze"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "do not freeze "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getReasonPid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 747
    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-virtual {v6, v10}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->setDontFreezeStrategy(Ljava/util/ArrayList;)V

    .line 752
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v6    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v7    # "isDiff":Z
    .end local v10    # "dontFreezeStrategy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "needFreeze":Z
    :cond_17
    :goto_d
    goto/16 :goto_0

    .line 753
    :cond_18
    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_19

    .line 754
    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->filterFreezeList(Ljava/util/HashSet;)V

    .line 756
    :cond_19
    return-void
.end method

.method private checkUnFreeze(Ljava/util/HashSet;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)V
    .locals 5
    .param p2, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ")V"
        }
    .end annotation

    .line 809
    .local p1, "unfreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/IStrategy;

    .line 810
    .local v1, "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    iget v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCurrentlyIdleState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 811
    instance-of v2, v1, Lcn/nubia/server/appmgmt/freezer/QuitUnfreezeStrategy;

    if-eqz v2, :cond_4

    .line 812
    invoke-interface {v1, p2}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v2

    .line 813
    .local v2, "needUnfreeze":Z
    if-eqz v2, :cond_1

    .line 814
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v0, :cond_0

    const-string v0, "ApplicationFreeze"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "need Unfreeze in doze "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 814
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 817
    goto :goto_2

    .line 819
    .end local v2    # "needUnfreeze":Z
    :cond_1
    goto :goto_1

    .line 821
    :cond_2
    invoke-interface {v1, p2}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v2

    .line 822
    .restart local v2    # "needUnfreeze":Z
    if-eqz v2, :cond_4

    .line 823
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v0, :cond_3

    const-string v0, "ApplicationFreeze"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "need Unfreeze "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 823
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 826
    goto :goto_2

    .line 829
    .end local v1    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    .end local v2    # "needUnfreeze":Z
    :cond_4
    :goto_1
    goto :goto_0

    .line 830
    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 831
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->unfreezeSameUid(Ljava/util/HashSet;)V

    .line 833
    :cond_6
    return-void
.end method

.method private doCheck()V
    .locals 6

    .line 606
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    if-nez v0, :cond_0

    return-void

    .line 607
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 608
    .local v0, "processList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v1

    .line 609
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 610
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->preCheck()V

    .line 612
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 613
    .local v1, "newFreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 614
    .local v2, "againFreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 615
    .local v3, "unfreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-direct {p0, v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->checkFreeze(Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 617
    invoke-direct {p0, v1, v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleFreeze(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 618
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleUnfreeze(Ljava/util/HashSet;)V

    .line 619
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNotifier:Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mQuitProcesses:Ljava/util/HashSet;

    invoke-virtual {v4, v1, v3, v5}, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;->notifyChange(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 620
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->removeQuitProcess()V

    .line 621
    return-void

    .line 610
    .end local v1    # "newFreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v2    # "againFreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v3    # "unfreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1195
    const-string v0, "==========freeze manage app============="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1197
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v0

    .line 1198
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1199
    .local v2, "pid":Ljava/lang/Integer;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 1200
    .local v3, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isFrozen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1201
    .end local v2    # "pid":Ljava/lang/Integer;
    .end local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    goto :goto_0

    .line 1202
    :cond_0
    monitor-exit v0

    .line 1203
    return-void

    .line 1202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpAppList(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1206
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/AppDataManager;->dump(Ljava/io/PrintWriter;)V

    .line 1207
    return-void
.end method

.method private filterFreezeList(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .line 799
    .local p1, "freezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v0, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 801
    .local v2, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    invoke-direct {p0, v2, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isSameUidOrPackageNameNotFrezon(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;Ljava/util/HashSet;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 802
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_0
    goto :goto_0

    .line 805
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 806
    return-void
.end method

.method private findAppNativeProcess(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 930
    .local p1, "processList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 932
    .local v0, "nativeProcessInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 933
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 934
    .local v2, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget v3, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    iget v4, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v3, v4}, Landroid/os/Process;->getAllPidsInOneApp(II)[I

    move-result-object v3

    .line 935
    .local v3, "pids":[I
    if-eqz v3, :cond_1

    .line 936
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 937
    aget v5, v3, v4

    invoke-direct {p0, p1, v5}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->hasThisProcess(Ljava/util/HashSet;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 938
    new-instance v5, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    aget v6, v3, v4

    iget v7, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    iget-object v8, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 942
    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v3    # "pids":[I
    .end local v4    # "i":I
    :cond_1
    goto :goto_0

    .line 944
    :catch_0
    move-exception v1

    .line 945
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 946
    :cond_2
    nop

    .line 947
    :goto_2
    return-object v0
.end method

.method private findSameUidOrPackageNameProcess(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .local v0, "sameUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 767
    .local v1, "processList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v2

    .line 768
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 769
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 771
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 772
    .local v4, "processInfo":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-eq v4, p1, :cond_0

    invoke-virtual {v4}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->isKilled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 773
    invoke-direct {p0, p1, v4}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isSameApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 774
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v4    # "processInfo":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_0
    goto :goto_0

    .line 777
    :cond_1
    return-object v0

    .line 769
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getQuitProcess(Ljava/util/HashMap;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)Z"
        }
    .end annotation

    .line 579
    .local p1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    const/4 v0, 0x0

    .line 580
    .local v0, "re":Z
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mQuitProcesses:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 581
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v1, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v2

    .line 583
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 584
    .local v4, "key":Ljava/lang/Integer;
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 586
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 587
    .local v5, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-object v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mQuitProcesses:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 588
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mNeedQuit:Z

    .line 589
    const/4 v0, 0x1

    .line 591
    .end local v4    # "key":Ljava/lang/Integer;
    .end local v5    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_0
    goto :goto_0

    .line 592
    :cond_1
    monitor-exit v2

    .line 593
    return v0

    .line 592
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private hasThisProcess(Ljava/util/HashSet;I)Z
    .locals 3
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 951
    .local p1, "processList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 952
    .local v1, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget v2, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    if-ne v2, p2, :cond_0

    .line 953
    const/4 v0, 0x1

    return v0

    .line 955
    .end local v1    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_0
    goto :goto_0

    .line 956
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private initFreezeStrategyList()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mLinkAppList:Ljava/util/HashSet;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Ljava/util/HashSet;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mMusicFreezeStrategy:Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/ServiceFreezeStrategy;

    invoke-direct {v1}, Lcn/nubia/server/appmgmt/freezer/ServiceFreezeStrategy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/WindowStateFreezeStrategy;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/WindowStateFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/NetworkFreezeStrategy;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/freezer/NetworkFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/NetworkCheck;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/GPSFreezeStrategy;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mGPSCheck:Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/freezer/GPSFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/GPSCheck;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/SensorCheck;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/WidgetFreezeStrategy;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mWidgetCheck:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/freezer/WidgetFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/WidgetCheck;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/TCPFreezeStrategy;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/TCPFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

.method private initUnfreezeStrategyList()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/QuitUnfreezeStrategy;

    invoke-direct {v1}, Lcn/nubia/server/appmgmt/freezer/QuitUnfreezeStrategy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/ServiceUnFreezeStrategy;

    invoke-direct {v1}, Lcn/nubia/server/appmgmt/freezer/ServiceUnFreezeStrategy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/WindowStateUnfreezeStrategy;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/WindowStateUnfreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/WidgetUnFreezeStrategy;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mWidgetCheck:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/freezer/WidgetUnFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/WidgetCheck;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/GPSUnFreezeStrategy;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mGPSCheck:Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/freezer/GPSUnFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/GPSCheck;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/SensorCheck;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/NetworkUnFreezeStrategy;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/freezer/NetworkUnFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/NetworkCheck;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method private static isFrozen(I)Z
    .locals 6
    .param p0, "pid"    # I

    .line 346
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/os/Process;

    const-string/jumbo v2, "isProcessFrozen"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 347
    .local v1, "isProcessFrozen":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 348
    .end local v1    # "isProcessFrozen":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private isSameApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 2
    .param p1, "one"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .param p2, "other"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 759
    iget v0, p2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    iget v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 760
    :cond_0
    iget v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget v1, p2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 761
    :cond_1
    invoke-virtual {p2, p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->hasSameName(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v0

    return v0
.end method

.method private isSameUidOrPackageNameNotFrezon(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;Ljava/util/HashSet;)Z
    .locals 5
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)Z"
        }
    .end annotation

    .line 782
    .local p2, "freezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->findSameUidOrPackageNameProcess(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 784
    .local v0, "sameUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 785
    .local v2, "sameOne":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-boolean v3, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-nez v3, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 786
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v1, :cond_0

    .line 787
    const-string v1, "ApplicationFreeze"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not freeze ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] has same uid or in same package not freeze [Link pid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reasonPid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getReasonPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 787
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 793
    .end local v2    # "sameOne":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_1
    goto :goto_0

    .line 794
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private openCloseLog()V
    .locals 3

    .line 1210
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    .line 1211
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeConfig;->DEBUG:Z

    .line 1213
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    .line 1215
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStatusCheck:Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->resetArgs()V

    .line 1216
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/IStrategy;

    .line 1217
    .local v1, "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    invoke-interface {v1}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->resetArgs()V

    .line 1218
    .end local v1    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    goto :goto_0

    .line 1219
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/IStrategy;

    .line 1220
    .restart local v1    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    invoke-interface {v1}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->resetArgs()V

    .line 1221
    .end local v1    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    goto :goto_1

    .line 1222
    :cond_1
    const-string v0, "ApplicationFreeze"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openCloseLog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    return-void
.end method

.method private preCheck()V
    .locals 2

    .line 597
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/IStrategy;

    .line 598
    .local v1, "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    invoke-interface {v1}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->preCheck()V

    .line 599
    .end local v1    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    goto :goto_0

    .line 600
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/IStrategy;

    .line 601
    .restart local v1    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    invoke-interface {v1}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->preCheck()V

    .line 602
    .end local v1    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    goto :goto_1

    .line 603
    :cond_1
    return-void
.end method

.method private removeQuitProcess()V
    .locals 6

    .line 624
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v0

    .line 625
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mQuitProcesses:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 626
    .local v2, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    if-eqz v3, :cond_0

    const-string v3, "ApplicationFreeze"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "real remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    iget v4, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    goto :goto_0

    .line 629
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mQuitProcesses:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 631
    return-void

    .line 629
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private scheduleCheck()V
    .locals 2

    .line 501
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck(J)V

    .line 502
    return-void
.end method

.method private scheduleFreeze(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .line 864
    .local p1, "newList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .local p2, "againList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mMonkeyMode:Z

    if-eqz v0, :cond_0

    .line 865
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->SCHE_FREEZE_MONKEY:J

    goto :goto_0

    .line 867
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->SCHE_FREEZE_MONKEY:J

    .line 869
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 870
    .local v0, "now":J
    iget-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->SCHE_FREEZE_MONKEY:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 871
    return-void

    .line 873
    :cond_1
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeTime:J

    .line 877
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 879
    .local v3, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    const/4 v5, 0x0

    .line 880
    .local v5, "isTopApp":Z
    :try_start_0
    iget-object v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;

    if-eqz v6, :cond_4

    .line 881
    iget-object v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;

    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/ApplicationUtils;->getForegroundPackageName()Ljava/util/List;

    move-result-object v6

    .line 882
    .local v6, "visibleApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 883
    .local v8, "pkg":Ljava/lang/String;
    iget-object v9, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 884
    sget-boolean v9, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v9, :cond_2

    const-string v9, "ApplicationFreeze"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "app= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", packageName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_2
    const/4 v5, 0x1

    .line 887
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 889
    .end local v6    # "visibleApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iget-boolean v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsScreenOn:Z

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 891
    :cond_5
    iput-boolean v4, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    .line 892
    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetTime()V

    .line 893
    sget-boolean v6, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v6, :cond_6

    const-string v6, "ApplicationFreeze"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "do freeze "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", process:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_6
    iget v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCurrentlyIdleState:I

    if-ne v6, v4, :cond_7

    .line 895
    iget-object v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    iget v7, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-interface {v6, v7}, Lnubia/os/IFreezeCallback;->scheduleDeepFreeze(I)V

    goto :goto_3

    .line 897
    :cond_7
    iget-object v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    iget v7, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-interface {v6, v7}, Lnubia/os/IFreezeCallback;->scheduleFreeze(I)V

    .line 900
    :goto_3
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleFreezeNative(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)V

    .line 901
    iget-object v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorAllPids:Ljava/util/List;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorAllPids:Ljava/util/List;

    iget v7, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 902
    iget-object v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    iget v7, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v6, v7, v4}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->setSensorEnable(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    .end local v5    # "isTopApp":Z
    :cond_8
    goto :goto_4

    .line 904
    :catch_0
    move-exception v4

    .line 905
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 907
    .end local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_4
    goto/16 :goto_1

    .line 909
    :cond_9
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 911
    .restart local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :try_start_1
    sget-boolean v5, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v5, :cond_a

    const-string v5, "ApplicationFreeze"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "do freeze again "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_a
    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetTime()V

    .line 913
    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->addFreezeTimes()V

    .line 914
    iget v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCurrentlyIdleState:I

    if-ne v5, v4, :cond_b

    .line 915
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    iget v6, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-interface {v5, v6}, Lnubia/os/IFreezeCallback;->scheduleDeepFreeze(I)V

    goto :goto_6

    .line 917
    :cond_b
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    iget v6, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-interface {v5, v6}, Lnubia/os/IFreezeCallback;->scheduleFreeze(I)V

    .line 919
    :goto_6
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleFreezeNative(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)V

    .line 920
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorAllPids:Ljava/util/List;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorAllPids:Ljava/util/List;

    iget v6, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 921
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    iget v6, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v5, v6, v4}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->setSensorEnable(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 925
    :cond_c
    goto :goto_7

    .line 923
    :catch_1
    move-exception v5

    .line 924
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 926
    .end local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_7
    goto :goto_5

    .line 927
    :cond_d
    return-void
.end method

.method private scheduleFreezeNative(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)V
    .locals 7
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 847
    iget v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    iget v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v0, v1}, Landroid/os/Process;->getAllPidsInOneApp(II)[I

    move-result-object v0

    .line 848
    .local v0, "pids":[I
    if-eqz v0, :cond_1

    .line 849
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 850
    iget v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    aget v3, v0, v1

    if-eq v2, v3, :cond_0

    .line 851
    aget v2, v0, v1

    invoke-static {v2}, Landroid/os/Process;->getFreezeTidsInPid(I)[I

    move-result-object v2

    .line 852
    .local v2, "tids":[I
    if-eqz v2, :cond_0

    .line 853
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v2, v4}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->freeze([II)Z

    move-result v3

    .line 854
    .local v3, "isSucess":Z
    sget-boolean v4, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v4, :cond_0

    .line 855
    const-string v4, "ApplicationFreeze"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "do freeze native process :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " success:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    .end local v2    # "tids":[I
    .end local v3    # "isSucess":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 861
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private scheduleIdleState()V
    .locals 2

    .line 1170
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    if-nez v0, :cond_0

    return-void

    .line 1171
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNoteDozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1172
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNoteDozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1173
    return-void
.end method

.method private scheduleUnfreeze(Ljava/util/HashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .line 1032
    .local p1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 1033
    .local v1, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget v2, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v2}, Landroid/os/Process;->getFreezeTidsInPid(I)[I

    move-result-object v2

    .line 1034
    .local v2, "tids":[I
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1035
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    iget v5, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v4, v2, v5}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->unfreeze([II)Z

    move-result v4

    .line 1036
    .local v4, "isSucess":Z
    sget-boolean v5, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v5, :cond_0

    if-nez v4, :cond_0

    const-string v5, "ApplicationFreeze"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unfreeze "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_0
    if-eqz v4, :cond_1

    .line 1038
    iput-boolean v3, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    .line 1039
    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetFreezingTimer()V

    .line 1040
    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetCheckStatus()V

    .line 1043
    .end local v4    # "isSucess":Z
    :cond_1
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleUnfreezeNative(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)V

    .line 1044
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    if-eqz v4, :cond_2

    .line 1045
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    iget v5, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v4, v5, v3}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->setSensorEnable(II)V

    .line 1047
    .end local v1    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v2    # "tids":[I
    :cond_2
    goto :goto_0

    .line 1048
    :cond_3
    return-void
.end method

.method private scheduleUnfreezeInfo(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)V
    .locals 6
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 961
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStatusCheck:Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;

    iget v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->isProcessFrozen(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 962
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    iget v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v0, v2, v1}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->setSensorEnable(II)V

    .line 963
    return-void

    .line 966
    :cond_0
    :try_start_0
    iget v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v0}, Landroid/os/Process;->getFreezeTidsInPid(I)[I

    move-result-object v0

    .line 967
    .local v0, "tids":[I
    if-eqz v0, :cond_2

    .line 968
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    iget v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v2, v0, v3}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->unfreeze([II)Z

    move-result v2

    .line 969
    .local v2, "isSucess":Z
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 970
    const-string v3, "ApplicationFreeze"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unfreeze "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " by different from native"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    if-eqz v3, :cond_2

    .line 973
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4, v1}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->setSensorEnable(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    .end local v0    # "tids":[I
    .end local v2    # "isSucess":Z
    :cond_2
    goto :goto_0

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 979
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private scheduleUnfreezeNative(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)V
    .locals 7
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 982
    :try_start_0
    iget v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    iget v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v0, v1}, Landroid/os/Process;->getAllPidsInOneApp(II)[I

    move-result-object v0

    .line 983
    .local v0, "pids":[I
    if-eqz v0, :cond_1

    .line 984
    const/4 v1, 0x0

    .line 984
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 985
    iget v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    aget v3, v0, v1

    if-eq v2, v3, :cond_0

    .line 986
    aget v2, v0, v1

    invoke-static {v2}, Landroid/os/Process;->getFreezeTidsInPid(I)[I

    move-result-object v2

    .line 987
    .local v2, "tids":[I
    if-eqz v2, :cond_0

    .line 988
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v2, v4}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->unfreeze([II)Z

    move-result v3

    .line 989
    .local v3, "isSucess":Z
    sget-boolean v4, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 990
    const-string v4, "ApplicationFreeze"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unfreeze native process : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " sucess:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    .end local v2    # "tids":[I
    .end local v3    # "isSucess":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 998
    .end local v0    # "pids":[I
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 999
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private scheduleUnfreezeResumeApp()V
    .locals 11

    .line 1051
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    if-nez v0, :cond_0

    return-void

    .line 1052
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1053
    .local v0, "processList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v1

    .line 1054
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1055
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1057
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 1058
    .local v3, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->isKilled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1058
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    goto :goto_0

    .line 1059
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .restart local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_1
    iget-boolean v4, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mNeedQuit:Z

    if-eqz v4, :cond_2

    .line 1059
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    goto :goto_0

    .line 1060
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .restart local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_2
    iget-boolean v4, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStatusCheck:Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;

    iget v4, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v4}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->isProcessFrozen(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1061
    :cond_3
    const/4 v4, 0x0

    .line 1062
    .local v4, "isTopApp":Z
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;

    if-eqz v5, :cond_5

    .line 1063
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;

    invoke-virtual {v5}, Lcn/nubia/server/appmgmt/ApplicationUtils;->getForegroundPackageName()Ljava/util/List;

    move-result-object v5

    .line 1064
    .local v5, "visibleApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1065
    .local v7, "pkg":Ljava/lang/String;
    iget-object v8, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1066
    const/4 v4, 0x1

    .line 1068
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 1070
    .end local v5    # "visibleApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    if-eqz v4, :cond_9

    .line 1071
    iget-boolean v5, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStatusCheck:Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;

    iget v5, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v5}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->isProcessFrozen(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1072
    iput-boolean v6, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    .line 1073
    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetFreezingTimer()V

    .line 1074
    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetCheckStatus()V

    goto :goto_2

    .line 1076
    :cond_6
    iget v5, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v5}, Landroid/os/Process;->getFreezeTidsInPid(I)[I

    move-result-object v5

    .line 1077
    .local v5, "tids":[I
    if-eqz v5, :cond_8

    .line 1078
    iget-object v7, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    iget v8, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v7, v5, v8}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->unfreeze([II)Z

    move-result v7

    .line 1079
    .local v7, "isSucess":Z
    sget-boolean v8, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v8, :cond_7

    if-eqz v7, :cond_7

    .line 1080
    const-string v8, "ApplicationFreeze"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unfreeze resume app "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_7
    if-eqz v7, :cond_8

    .line 1082
    iput-boolean v6, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    .line 1083
    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetFreezingTimer()V

    .line 1084
    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetCheckStatus()V

    .line 1089
    .end local v5    # "tids":[I
    .end local v7    # "isSucess":Z
    :cond_8
    :goto_2
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleUnfreezeNative(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)V

    .line 1090
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    if-eqz v5, :cond_9

    .line 1091
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    iget v7, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v5, v7, v6}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->setSensorEnable(II)V

    .line 1095
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v4    # "isTopApp":Z
    :cond_9
    goto/16 :goto_0

    .line 1096
    :cond_a
    return-void

    .line 1055
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private scheduleUnfreezeSameUidProcess(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;Z)V
    .locals 9
    .param p1, "processInfo"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .param p2, "isForKill"    # Z

    .line 1002
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->findSameUidOrPackageNameProcess(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1003
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 1004
    .local v2, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-boolean v3, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1005
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStatusCheck:Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;

    iget v3, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v3}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->isProcessFrozen(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1006
    iput-boolean v4, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    .line 1007
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetFreezingTimer()V

    .line 1008
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetCheckStatus()V

    goto :goto_1

    .line 1010
    :cond_0
    iget v3, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v3}, Landroid/os/Process;->getFreezeTidsInPid(I)[I

    move-result-object v3

    .line 1011
    .local v3, "tids":[I
    if-eqz v3, :cond_2

    .line 1012
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    iget v6, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v5, v3, v6}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->unfreeze([II)Z

    move-result v5

    .line 1013
    .local v5, "isSucess":Z
    sget-boolean v6, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 1014
    const-string v6, "ApplicationFreeze"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unfreeze "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " by same uid for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_1
    if-eqz v5, :cond_2

    .line 1017
    iput-boolean v4, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    .line 1018
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetFreezingTimer()V

    .line 1019
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetCheckStatus()V

    .line 1024
    .end local v3    # "tids":[I
    .end local v5    # "isSucess":Z
    :cond_2
    :goto_1
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleUnfreezeNative(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)V

    .line 1025
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    if-eqz v3, :cond_3

    if-nez p2, :cond_3

    .line 1026
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    iget v5, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v5, v4}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->setSensorEnable(II)V

    .line 1028
    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_3
    goto/16 :goto_0

    .line 1029
    :cond_4
    return-void
.end method

.method private toScreenState(I)I
    .locals 1
    .param p1, "state"    # I

    .line 400
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 401
    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 400
    :goto_0
    return v0
.end method

.method private unfreezeSameUid(Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .line 836
    .local p1, "unfreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v0, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 838
    .local v2, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->findSameUidOrPackageNameProcess(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Ljava/util/ArrayList;

    move-result-object v3

    .line 839
    .local v3, "sameUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    sget-boolean v4, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v4, :cond_0

    const-string v4, "ApplicationFreeze"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unfreeze "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 842
    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v3    # "sameUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    goto :goto_0

    .line 843
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 844
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "next"    # I

    .line 1121
    array-length v0, p2

    if-lt p3, v0, :cond_0

    return-void

    .line 1123
    :cond_0
    aget-object v0, p2, p3

    .line 1124
    .local v0, "cmd":Ljava/lang/String;
    const-string/jumbo v1, "log"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1125
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->openCloseLog()V

    goto :goto_0

    .line 1126
    :cond_1
    const-string v1, "dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1127
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1128
    :cond_2
    const-string v1, "data_list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1129
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->dumpAppList(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1130
    :cond_3
    const-string v1, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1131
    const/4 v1, 0x0

    sput-boolean v1, Lcn/nubia/server/appmgmt/AppDataManager;->NONE_ALLOWED:Z

    goto :goto_0

    .line 1132
    :cond_4
    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1133
    const/4 v1, 0x1

    sput-boolean v1, Lcn/nubia/server/appmgmt/AppDataManager;->NONE_ALLOWED:Z

    .line 1135
    :cond_5
    :goto_0
    return-void
.end method

.method public enableLog(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1226
    xor-int/lit8 v0, p1, 0x1

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    .line 1227
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->openCloseLog()V

    .line 1228
    return-void
.end method

.method findProcess(I)Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .locals 3
    .param p1, "pid"    # I

    .line 634
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v0

    .line 635
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 636
    .local v1, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    monitor-exit v0

    return-object v1

    .line 637
    .end local v1    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApplicationUtils()Lcn/nubia/server/appmgmt/ApplicationUtils;
    .locals 1

    .line 537
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;

    return-object v0
.end method

.method public getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;
    .locals 1

    .line 533
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

    return-object v0
.end method

.method public getFrozenProcessStatus(Ljava/lang/String;I[I)Z
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "status"    # [I

    .line 363
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    array-length v1, p3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 364
    :cond_0
    aput v0, p3, v0

    .line 365
    const/4 v1, 0x1

    aput v0, p3, v1

    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, "hasOne":Z
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v3

    .line 368
    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 369
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 370
    .local v6, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget v7, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    if-ne v7, p2, :cond_3

    iget-object v7, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 371
    iget-boolean v7, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-nez v7, :cond_1

    monitor-exit v3

    return v0

    .line 372
    :cond_1
    const/4 v2, 0x1

    .line 373
    aget v7, p3, v0

    if-nez v7, :cond_2

    aget v7, p3, v1

    if-nez v7, :cond_2

    .line 374
    invoke-virtual {v6, p3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getCheckStatus([I)V

    goto :goto_1

    .line 375
    :cond_2
    aget v7, p3, v0

    aget v8, p3, v1

    invoke-virtual {v6, v7, v8}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->isFrozenBetterThan(II)Z

    move-result v7

    if-nez v7, :cond_3

    .line 376
    invoke-virtual {v6, p3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getCheckStatus([I)V

    .line 379
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v6    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_3
    :goto_1
    goto :goto_0

    .line 380
    :cond_4
    monitor-exit v3

    .line 381
    return v2

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 363
    .end local v2    # "hasOne":Z
    :cond_5
    :goto_2
    return v0
.end method

.method public getManagedProcesses()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSensorAllPids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorAllPids:Ljava/util/List;

    return-object v0
.end method

.method public getSensorCheck()Lcn/nubia/server/appmgmt/freezer/SensorCheck;
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    return-object v0
.end method

.method getStandbyAppList()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1189
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStandbyAppList:Ljava/util/HashSet;

    monitor-enter v0

    .line 1190
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStandbyAppList:Ljava/util/HashSet;

    monitor-exit v0

    return-object v1

    .line 1191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "reqCode"    # I
    .param p2, "subCode"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "argStr1"    # Ljava/lang/String;
    .param p6, "argStr2"    # Ljava/lang/String;

    .line 447
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 451
    const/16 v1, 0x10

    if-ne p2, v1, :cond_1

    .line 452
    move v1, p3

    .line 453
    .local v1, "cfgChanges":I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-virtual {v2, v1}, Lcn/nubia/server/appmgmt/AppDataManager;->isInterceptConfigChange(I)Z

    move-result v2

    xor-int/2addr v0, v2

    return v0

    .line 455
    .end local v1    # "cfgChanges":I
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-virtual {v1, p2}, Lcn/nubia/server/appmgmt/AppDataManager;->isInterceptApplicationThreadTransaction(I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 458
    :cond_2
    return v0

    .line 449
    :cond_3
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-virtual {v1, p5}, Lcn/nubia/server/appmgmt/AppDataManager;->isInterceptBroadcast(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method declared-synchronized isKeyguardOn()Z
    .locals 1

    monitor-enter p0

    .line 497
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsKeyguardOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    throw v0
.end method

.method public isKillWhenFrozen(I)Z
    .locals 5
    .param p1, "pid"    # I

    .line 1105
    const/4 v0, 0x0

    .line 1106
    .local v0, "result":Z
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v1

    .line 1107
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 1108
    .local v2, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getFreezingTimer()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 1109
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetFreezingTimer()V

    .line 1110
    const/4 v0, 0x1

    .line 1112
    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_0
    monitor-exit v1

    .line 1113
    return v0

    .line 1112
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isNotifyDisplayEvent(III)Z
    .locals 5
    .param p1, "pid"    # I
    .param p2, "state"    # I
    .param p3, "displayId"    # I

    .line 385
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v0

    .line 386
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 387
    .local v1, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-eqz v1, :cond_0

    .line 388
    iget-object v2, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDisplayState:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDisplayState:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->toScreenState(I)I

    move-result v2

    .line 390
    .local v2, "newState":I
    iget-object v3, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDisplayState:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 392
    monitor-exit v0

    return v4

    .line 395
    .end local v2    # "newState":I
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 396
    .end local v1    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isProcessFrozen(I)Z
    .locals 3
    .param p1, "pid"    # I

    .line 338
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 340
    .local v1, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 341
    .end local v1    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isProcessFrozenByUid(I)Z
    .locals 6
    .param p1, "uid"    # I

    .line 416
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v0

    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, "hasThisUid":Z
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 419
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 420
    .local v4, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget v5, v4, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    if-ne v5, p1, :cond_0

    .line 421
    const/4 v1, 0x1

    .line 422
    iget-boolean v5, v4, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-nez v5, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 424
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v4    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_0
    goto :goto_0

    .line 425
    :cond_1
    monitor-exit v0

    return v1

    .line 426
    .end local v1    # "hasThisUid":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isProcessRealFrozen(I)Z
    .locals 3
    .param p1, "pid"    # I

    .line 355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 356
    .local v0, "id":J
    invoke-static {p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isFrozen(I)Z

    move-result v2

    .line 357
    .local v2, "isFrozen":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 358
    return v2
.end method

.method public isProcessRealFrozenByUid(I)Z
    .locals 6
    .param p1, "uid"    # I

    .line 430
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v0

    .line 431
    const/4 v1, 0x0

    .line 432
    .local v1, "hasThisUid":Z
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 433
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 434
    .local v4, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget v5, v4, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    if-ne v5, p1, :cond_0

    .line 435
    const/4 v1, 0x1

    .line 436
    iget v5, v4, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {p0, v5}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isProcessRealFrozen(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 437
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 440
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v4    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_0
    goto :goto_0

    .line 441
    :cond_1
    monitor-exit v0

    return v1

    .line 442
    .end local v1    # "hasThisUid":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method declared-synchronized isScreenOn()Z
    .locals 1

    monitor-enter p0

    .line 493
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    throw v0
.end method

.method public noteAppInactive(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z

    .line 1176
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStandbyAppList:Ljava/util/HashSet;

    monitor-enter v0

    .line 1177
    if-eqz p2, :cond_0

    .line 1178
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStandbyAppList:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1184
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1180
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStandbyAppList:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1181
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStandbyAppList:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1184
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck()V

    .line 1186
    return-void

    .line 1184
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteDisplayStateChanged(III)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "state"    # I
    .param p3, "displayId"    # I

    .line 405
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v0

    .line 406
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 407
    .local v1, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-eqz v1, :cond_1

    .line 408
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v2, :cond_0

    const-string v2, "ApplicationFreeze"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNotifyDisplayEvent pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->toScreenState(I)I

    move-result v2

    .line 410
    .local v2, "s":I
    iget-object v3, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDisplayState:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .end local v1    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v2    # "s":I
    :cond_1
    monitor-exit v0

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteIdleState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1138
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mMonkeyMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCurrentlyIdleState:I

    .line 1139
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleIdleState()V

    .line 1140
    return-void
.end method

.method public declared-synchronized noteKeyguardStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    monitor-enter p0

    .line 315
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 316
    .local v0, "isKeyguardOn":Z
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsKeyguardOn:Z

    if-eq v1, v0, :cond_1

    .line 317
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsKeyguardOn:Z

    .line 318
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    if-eqz v1, :cond_1

    const-string v1, "ApplicationFreeze"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "noteKeyguardStateChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsKeyguardOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_1
    monitor-exit p0

    return-void

    .line 314
    .end local v0    # "isKeyguardOn":Z
    .end local p1    # "state":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 314
    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    throw p1
.end method

.method public noteNetworkConnected(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .line 138
    const-string v0, "ApplicationFreeze"

    const-string/jumbo v1, "noteNetworkConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$NetworkConnectedRunnable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$NetworkConnectedRunnable;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method public noteProcessStatus([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[Z)V
    .locals 8
    .param p1, "pids"    # [I
    .param p2, "uids"    # [I
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "adjs"    # [I
    .param p5, "reasonPids"    # [I
    .param p6, "reasonPackageNames"    # [Ljava/lang/String;
    .param p7, "execServiceSize"    # [Z

    .line 296
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mAllProcessList:Lcn/nubia/server/appmgmt/freezer/AllProcessList;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->updateProcess([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[Z)V

    .line 297
    return-void
.end method

.method public noteProcessStatusChanged()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mGetStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 302
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mGetStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method

.method public noteResumingActivity(ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 292
    return-void
.end method

.method public declared-synchronized noteScreenStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    monitor-enter p0

    .line 306
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 307
    .local v0, "isScreenOn":Z
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsScreenOn:Z

    if-eq v1, v0, :cond_2

    .line 308
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsScreenOn:Z

    .line 309
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    if-eqz v1, :cond_1

    const-string v1, "ApplicationFreeze"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "noteScreenStateChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_2
    monitor-exit p0

    return-void

    .line 305
    .end local v0    # "isScreenOn":Z
    .end local p1    # "state":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 305
    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    throw p1
.end method

.method public noteSetMonkeyDebug(Z)V
    .locals 3
    .param p1, "monkeyMode"    # Z

    .line 1231
    const-string v0, "ApplicationFreeze"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close log in monkey mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mMonkeyMode:Z

    .line 1233
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$MonkeySwitchRunnable;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$MonkeySwitchRunnable;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1234
    return-void
.end method

.method public noteWindowStateChange(III)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "windowId"    # I
    .param p3, "state"    # I

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "isRealChanged":Z
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 327
    .local v2, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {v2, p2, p3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->noteWindowChange(II)Z

    move-result v3

    move v0, v3

    .line 330
    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    if-eqz v0, :cond_2

    .line 332
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    if-eqz v1, :cond_1

    const-string v1, "ApplicationFreeze"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "noteWindowStateChange pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck()V

    .line 335
    :cond_2
    return-void

    .line 330
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public notifyInitComplete()V
    .locals 3

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "nubia.freezer.action.INIT_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 257
    return-void
.end method

.method preCheckOnProcessWithoutLink(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 8
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 641
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 642
    :cond_0
    iget-boolean v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 643
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/freezer/IStrategy;

    .line 644
    .local v3, "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    const/4 v4, 0x1

    .line 645
    .local v4, "thisAllowed":Z
    instance-of v5, v3, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;

    if-eqz v5, :cond_2

    .line 646
    const/4 v4, 0x1

    goto :goto_4

    .line 648
    :cond_2
    iget v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCurrentlyIdleState:I

    if-ne v5, v2, :cond_7

    .line 649
    const/4 v5, 0x0

    .line 650
    .local v5, "dozeFlag":Z
    iget-object v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    invoke-virtual {v6, p1}, Lcn/nubia/server/appmgmt/freezer/NetworkCheck;->isNoFreezeApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 651
    instance-of v5, v3, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;

    goto :goto_3

    .line 653
    :cond_3
    instance-of v6, v3, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;

    if-nez v6, :cond_5

    instance-of v6, v3, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move v6, v0

    goto :goto_2

    :cond_5
    :goto_1
    move v6, v2

    :goto_2
    move v5, v6

    .line 655
    :goto_3
    if-eqz v5, :cond_6

    .line 656
    invoke-interface {v3, p1}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v4

    .line 658
    .end local v5    # "dozeFlag":Z
    :cond_6
    goto :goto_4

    .line 659
    :cond_7
    invoke-interface {v3, p1}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v4

    .line 662
    :goto_4
    sget-boolean v5, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v5, :cond_8

    if-nez v4, :cond_8

    const-string v5, "ApplicationFreeze"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "do not freeze "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 662
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_8
    if-nez v4, :cond_9

    return v0

    .line 665
    .end local v3    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    .end local v4    # "thisAllowed":Z
    :cond_9
    goto :goto_0

    .line 666
    :cond_a
    return v2
.end method

.method public registerFreezeChangeCallback(Lnubia/os/IFreezeChangeCallback;)V
    .locals 1
    .param p1, "callback"    # Lnubia/os/IFreezeChangeCallback;

    .line 1117
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNotifier:Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;->registerFreezeChangeCallback(Lnubia/os/IFreezeChangeCallback;)V

    .line 1118
    return-void
.end method

.method declared-synchronized scheduleCheck(J)V
    .locals 13
    .param p1, "delay"    # J

    monitor-enter p0

    .line 505
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isFristCheck:Z

    if-eqz v0, :cond_0

    .line 506
    const-string v0, "ApplicationFreeze"

    const-string v1, "freeze thread is frist check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isFristCheck:Z

    .line 508
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mClearFreezeProcessBeforeBoot:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 510
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-wide/16 p1, 0x0

    .line 511
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 512
    .local v2, "now":J
    iget-wide v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    cmp-long v4, v4, v2

    const-wide v5, 0x7fffffffffffffffL

    if-gtz v4, :cond_2

    iput-wide v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    .line 514
    :cond_2
    add-long v7, v2, p1

    .line 515
    .local v7, "next":J
    iget-wide v9, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_6

    .line 516
    iput-wide v7, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    .line 517
    iget-wide v9, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    iget-wide v11, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIgnorNearestTime:J

    cmp-long v4, v9, v11

    if-lez v4, :cond_3

    .line 518
    iget-wide v9, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIgnorNearestTime:J

    iput-wide v9, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    .line 519
    iput-wide v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIgnorNearestTime:J

    .line 521
    :cond_3
    iget-wide v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    sub-long/2addr v4, v2

    .line 522
    .local v4, "realDelay":J
    cmp-long v0, p1, v0

    if-lez v0, :cond_5

    .line 523
    const-wide/16 v0, 0x7d0

    cmp-long v6, v4, v0

    if-gez v6, :cond_4

    goto :goto_0

    :cond_4
    move-wide v0, v4

    :goto_0
    move-wide v4, v0

    .line 525
    :cond_5
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCheckProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 526
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCheckProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 527
    .end local v4    # "realDelay":J
    goto :goto_1

    :cond_6
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIgnorNearestTime:J

    cmp-long v0, v7, v0

    if-gez v0, :cond_7

    .line 528
    iput-wide v7, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIgnorNearestTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    .line 504
    .end local v2    # "now":J
    .end local v7    # "next":J
    .end local p1    # "delay":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    throw p1
.end method

.method public setAppBehaviorController(Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;)V
    .locals 0
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    .line 289
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mAppBehaviorController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    .line 290
    return-void
.end method

.method public setFreezeCallback(Lnubia/os/IFreezeCallback;)V
    .locals 0
    .param p1, "callback"    # Lnubia/os/IFreezeCallback;

    .line 285
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    .line 286
    return-void
.end method

.method public unfreezeResumeAppRunnable()V
    .locals 2

    .line 1099
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    if-nez v0, :cond_0

    return-void

    .line 1100
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeResumeAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1101
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeResumeAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1102
    return-void
.end method

.method public unfreezeWhenKill(I)V
    .locals 5
    .param p1, "pid"    # I

    .line 462
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    if-nez v0, :cond_0

    return-void

    .line 463
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    return-void

    .line 464
    :cond_1
    const/4 v0, 0x0

    .line 465
    .local v0, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v1

    .line 466
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    move-object v0, v2

    .line 467
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    if-eqz v0, :cond_6

    iget-boolean v1, v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->isKilled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 469
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->setKilled(Z)V

    .line 470
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v2, :cond_3

    const-string v2, "ApplicationFreeze"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "force unfreeze "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_3
    iget v2, v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v2}, Landroid/os/Process;->getFreezeTidsInPid(I)[I

    move-result-object v2

    .line 472
    .local v2, "tids":[I
    if-eqz v2, :cond_4

    .line 473
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    iget v4, v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v2, v4}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->makeSureUnfreeze([II)V

    .line 475
    :cond_4
    if-eqz v0, :cond_5

    .line 476
    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleUnfreezeSameUidProcess(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;Z)V

    .line 478
    :cond_5
    return-void

    .line 468
    .end local v2    # "tids":[I
    :cond_6
    :goto_0
    return-void

    .line 467
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method updateManagedProcess(Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .line 545
    .local p1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    const/4 v0, 0x0

    .line 546
    .local v0, "isUpdate":Z
    const/4 v1, 0x0

    .line 547
    .local v1, "isUpdataStep":Z
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 548
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 549
    .local v6, "processInfo":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-object v7, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v7

    .line 550
    :try_start_0
    iget-object v8, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    iget v9, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 551
    .local v8, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-nez v8, :cond_2

    .line 552
    sget-boolean v4, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v4, :cond_0

    const-string v4, "ApplicationFreeze"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "manager new add "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

    iget-object v9, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcn/nubia/server/appmgmt/AppDataManager;->isDontFreezeWhenTCPConnect(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 554
    iput-boolean v5, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsInTCPWhiteList:Z

    .line 556
    :cond_1
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    iget v5, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 559
    :cond_2
    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v9

    invoke-virtual {v8, v9}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->setAdj(I)Z

    move-result v9

    move v1, v9

    .line 560
    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v9, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v9, v5

    :goto_2
    move v0, v9

    .line 561
    sget-boolean v9, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    if-eqz v9, :cond_5

    if-eqz v1, :cond_5

    const-string v9, "ApplicationFreeze"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " change adj to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 561
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_5
    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getReasonPid()I

    move-result v9

    invoke-virtual {v8, v9}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->setReasonPid(I)Z

    move-result v9

    move v1, v9

    .line 564
    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getReasonPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->setReasonPackageName(Ljava/lang/String;)V

    .line 565
    if-nez v0, :cond_7

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    goto :goto_4

    :cond_7
    :goto_3
    move v4, v5

    :goto_4
    move v0, v4

    .line 566
    sget-boolean v4, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    if-eqz v4, :cond_8

    if-eqz v1, :cond_8

    const-string v4, "ApplicationFreeze"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pid "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " change reason pid "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getReasonPid()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 566
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    .end local v8    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_8
    :goto_5
    monitor-exit v7

    .line 570
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v6    # "processInfo":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    goto/16 :goto_0

    .line 569
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .restart local v6    # "processInfo":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 571
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v6    # "processInfo":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_9
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getQuitProcess(Ljava/util/HashMap;)Z

    move-result v1

    .line 572
    if-nez v0, :cond_b

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    goto :goto_7

    :cond_b
    :goto_6
    move v4, v5

    :goto_7
    move v0, v4

    .line 573
    if-eqz v0, :cond_c

    .line 574
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck(J)V

    .line 576
    :cond_c
    return-void
.end method

.method public updateNubiaData()V
    .locals 1

    .line 541
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->loadData()V

    .line 542
    return-void
.end method
