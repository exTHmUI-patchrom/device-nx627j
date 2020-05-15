.class public Lcn/nubia/server/appmgmt/PreLaunchController;
.super Ljava/lang/Object;
.source "PreLaunchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;,
        Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;,
        Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;,
        Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;,
        Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;,
        Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;
    }
.end annotation


# static fields
.field private static final ADJ_LIMIT:I

.field private static final LAUNCH_DELAY_TIME:I = 0xea60

.field private static final MAX_NUM_THIRD_APP_TO_PRELAUNCH_CACHED_REQUEST:I = 0xa

.field private static final NUM_THIRD_APP_TO_PRELAUNCH_AFTER_BOOT:I = 0xa

.field private static final QUICKEN_FILTER_PATTERN:Ljava/lang/String; = "quicken"

.field private static final TIME_TO_2LEVEL_PRELAUNCH_AFTER_BOOT_COMPLETE:J = 0x3e8L

.field private static final TIME_TO_2LEVEL_PRELAUNCH_WRITE_BLACK_LIST_DELAY:J = 0x1f4L

.field private static final USAGE_PERIOD:J = 0x5265c00L

.field private static final VERIFY_FILTER_PATTERN:Ljava/lang/String; = "verify"

.field private static final mIsMemoryEnough:Z

.field private static final mPreLaunchWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPreLaunchWhiteListByLaunchedActivity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSkip2LevelPreStartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountsUpdateListener:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;

.field private mAllowList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mBehaviorController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

.field private mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackListConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackListInit:Z

.field mCachedRequest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lnubia/os/IAppLearningCallback;

.field private mContext:Landroid/content/Context;

.field private mFirstTime:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsMemoryReady:Z

.field private mIsScreenOn:Z

.field private mNotAllowList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPM:Landroid/content/pm/IPackageManager;

.field private mProcess2LevelPreLaunchIsSuspended:Z

.field private mResetFirstFlagRun:Ljava/lang/Runnable;

.field private mUpdatePreLaunchBlackListRunnable:Ljava/lang/Runnable;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkHandlerThread:Landroid/os/HandlerThread;

.field private mXmlOperator:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/16 v0, 0x384

    :goto_0
    sput v0, Lcn/nubia/server/appmgmt/PreLaunchController;->ADJ_LIMIT:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/PreLaunchController;->mSkip2LevelPreStartList:Ljava/util/ArrayList;

    .line 59
    invoke-static {}, Lcn/nubia/server/appmgmt/PreLaunchController;->checkMemoryEnough()Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/appmgmt/PreLaunchController;->mIsMemoryEnough:Z

    .line 60
    new-instance v0, Lcn/nubia/server/appmgmt/PreLaunchController$1;

    invoke-direct {v0}, Lcn/nubia/server/appmgmt/PreLaunchController$1;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/PreLaunchController;->mPreLaunchWhiteList:Ljava/util/HashMap;

    .line 66
    new-instance v0, Lcn/nubia/server/appmgmt/PreLaunchController$2;

    invoke-direct {v0}, Lcn/nubia/server/appmgmt/PreLaunchController$2;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/PreLaunchController;->mPreLaunchWhiteListByLaunchedActivity:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lnubia/os/IAppLearningCallback;Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Lnubia/os/IAppLearningCallback;
    .param p4, "behaviorCtrl"    # Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mIsMemoryReady:Z

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBehaviorController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    .line 77
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mIsScreenOn:Z

    .line 78
    iput-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mContext:Landroid/content/Context;

    .line 79
    iput-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBatteryManager:Landroid/os/BatteryManager;

    .line 80
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mFirstTime:Z

    .line 81
    iput-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mPM:Landroid/content/pm/IPackageManager;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mAllowList:Ljava/util/HashSet;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mNotAllowList:Ljava/util/HashSet;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBlackList:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBlackListConfig:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Lcn/nubia/server/appmgmt/PreLaunchController$3;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/PreLaunchController$3;-><init>(Lcn/nubia/server/appmgmt/PreLaunchController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mResetFirstFlagRun:Ljava/lang/Runnable;

    .line 95
    iput-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mWorkHandler:Landroid/os/Handler;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBlackListInit:Z

    .line 97
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "twoLevelPreLaunch"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mWorkHandlerThread:Landroid/os/HandlerThread;

    .line 98
    new-instance v1, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;-><init>(Lcn/nubia/server/appmgmt/PreLaunchController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mXmlOperator:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;

    .line 239
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mProcess2LevelPreLaunchIsSuspended:Z

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mCachedRequest:Ljava/util/ArrayList;

    .line 579
    new-instance v0, Lcn/nubia/server/appmgmt/PreLaunchController$7;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/PreLaunchController$7;-><init>(Lcn/nubia/server/appmgmt/PreLaunchController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mUpdatePreLaunchBlackListRunnable:Ljava/lang/Runnable;

    .line 101
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object p3, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mCallback:Lnubia/os/IAppLearningCallback;

    .line 104
    iput-object p4, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBehaviorController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    .line 105
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mWorkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 106
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mWorkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mWorkHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, "packageRemoveFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/server/appmgmt/PreLaunchController$4;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/PreLaunchController$4;-><init>(Lcn/nubia/server/appmgmt/PreLaunchController;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    .local v1, "bootCompleteFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const/16 v2, -0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 129
    iget-object v2, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mContext:Landroid/content/Context;

    new-instance v3, Lcn/nubia/server/appmgmt/PreLaunchController$5;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/PreLaunchController$5;-><init>(Lcn/nubia/server/appmgmt/PreLaunchController;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mPM:Landroid/content/pm/IPackageManager;

    .line 137
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/PreLaunchController;->initBlackList()V

    .line 139
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/PreLaunchController;->initWhiteList()V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/PreLaunchController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 48
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mFirstTime:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/server/appmgmt/PreLaunchController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mFirstTime:Z

    return p1
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 48
    sget-object v0, Lcn/nubia/server/appmgmt/PreLaunchController;->mSkip2LevelPreStartList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/PreLaunchController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 48
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/PreLaunchController;->initBlackListConfig()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/server/appmgmt/PreLaunchController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 48
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/PreLaunchController;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcn/nubia/server/appmgmt/PreLaunchController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 48
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/PreLaunchController;->isCharging()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcn/nubia/server/appmgmt/PreLaunchController;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/PreLaunchController;->isInAppStoreList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcn/nubia/server/appmgmt/PreLaunchController;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/PreLaunchController;->isAllowByPkgName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcn/nubia/server/appmgmt/PreLaunchController;Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;
    .param p1, "x1"    # Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;

    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/PreLaunchController;->doPreLaunch(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/PreLaunchController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 48
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/nubia/server/appmgmt/PreLaunchController;)Landroid/accounts/AccountManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 48
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcn/nubia/server/appmgmt/PreLaunchController;)Lnubia/os/IAppLearningCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 48
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mCallback:Lnubia/os/IAppLearningCallback;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/util/HashMap;
    .locals 1

    .line 48
    sget-object v0, Lcn/nubia/server/appmgmt/PreLaunchController;->mPreLaunchWhiteList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/util/HashMap;
    .locals 1

    .line 48
    sget-object v0, Lcn/nubia/server/appmgmt/PreLaunchController;->mPreLaunchWhiteListByLaunchedActivity:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2400(Lcn/nubia/server/appmgmt/PreLaunchController;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 48
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mPM:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcn/nubia/server/appmgmt/PreLaunchController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 48
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcn/nubia/server/appmgmt/PreLaunchController;)Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 48
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mXmlOperator:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/PreLaunchController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 48
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/PreLaunchController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 48
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBlackListConfig:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/PreLaunchController;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/PreLaunchController;->isForbidPreLaunchByConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/PreLaunchController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 48
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBlackListInit:Z

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/PreLaunchController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 48
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mUpdatePreLaunchBlackListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private cacheRequestDueToProcess2LevelPreLauchSuspended(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "cachedPreLaunchRequest"    # Ljava/lang/Runnable;

    .line 243
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mCachedRequest:Ljava/util/ArrayList;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mCachedRequest:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    monitor-exit v0

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static checkMemoryEnough()Z
    .locals 3

    .line 211
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 212
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 213
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x4e800000

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 214
    .local v1, "totalMemGb":I
    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    return v2

    .line 215
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private doPreLaunch(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;)V
    .locals 3
    .param p1, "r"    # Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;

    .line 320
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/PreLaunchController;->isReadyToPrelaunch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :try_start_0
    invoke-static {p1}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->access$900(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mCallback:Lnubia/os/IAppLearningCallback;

    invoke-static {p1}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->access$1000(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->access$1100(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lnubia/os/IAppLearningCallback;->preLaunchProcess(Ljava/lang/String;I)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mCallback:Lnubia/os/IAppLearningCallback;

    invoke-static {p1}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->access$1200(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->access$1100(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lnubia/os/IAppLearningCallback;->preLaunchProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 329
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    :goto_1
    return-void
.end method

.method private getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mPM:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 350
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mPM:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 351
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    return-object v1

    .line 352
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 353
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 354
    return-object v1
.end method

.method private initBlackList()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBlackList:Ljava/util/ArrayList;

    const-string/jumbo v1, "stub"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method private initBlackListConfig()V
    .locals 7

    .line 156
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mXmlOperator:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 157
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, "needUpdate":Z
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBlackListConfig:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    :try_start_1
    iget-object v4, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBlackListConfig:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    const/4 v2, 0x1

    .line 163
    :cond_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBlackListConfig:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 164
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    if-eqz v2, :cond_1

    .line 167
    :try_start_2
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mWorkHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mUpdatePreLaunchBlackListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mWorkHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mUpdatePreLaunchBlackListRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "needUpdate":Z
    goto :goto_0

    .line 164
    .restart local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "needUpdate":Z
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 173
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "needUpdate":Z
    :catchall_1
    move-exception v1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBlackListInit:Z

    throw v1

    .line 171
    :catch_0
    move-exception v1

    .line 173
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBlackListInit:Z

    .line 174
    nop

    .line 175
    return-void
.end method

.method private initWhiteList()V
    .locals 4

    .line 147
    sget-boolean v0, Lcn/nubia/server/appmgmt/PreLaunchController;->mIsMemoryEnough:Z

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mAccountManager:Landroid/accounts/AccountManager;

    .line 149
    new-instance v0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;-><init>(Lcn/nubia/server/appmgmt/PreLaunchController;Lcn/nubia/server/appmgmt/PreLaunchController$1;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mAccountsUpdateListener:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;

    .line 150
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mAccountsUpdateListener:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->checkInit()V

    .line 151
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mAccountsUpdateListener:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 152
    return-void
.end method

.method private isAllowByPkgName(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 358
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/PreLaunchController;->isForbidPreLaunchByConfig(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 359
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mAllowList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 360
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mNotAllowList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 362
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/PreLaunchController;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "applicationName":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 365
    :cond_3
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 366
    .local v3, "black":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 367
    iget-object v2, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mNotAllowList:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 368
    return v1

    .line 370
    :cond_4
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mAllowList:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 371
    return v2

    .line 374
    .end local v3    # "black":Ljava/lang/String;
    :cond_5
    return v1

    .line 363
    :cond_6
    :goto_0
    return v1
.end method

.method private isCharging()Z
    .locals 2

    .line 338
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBatteryManager:Landroid/os/BatteryManager;

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBatteryManager:Landroid/os/BatteryManager;

    .line 341
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBatteryManager:Landroid/os/BatteryManager;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v0

    return v0

    .line 344
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isForbidPreLaunchByConfig(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBlackListConfig:Ljava/util/ArrayList;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBlackListConfig:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isInAppStoreList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBehaviorController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mBehaviorController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->isInAppStoreList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized isReadyToPrelaunch()Z
    .locals 1

    monitor-enter p0

    .line 315
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mIsMemoryReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/appmgmt/PreLaunchController;
    throw v0
.end method

.method private isScreenOn()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mIsScreenOn:Z

    return v0
.end method

.method private resumeProcess2LevelPreLauchRequest()V
    .locals 6

    .line 249
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mCachedRequest:Ljava/util/ArrayList;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mCachedRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 251
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    .end local v2    # "r":Ljava/lang/Runnable;
    goto :goto_0

    .line 253
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mCachedRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 254
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addBlackList(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/PreLaunchController$6;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/PreLaunchController$6;-><init>(Lcn/nubia/server/appmgmt/PreLaunchController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    return-void
.end method

.method noteAdjUpdate([I)V
    .locals 5
    .param p1, "adjs"    # [I

    .line 269
    if-nez p1, :cond_0

    return-void

    .line 270
    :cond_0
    const/16 v0, -0x2710

    .line 271
    .local v0, "max":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "max":I
    .local v3, "max":I
    :goto_0
    if-ge v0, v1, :cond_2

    aget v4, p1, v0

    .line 272
    .local v4, "adj":I
    if-le v4, v3, :cond_1

    .line 273
    move v3, v4

    .line 271
    .end local v4    # "adj":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_2
    monitor-enter p0

    .line 277
    :try_start_0
    sget v0, Lcn/nubia/server/appmgmt/PreLaunchController;->ADJ_LIMIT:I

    if-lt v3, v0, :cond_3

    const/4 v2, 0x1

    nop

    :cond_3
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mIsMemoryReady:Z

    .line 278
    monitor-exit p0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteProcess2LevelPreLauchResume()V
    .locals 1

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mProcess2LevelPreLaunchIsSuspended:Z

    .line 265
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/PreLaunchController;->resumeProcess2LevelPreLauchRequest()V

    .line 266
    return-void
.end method

.method public noteProcess2LevelPreLauchSuspended()V
    .locals 1

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mProcess2LevelPreLaunchIsSuspended:Z

    .line 259
    return-void
.end method

.method noteProcessNeedPreLaunch(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 7
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "isBg"    # Z
    .param p5, "is2LevelLaunch"    # Z

    .line 223
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mCallback:Lnubia/os/IAppLearningCallback;

    if-nez v0, :cond_0

    goto :goto_2

    .line 224
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;-><init>(Lcn/nubia/server/appmgmt/PreLaunchController;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 226
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz p5, :cond_1

    .line 227
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mProcess2LevelPreLaunchIsSuspended:Z

    if-eqz v1, :cond_1

    .line 228
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->cacheRequestDueToProcess2LevelPreLauchSuspended(Ljava/lang/Runnable;)V

    .line 229
    return-void

    .line 233
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mHandler:Landroid/os/Handler;

    if-nez p4, :cond_3

    if-eqz p5, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x2710

    goto :goto_1

    :cond_3
    :goto_0
    const-wide/16 v2, 0x3e8

    :goto_1
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mFirstTime:Z

    if-eqz v1, :cond_4

    .line 235
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mResetFirstFlagRun:Ljava/lang/Runnable;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    :cond_4
    return-void

    .line 223
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_5
    :goto_2
    return-void
.end method

.method noteScreenStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 282
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mIsScreenOn:Z

    .line 283
    return-void
.end method

.method noteStartActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortComponentName"    # Ljava/lang/String;

    .line 286
    sget-boolean v0, Lcn/nubia/server/appmgmt/PreLaunchController;->mIsMemoryEnough:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 287
    :cond_0
    sget-object v0, Lcn/nubia/server/appmgmt/PreLaunchController;->mPreLaunchWhiteListByLaunchedActivity:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    sget-object v2, Lcn/nubia/server/appmgmt/PreLaunchController;->mPreLaunchWhiteListByLaunchedActivity:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;

    .line 290
    .local v2, "info":Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;->getLoginActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;->getLoginedState()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 292
    const-string v3, "PreLaunchController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set the state of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " login is true."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v2, v4}, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;->setLoginedState(Z)V

    .line 295
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mAccountsUpdateListener:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->checkInit()V

    goto :goto_1

    .line 297
    :cond_1
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;->getLogoutActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 298
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;->getLoginedState()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    const-string v3, "PreLaunchController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set the state of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " login is false."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;->setLoginedState(Z)V

    .line 302
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mAccountsUpdateListener:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->checkInit()V

    .line 306
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "info":Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;
    :cond_2
    :goto_1
    goto/16 :goto_0

    .line 307
    :cond_3
    return-void

    .line 286
    :cond_4
    :goto_2
    return-void
.end method

.method setAppLearningCallback(Lnubia/os/IAppLearningCallback;)V
    .locals 0
    .param p1, "callback"    # Lnubia/os/IAppLearningCallback;

    .line 219
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mCallback:Lnubia/os/IAppLearningCallback;

    .line 220
    return-void
.end method

.method public updatePreStartByWhiteList()V
    .locals 1

    .line 206
    sget-boolean v0, Lcn/nubia/server/appmgmt/PreLaunchController;->mIsMemoryEnough:Z

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController;->mAccountsUpdateListener:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->checkInit()V

    .line 208
    return-void
.end method
