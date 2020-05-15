.class public Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;
.super Ljava/lang/Object;
.source "GamePerformanceModeCtrl.java"


# static fields
.field private static final ACTION_PERFORMANCE:Ljava/lang/String; = "click_performance_notification"

.field private static final DB_GAME_PERFORMANCE_MODE:Ljava/lang/String; = "nubia_performance_mode"

.field private static final DB_GAME_PERFORMANCE_MODE_ALL_LIST:Ljava/lang/String; = "NubiaperformanceMode"

.field private static DEBUG:Z = false

.field private static final GAME_NOTIFICATION:I = 0x400

.field private static final TAG:Ljava/lang/String; = "GamePerformanceModeCtrl"


# instance fields
.field private NotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private isOpenGamekey:Z

.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lnubia/widget/NubiaCenterAlertDialog;

.field private mGameBinderRunning:Landroid/os/IBinder;

.field private mGameKeysHelper:Lcn/nubia/game/GameKeysHelper;

.field private mGamePerformanceMode:I

.field private mGamekeysObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIsPerfLockAcquired:Z

.field private mIsSupportGameKeys:Z

.field private mKm:Landroid/app/KeyguardManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPerformanceModeObserver:Landroid/database/ContentObserver;

.field private mPerformanceModeReceiver:Landroid/content/BroadcastReceiver;

.field private mPerformanceModeView:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
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
    sput-boolean v0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mIsSupportGameKeys:Z

    .line 71
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mIsPerfLockAcquired:Z

    .line 73
    iput v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mGamePerformanceMode:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mWorkHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$3;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$3;-><init>(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mPerformanceModeReceiver:Landroid/content/BroadcastReceiver;

    .line 169
    new-instance v0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$4;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$4;-><init>(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->NotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    invoke-static {}, Lcn/nubia/game/GameModeHelper;->IsSupportGameKeys()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mIsSupportGameKeys:Z

    .line 84
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mIsSupportGameKeys:Z

    if-nez v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    iput-object p2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mAm:Landroid/app/ActivityManager;

    .line 90
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->initPerformanceDB()V

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GamePerformanceModeCtrl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "mWorkHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mWorkHandler:Landroid/os/Handler;

    .line 94
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mGameBinderRunning:Landroid/os/IBinder;

    .line 95
    invoke-static {}, Lcn/nubia/game/GameKeysHelper;->getDefault()Lcn/nubia/game/GameKeysHelper;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mGameKeysHelper:Lcn/nubia/game/GameKeysHelper;

    .line 96
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->getGamekeyStatus()V

    .line 97
    new-instance v1, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;-><init>(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mGamekeysObserver:Landroid/database/ContentObserver;

    .line 132
    new-instance v1, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$2;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$2;-><init>(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mPerformanceModeObserver:Landroid/database/ContentObserver;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->registerSettingsObserver(Landroid/content/ContentResolver;)V

    .line 146
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->registerReceiver()V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 53
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 53
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->isOpenGamekey:Z

    return v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 53
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->showAlertDialog()V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->isOpenGamekey:Z

    return p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 53
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->clearSuperPerformanceNotification()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Lnubia/widget/NubiaCenterAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 53
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;Lnubia/widget/NubiaCenterAlertDialog;)Lnubia/widget/NubiaCenterAlertDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;
    .param p1, "x1"    # Lnubia/widget/NubiaCenterAlertDialog;

    .line 53
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Lcn/nubia/game/GameKeysHelper;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 53
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mGameKeysHelper:Lcn/nubia/game/GameKeysHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 53
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mKm:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;
    .param p1, "x1"    # Landroid/app/KeyguardManager;

    .line 53
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mKm:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 53
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->getRunningPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->readProviderData(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 53
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->dismissPerformanceModeView()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 53
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mGamePerformanceMode:I

    return v0
.end method

.method static synthetic access$702(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;
    .param p1, "x1"    # I

    .line 53
    iput p1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mGamePerformanceMode:I

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->acquirePerformanceModeLock(I)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 53
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->showPerformanceModeView()V

    return-void
.end method

.method private acquirePerformanceModeLock(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 225
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GamePerformanceModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******acquirePerformanceModeLock  Mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    const-string v0, ""

    .line 227
    .local v0, "tag":Ljava/lang/String;
    const/4 v1, 0x0

    .line 229
    .local v1, "type":I
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mIsPerfLockAcquired:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mGameBinderRunning:Landroid/os/IBinder;

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mGameBinderRunning:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/os/BSPApplicationManager$Trigger;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 231
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mIsPerfLockAcquired:Z

    .line 233
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->clearSuperPerformanceNotification()V

    .line 234
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 235
    const-string v0, "com.superGamePerf.gpumode"

    .line 236
    const/16 v1, 0x13

    goto :goto_0

    .line 237
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 238
    const-string v0, "com.superGamePerf.cpumode"

    .line 239
    const/16 v1, 0x12

    goto :goto_0

    .line 240
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 241
    const-string v0, "com.superGamePerf.running"

    .line 242
    const/16 v1, 0x9

    .line 243
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->sendSuperPerformanceNotification()V

    .line 246
    :cond_4
    :goto_0
    if-lez p1, :cond_5

    .line 247
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mIsPerfLockAcquired:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mGameBinderRunning:Landroid/os/IBinder;

    if-eqz v3, :cond_5

    .line 248
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mGameBinderRunning:Landroid/os/IBinder;

    const-wide/16 v4, 0x0

    invoke-static {v3, v0, v1, v4, v5}, Landroid/os/BSPApplicationManager$Trigger;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 253
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mIsPerfLockAcquired:Z

    .line 256
    :cond_5
    return-void
.end method

.method private clearSuperPerformanceNotification()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 371
    :cond_0
    return-void
.end method

.method private dismissPerformanceModeView()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mPerformanceModeView:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mPerformanceModeView:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->dismiss()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mPerformanceModeView:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    .line 222
    :cond_0
    return-void
.end method

.method private getRunningPackageName()Ljava/lang/String;
    .locals 5

    .line 259
    const-string v0, ""

    .line 261
    .local v0, "mRunningPackageName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mAm:Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    .line 262
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mAm:Landroid/app/ActivityManager;

    .line 264
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mAm:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 265
    .local v1, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 267
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "GamePerformanceModeCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRunningPackageName:="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v1    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GamePerformanceModeCtrl"

    const-string v3, "getProcessName failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private initPerformanceDB()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_performance_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    return-void
.end method

.method private readProviderData(Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "ferformanceMode":I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "NubiaperformanceMode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "value":Ljava/lang/String;
    const-string v2, "GamePerformanceModeCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******* readProviderData value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 280
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 281
    .local v6, "tile":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .end local v6    # "tile":Ljava/lang/String;
    goto :goto_1

    .line 283
    .restart local v6    # "tile":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v3, :cond_1

    .line 284
    const-string v2, "+"

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 285
    goto :goto_2

    .line 280
    .end local v6    # "tile":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 289
    :cond_2
    :goto_2
    return v0
.end method

.method private registerReceiver()V
    .locals 4

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v0, "gamePerformanceModeFilter":Landroid/content/IntentFilter;
    const-string v1, "cn.nubia.intent.action.PERFORMANCE_MODE_OPTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 153
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mPerformanceModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .local v2, "performanceNotificationFilter":Landroid/content/IntentFilter;
    const-string v3, "click_performance_notification"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 157
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->NotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    return-void
.end method

.method private registerSettingsObserver(Landroid/content/ContentResolver;)V
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 339
    const-string/jumbo v0, "nubia_db_game_keys"

    .line 340
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mGamekeysObserver:Landroid/database/ContentObserver;

    .line 339
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 342
    const-string/jumbo v0, "nubia_performance_mode"

    .line 343
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mPerformanceModeObserver:Landroid/database/ContentObserver;

    .line 342
    const/4 v3, -0x1

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 345
    return-void
.end method

.method private sendSuperPerformanceNotification()V
    .locals 5

    .line 348
    const-string v0, "GamePerformanceModeCtrl"

    const-string/jumbo v1, "sendNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "click_performance_notification"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 351
    .local v0, "sender":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    const v3, 0x3070068

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30c0087

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 354
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    .line 355
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30c0086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 356
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 357
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 358
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 359
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 360
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 362
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 363
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0x400

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 364
    return-void
.end method

.method private setPerformanceMode(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 293
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getGameLauncherAppNameList()Ljava/util/List;

    move-result-object v0

    .line 294
    .local v0, "gameLauncherAppNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 295
    .local v1, "isGameSpaceApp":Z
    if-eqz v0, :cond_2

    .line 296
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 297
    .local v3, "pkglist":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->readProviderData(Ljava/lang/String;)I

    move-result v2

    .line 299
    .local v2, "mode":I
    const-string v4, "GamePerformanceModeCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "******* setPerformanceMode mode ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-eqz v2, :cond_1

    .line 301
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "nubia_performance_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    const/4 v1, 0x1

    goto :goto_1

    .line 306
    .end local v2    # "mode":I
    .end local v3    # "pkglist":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 307
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    iget v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mGamePerformanceMode:I

    if-eqz v2, :cond_2

    .line 308
    const-string v2, "GamePerformanceModeCtrl"

    const-string v3, "******* setPerformanceMode mode = 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "nubia_performance_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    :cond_2
    return-void
.end method

.method private showAlertDialog()V
    .locals 2

    .line 375
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;-><init>(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 398
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private showPerformanceModeView()V
    .locals 3

    .line 205
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mPerformanceModeView:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mPerformanceModeView:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->getRunningPackageName()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mPerformanceModeView:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    .line 210
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mPerformanceModeView:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->setAttachePackageName(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mPerformanceModeView:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v0    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getGamekeyStatus()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$5;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$5;-><init>(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 196
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "GamePerformanceModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notePausingActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->dismissPerformanceModeView()V

    .line 201
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .line 180
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "GamePerformanceModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteResumingActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->isOpenGamekey:Z

    if-eqz v0, :cond_1

    .line 187
    invoke-direct {p0, p3}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->setPerformanceMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_1
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method
