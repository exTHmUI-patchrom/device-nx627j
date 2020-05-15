.class public Lcom/android/server/wifi/rtt/RttServiceImpl;
.super Landroid/net/wifi/rtt/IWifiRttManager$Stub;
.source "RttServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;,
        Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;,
        Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;,
        Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;
    }
.end annotation


# static fields
.field private static final CONTROL_PARAM_OVERRIDE_ASSUME_NO_PRIVILEGE_DEFAULT:I = 0x0

.field private static final CONTROL_PARAM_OVERRIDE_ASSUME_NO_PRIVILEGE_NAME:Ljava/lang/String; = "override_assume_no_privilege"

.field private static final CONVERSION_US_TO_MS:I = 0x3e8

.field private static final DEFAULT_BACKGROUND_PROCESS_EXEC_GAP_MS:J = 0x1b7740L

.field private static final HAL_RANGING_TIMEOUT_MS:J = 0x1388L

.field static final HAL_RANGING_TIMEOUT_TAG:Ljava/lang/String; = "RttServiceImpl HAL Ranging Timeout"

.field static final MAX_QUEUED_PER_UID:I = 0x14

.field private static final TAG:Ljava/lang/String; = "RttServiceImpl"

.field private static final VDBG:Z = false


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAwareBinder:Landroid/net/wifi/aware/IWifiAwareManager;

.field private mBackgroundProcessExecGapMs:J

.field private mClock:Lcom/android/server/wifi/Clock;

.field private final mContext:Landroid/content/Context;

.field private mDbg:Z

.field private mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRttMetrics:Lcom/android/server/wifi/rtt/RttMetrics;

.field private mRttNative:Lcom/android/server/wifi/rtt/RttNative;

.field private mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

.field private final mShellCommand:Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;

.field private mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Landroid/net/wifi/rtt/IWifiRttManager$Stub;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mDbg:Z

    .line 110
    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl;Lcom/android/server/wifi/rtt/RttServiceImpl$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mShellCommand:Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;

    .line 112
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mShellCommand:Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;

    invoke-virtual {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->reset()V

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/rtt/RttServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 77
    iget-boolean v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mDbg:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/Clock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mClock:Lcom/android/server/wifi/Clock;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/rtt/RttServiceImpl;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/rtt/RttServiceImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 77
    iget-wide v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mBackgroundProcessExecGapMs:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/rtt/RttServiceImpl;)Landroid/net/wifi/aware/IWifiAwareManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mAwareBinder:Landroid/net/wifi/aware/IWifiAwareManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/rtt/RttServiceImpl;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/rtt/RttServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/rtt/RttServiceImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/wifi/rtt/RttServiceImpl;->enableVerboseLogging(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/rtt/RttServiceImpl;Lcom/android/server/wifi/FrameworkFacade;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;
    .param p1, "x1"    # Lcom/android/server/wifi/FrameworkFacade;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/wifi/rtt/RttServiceImpl;->updateBackgroundThrottlingInterval(Lcom/android/server/wifi/FrameworkFacade;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/rtt/RttServiceImpl;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttMetrics:Lcom/android/server/wifi/rtt/RttMetrics;

    return-object v0
.end method

.method private checkLocationHardware()Z
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private enableVerboseLogging(I)V
    .locals 2
    .param p1, "verbose"    # I

    .line 301
    if-lez p1, :cond_0

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mDbg:Z

    goto :goto_0

    .line 304
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mDbg:Z

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttNative:Lcom/android/server/wifi/rtt/RttNative;

    iget-boolean v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mDbg:Z

    iput-boolean v1, v0, Lcom/android/server/wifi/rtt/RttNative;->mDbg:Z

    .line 310
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttMetrics:Lcom/android/server/wifi/rtt/RttMetrics;

    iget-boolean v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mDbg:Z

    iput-boolean v1, v0, Lcom/android/server/wifi/rtt/RttMetrics;->mDbg:Z

    .line 311
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "RttServiceImpl"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "RttServiceImpl"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method private enforceLocationHardware()V
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "RttServiceImpl"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public static synthetic lambda$cancelRanging$4(Lcom/android/server/wifi/rtt/RttServiceImpl;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 483
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->access$800(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;ILandroid/os/WorkSource;)V

    .line 484
    return-void
.end method

.method public static synthetic lambda$disable$2(Lcom/android/server/wifi/rtt/RttServiceImpl;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    invoke-static {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->access$2000(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;)V

    .line 362
    return-void
.end method

.method public static synthetic lambda$enableIfPossible$1(Lcom/android/server/wifi/rtt/RttServiceImpl;)V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->access$2100(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;Z)V

    .line 349
    return-void
.end method

.method public static synthetic lambda$onRangingResults$5(Lcom/android/server/wifi/rtt/RttServiceImpl;ILjava/util/List;)V
    .locals 1
    .param p1, "cmdId"    # I
    .param p2, "results"    # Ljava/util/List;

    .line 494
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->access$1800(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;ILjava/util/List;)V

    .line 495
    return-void
.end method

.method public static synthetic lambda$start$0(Lcom/android/server/wifi/rtt/RttServiceImpl;Lcom/android/server/wifi/rtt/RttNative;)V
    .locals 1
    .param p1, "rttNative"    # Lcom/android/server/wifi/rtt/RttNative;

    .line 296
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    iget-object v0, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcom/android/server/wifi/rtt/RttNative;->start(Landroid/os/Handler;)V

    .line 297
    return-void
.end method

.method public static synthetic lambda$startRanging$3(Lcom/android/server/wifi/rtt/RttServiceImpl;Landroid/os/WorkSource;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Ljava/lang/String;Landroid/net/wifi/rtt/RangingRequest;Landroid/net/wifi/rtt/IRttCallback;Z)V
    .locals 12
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .param p2, "uid"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "dr"    # Landroid/os/IBinder$DeathRecipient;
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "request"    # Landroid/net/wifi/rtt/RangingRequest;
    .param p7, "callback"    # Landroid/net/wifi/rtt/IRttCallback;
    .param p8, "isCalledFromPrivilegedContext"    # Z

    .line 458
    move-object v0, p1

    .line 459
    .local v0, "sourceToUse":Landroid/os/WorkSource;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    move v11, p2

    goto :goto_1

    .line 460
    :cond_1
    :goto_0
    new-instance v1, Landroid/os/WorkSource;

    move v11, p2

    invoke-direct {v1, v11}, Landroid/os/WorkSource;-><init>(I)V

    move-object v0, v1

    .line 462
    :goto_1
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    move v3, v11

    move-object v4, v0

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->access$1900(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;ILandroid/os/WorkSource;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Ljava/lang/String;Landroid/net/wifi/rtt/RangingRequest;Landroid/net/wifi/rtt/IRttCallback;Z)V

    .line 464
    return-void
.end method

.method private sendRttStateChangedBroadcast(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 518
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.rtt.action.WIFI_RTT_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 520
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 521
    return-void
.end method

.method private updateBackgroundThrottlingInterval(Lcom/android/server/wifi/FrameworkFacade;)V
    .locals 4
    .param p1, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;

    .line 314
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "wifi_rtt_background_exec_gap_ms"

    const-wide/32 v2, 0x1b7740

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getLongSetting(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mBackgroundProcessExecGapMs:J

    .line 317
    return-void
.end method


# virtual methods
.method public cancelRanging(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    invoke-direct {p0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->enforceLocationHardware()V

    .line 471
    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p1}, Landroid/os/WorkSource;->clearNames()V

    .line 477
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    iget-object v0, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$yKNVX3EBmF3Pff0jYyCC81kRfuk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$yKNVX3EBmF3Pff0jYyCC81kRfuk;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl;Landroid/os/WorkSource;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    return-void

    .line 478
    :cond_2
    :goto_0
    const-string v0, "RttServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelRanging: invalid work-source -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method public disable()V
    .locals 2

    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->sendRttStateChangedBroadcast(Z)V

    .line 360
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    iget-object v0, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$wP--CWXsaxeveXsy_7abZeA-Q-w;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$wP--CWXsaxeveXsy_7abZeA-Q-w;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump RttService from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    return-void

    .line 531
    :cond_0
    const-string v0, "Wi-Fi RTT Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public enableIfPossible()V
    .locals 3

    .line 340
    invoke-virtual {p0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->isAvailable()Z

    move-result v0

    .line 342
    .local v0, "isAvailable":Z
    if-nez v0, :cond_0

    .line 343
    return-void

    .line 345
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/rtt/RttServiceImpl;->sendRttStateChangedBroadcast(Z)V

    .line 346
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    iget-object v1, v1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$q9ANpyRqIip_-lKXLzaUsSwgxFs;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$q9ANpyRqIip_-lKXLzaUsSwgxFs;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    return-void
.end method

.method public getMockableCallingUid()I
    .locals 1

    .line 328
    invoke-static {}, Lcom/android/server/wifi/rtt/RttServiceImpl;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttNative:Lcom/android/server/wifi/rtt/RttNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/rtt/RttNative;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mLocationManager:Landroid/location/LocationManager;

    .line 378
    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 377
    :goto_0
    return v0
.end method

.method public onRangingResults(ILjava/util/List;)V
    .locals 2
    .param p1, "cmdId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/wifi/V1_0/RttResult;",
            ">;)V"
        }
    .end annotation

    .line 493
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/wifi/V1_0/RttResult;>;"
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    iget-object v0, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$tujYHkgiwM9Q0G7bKGi1Mj7KnVg;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$tujYHkgiwM9Q0G7bKGi1Mj7KnVg;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 368
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mShellCommand:Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 369
    return-void
.end method

.method public start(Landroid/os/Looper;Lcom/android/server/wifi/Clock;Landroid/net/wifi/aware/IWifiAwareManager;Lcom/android/server/wifi/rtt/RttNative;Lcom/android/server/wifi/rtt/RttMetrics;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/FrameworkFacade;)V
    .locals 6
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "clock"    # Lcom/android/server/wifi/Clock;
    .param p3, "awareBinder"    # Landroid/net/wifi/aware/IWifiAwareManager;
    .param p4, "rttNative"    # Lcom/android/server/wifi/rtt/RttNative;
    .param p5, "rttMetrics"    # Lcom/android/server/wifi/rtt/RttMetrics;
    .param p6, "wifiPermissionsUtil"    # Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .param p7, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;

    .line 227
    iput-object p2, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mClock:Lcom/android/server/wifi/Clock;

    .line 228
    iput-object p3, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mAwareBinder:Landroid/net/wifi/aware/IWifiAwareManager;

    .line 229
    iput-object p4, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttNative:Lcom/android/server/wifi/rtt/RttNative;

    .line 230
    iput-object p5, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttMetrics:Lcom/android/server/wifi/rtt/RttMetrics;

    .line 231
    iput-object p6, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 232
    iput-object p7, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 233
    new-instance v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    invoke-direct {v0, p0, p1, p4}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl;Landroid/os/Looper;Lcom/android/server/wifi/rtt/RttNative;)V

    iput-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    .line 235
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 236
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 237
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mLocationManager:Landroid/location/LocationManager;

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/rtt/RttServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/rtt/RttServiceImpl$1;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "wifi_verbose_logging_enabled"

    .line 257
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/server/wifi/rtt/RttServiceImpl$2;

    iget-object v4, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    iget-object v4, v4, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4, p7}, Lcom/android/server/wifi/rtt/RttServiceImpl$2;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl;Landroid/os/Handler;Lcom/android/server/wifi/FrameworkFacade;)V

    .line 256
    const/4 v4, 0x1

    invoke-virtual {p7, v1, v2, v4, v3}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 266
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "wifi_verbose_logging_enabled"

    const/4 v3, 0x0

    invoke-virtual {p7, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/rtt/RttServiceImpl;->enableVerboseLogging(I)V

    .line 269
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "wifi_rtt_background_exec_gap_ms"

    .line 270
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/server/wifi/rtt/RttServiceImpl$3;

    iget-object v5, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    iget-object v5, v5, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5, p7}, Lcom/android/server/wifi/rtt/RttServiceImpl$3;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl;Landroid/os/Handler;Lcom/android/server/wifi/FrameworkFacade;)V

    .line 269
    invoke-virtual {p7, v1, v2, v4, v3}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 279
    invoke-direct {p0, p7}, Lcom/android/server/wifi/rtt/RttServiceImpl;->updateBackgroundThrottlingInterval(Lcom/android/server/wifi/FrameworkFacade;)V

    .line 281
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 282
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/rtt/RttServiceImpl$4;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/rtt/RttServiceImpl$4;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 295
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    iget-object v1, v1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$ehyq-_xe9BYccoyltP3Gc2lh51g;

    invoke-direct {v2, p0, p4}, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$ehyq-_xe9BYccoyltP3Gc2lh51g;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl;Lcom/android/server/wifi/rtt/RttNative;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

.method public startRanging(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;Landroid/net/wifi/rtt/RangingRequest;Landroid/net/wifi/rtt/IRttCallback;)V
    .locals 17
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "request"    # Landroid/net/wifi/rtt/RangingRequest;
    .param p5, "callback"    # Landroid/net/wifi/rtt/IRttCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    .line 394
    move-object/from16 v14, p5

    if-eqz v12, :cond_8

    .line 397
    if-eqz v13, :cond_7

    iget-object v0, v13, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, v13, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 400
    iget-object v0, v13, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/rtt/ResponderConfig;

    .line 401
    .local v1, "responder":Landroid/net/wifi/rtt/ResponderConfig;
    if-eqz v1, :cond_0

    .line 404
    .end local v1    # "responder":Landroid/net/wifi/rtt/ResponderConfig;
    goto :goto_0

    .line 402
    .restart local v1    # "responder":Landroid/net/wifi/rtt/ResponderConfig;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Request must not contain null Responders"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    .end local v1    # "responder":Landroid/net/wifi/rtt/ResponderConfig;
    :cond_1
    if-eqz v14, :cond_6

    .line 408
    iget-object v0, v11, Lcom/android/server/wifi/rtt/RttServiceImpl;->mAwareBinder:Landroid/net/wifi/aware/IWifiAwareManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {v13, v0}, Landroid/net/wifi/rtt/RangingRequest;->enforceValidity(Z)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 412
    :try_start_0
    iget-object v0, v11, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttMetrics:Lcom/android/server/wifi/rtt/RttMetrics;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/rtt/RttMetrics;->recordOverallStatus(I)V

    .line 414
    const/4 v0, 0x2

    invoke-interface {v14, v0}, Landroid/net/wifi/rtt/IRttCallback;->onRangingFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    goto :goto_2

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RttServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRanging: disabled, callback failed -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 421
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->getMockableCallingUid()I

    move-result v15

    .line 424
    .local v15, "uid":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->enforceAccessPermission()V

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->enforceChangePermission()V

    .line 426
    iget-object v0, v11, Lcom/android/server/wifi/rtt/RttServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    move-object/from16 v9, p2

    invoke-virtual {v0, v9, v15}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->enforceFineLocationPermission(Ljava/lang/String;I)V

    .line 427
    if-eqz p3, :cond_4

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->enforceLocationHardware()V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/WorkSource;->clearNames()V

    .line 433
    :cond_4
    nop

    .line 434
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->checkLocationHardware()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v11, Lcom/android/server/wifi/rtt/RttServiceImpl;->mShellCommand:Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;

    const-string v3, "override_assume_no_privilege"

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->getControlParam(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    move v10, v1

    goto :goto_3

    :cond_5
    move v10, v2

    .line 438
    .local v10, "isCalledFromPrivilegedContext":Z
    :goto_3
    new-instance v0, Lcom/android/server/wifi/rtt/RttServiceImpl$5;

    invoke-direct {v0, v11, v15, v12}, Lcom/android/server/wifi/rtt/RttServiceImpl$5;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl;ILandroid/os/IBinder;)V

    move-object v8, v0

    .line 451
    .local v8, "dr":Landroid/os/IBinder$DeathRecipient;
    :try_start_1
    invoke-interface {v12, v8, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 455
    nop

    .line 457
    iget-object v0, v11, Lcom/android/server/wifi/rtt/RttServiceImpl;->mRttServiceSynchronized:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    iget-object v0, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;

    move-object v1, v7

    move-object v2, v11

    move-object/from16 v3, p3

    move v4, v15

    move-object v5, v12

    move-object v6, v8

    move-object v11, v7

    move-object v7, v9

    move-object/from16 v16, v8

    move-object v8, v13

    .end local v8    # "dr":Landroid/os/IBinder$DeathRecipient;
    .local v16, "dr":Landroid/os/IBinder$DeathRecipient;
    move-object v9, v14

    invoke-direct/range {v1 .. v10}, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl;Landroid/os/WorkSource;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Ljava/lang/String;Landroid/net/wifi/rtt/RangingRequest;Landroid/net/wifi/rtt/IRttCallback;Z)V

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    return-void

    .line 452
    .end local v16    # "dr":Landroid/os/IBinder$DeathRecipient;
    .restart local v8    # "dr":Landroid/os/IBinder$DeathRecipient;
    :catch_1
    move-exception v0

    move-object/from16 v16, v8

    .end local v8    # "dr":Landroid/os/IBinder$DeathRecipient;
    .restart local v16    # "dr":Landroid/os/IBinder$DeathRecipient;
    move-object v1, v0

    .line 453
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "RttServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error on linkToDeath - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void

    .line 406
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v10    # "isCalledFromPrivilegedContext":Z
    .end local v15    # "uid":I
    .end local v16    # "dr":Landroid/os/IBinder$DeathRecipient;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Binder must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
