.class public Lcom/android/internal/telephony/RIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;,
        Lcom/android/internal/telephony/RIL$RilHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_BLOCKING_MESSAGE_RESPONSE_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT_MS:I = 0xea60

.field static final EMPTY_ALPHA_LONG:Ljava/lang/String; = ""

.field static final EMPTY_ALPHA_SHORT:Ljava/lang/String; = ""

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field static final HIDL_SERVICE_NAME:[Ljava/lang/String;

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0xfa0

.field static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "RILJ_ACK_WL"

.field static final RILJ_LOGD:Z = true

.field static final RILJ_LOGV:Z = false

.field static final RILJ_LOG_TAG:Ljava/lang/String; = "RILJ"

.field static final RILJ_WAKELOCK_TAG:Ljava/lang/String; = "*telephony-radio*"

.field static final RIL_HISTOGRAM_BUCKET_COUNT:I = 0x5

.field static mRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field private mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field private final mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field protected mIsMobileNetworkSupported:Z

.field mLastNITZTimeInfo:[Ljava/lang/Object;

.field protected mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field mOemHookIndication:Lcom/android/internal/telephony/OemHookIndication;

.field volatile mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

.field mOemHookResponse:Lcom/android/internal/telephony/OemHookResponse;

.field final mPhoneId:Ljava/lang/Integer;

.field protected mRILDefaultWorkSource:Landroid/os/WorkSource;

.field mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

.field volatile mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

.field final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

.field mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 168
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    .line 206
    const-string v0, "slot1"

    const-string v1, "slot2"

    const-string v2, "slot3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    .line 442
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 443
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .line 447
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v0, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    .line 165
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    .line 167
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    .line 174
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 190
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 193
    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    .line 194
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RIL: init preferredNetworkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cdmaSubscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 453
    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    .line 454
    iput p3, p0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    .line 455
    iput p2, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    .line 456
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    .line 457
    iput-object p4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 459
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 461
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/RIL;->mIsMobileNetworkSupported:Z

    .line 463
    new-instance v3, Lcom/android/internal/telephony/RadioResponse;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/RadioResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

    .line 464
    new-instance v3, Lcom/android/internal/telephony/RadioIndication;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/RadioIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

    .line 465
    new-instance v3, Lcom/android/internal/telephony/OemHookResponse;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/OemHookResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mOemHookResponse:Lcom/android/internal/telephony/OemHookResponse;

    .line 466
    new-instance v3, Lcom/android/internal/telephony/OemHookIndication;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/OemHookIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mOemHookIndication:Lcom/android/internal/telephony/OemHookIndication;

    .line 467
    new-instance v3, Lcom/android/internal/telephony/RIL$RilHandler;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/RIL$RilHandler;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    .line 468
    new-instance v3, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    .line 470
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 471
    .local v3, "pm":Landroid/os/PowerManager;
    const-string v4, "*telephony-radio*"

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 472
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 473
    const-string v4, "RILJ_ACK_WL"

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 474
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 475
    const-string v4, "ro.ril.wake_lock_timeout"

    const v5, 0xea60

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    .line 477
    const-string v4, "ro.ril.wake_lock_timeout"

    const/16 v5, 0xc8

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLockTimeout:I

    .line 479
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 480
    new-instance v0, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 481
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 483
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    .line 484
    .local v0, "tdc":Lcom/android/internal/telephony/TelephonyDevController;
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->registerRIL(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 488
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    .line 489
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getOemHookProxy(Landroid/os/Message;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    .line 490
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/RIL;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/RIL;
    .param p1, "x1"    # I

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->clearWakeLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/RIL;
    .param p1, "x1"    # I

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/RILRequest;

    .line 127
    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->getResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/RIL;
    .param p1, "x1"    # Lcom/android/internal/telephony/RILRequest;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method

.method private acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V
    .locals 7
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "wakeLockType"    # I

    .line 4296
    monitor-enter p1

    .line 4297
    :try_start_0
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4298
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to aquire wakelock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4299
    monitor-exit p1

    return-void

    .line 4302
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 4338
    const-string v0, "RILJ"

    goto/16 :goto_2

    .line 4328
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4329
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4330
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    .line 4332
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4333
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 4334
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4335
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 4336
    goto :goto_1

    .line 4335
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 4304
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4305
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4306
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 4307
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    .line 4309
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getWorkSourceClientId()Ljava/lang/String;

    move-result-object v1

    .line 4310
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4311
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_1

    .line 4312
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v3, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_0

    .line 4314
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 4316
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4319
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v3, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 4322
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4323
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 4324
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4325
    .end local v1    # "clientId":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4326
    nop

    .line 4341
    :goto_1
    :try_start_4
    iput p2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    .line 4342
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4343
    return-void

    .line 4325
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    .line 4338
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquiring Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4339
    monitor-exit p1

    return-void

    .line 4342
    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addRequest(Lcom/android/internal/telephony/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .line 505
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 507
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    .line 508
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 509
    monitor-exit v0

    .line 510
    return-void

    .line 509
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V
    .locals 9
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .line 4463
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4464
    .local v0, "endTime":J
    iget-wide v2, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 4466
    .local v2, "totalTime":I
    sget-object v3, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v3

    .line 4467
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    .line 4468
    .local v4, "entry":Landroid/telephony/TelephonyHistogram;
    if-nez v4, :cond_0

    .line 4470
    new-instance v5, Landroid/telephony/TelephonyHistogram;

    const/4 v6, 0x1

    iget v7, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    move-object v4, v5

    .line 4472
    sget-object v5, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v6, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4474
    :cond_0
    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 4475
    .end local v4    # "entry":Landroid/telephony/TelephonyHistogram;
    monitor-exit v3

    .line 4476
    return-void

    .line 4475
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static appendPrimitiveArrayToArrayList([BLjava/util/ArrayList;)V
    .locals 4
    .param p0, "src"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 5144
    .local p1, "dst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    .line 5145
    .local v2, "b":B
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5144
    .end local v2    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5147
    :cond_0
    return-void
.end method

.method public static arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 5168
    .local p0, "bytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 5169
    .local v0, "ret":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 5170
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 5169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5172
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private censoredTerminalResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "terminalResponse"    # Ljava/lang/String;

    .line 2202
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2203
    .local v0, "bytes":[B
    if-eqz v0, :cond_1

    .line 2204
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object v1

    .line 2205
    .local v1, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v2, 0x0

    .line 2206
    .local v2, "from":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 2209
    .local v4, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 2210
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 2211
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v7

    add-int/2addr v6, v7

    .line 2210
    invoke-static {v5, v2, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 2212
    .local v5, "target":[B
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 2213
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const-string v8, "********"

    .line 2212
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object p1, v6

    .line 2216
    .end local v5    # "target":[B
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int v2, v5, v6

    .line 2217
    .end local v4    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    goto :goto_0

    .line 2222
    .end local v0    # "bytes":[B
    .end local v1    # "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .end local v2    # "from":I
    :cond_1
    goto :goto_1

    .line 2219
    :catch_0
    move-exception v0

    .line 2220
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not censor the terminal response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    const/4 p1, 0x0

    .line 2224
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object p1
.end method

.method private clearRequestList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .line 4429
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4430
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4431
    .local v1, "count":I
    if-eqz p2, :cond_0

    .line 4432
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearRequestList  mWakeLockCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4437
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RILRequest;

    .line 4438
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz p2, :cond_1

    .line 4439
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 4440
    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4439
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4442
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 4443
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 4444
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 4436
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4446
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 4447
    .end local v1    # "count":I
    monitor-exit v0

    .line 4448
    return-void

    .line 4447
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearWakeLock(I)Z
    .locals 6
    .param p1, "wakeLockType"    # I

    .line 4402
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 4403
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 4404
    :try_start_0
    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return v1

    .line 4405
    :cond_0
    const-string v3, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOTE: mWakeLockCount is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "at time of clearing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    iput v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 4408
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4409
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 4410
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 4411
    monitor-exit v2

    return v0

    .line 4412
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4414
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 4415
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    return v1

    .line 4416
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4417
    monitor-exit v2

    return v0

    .line 4418
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;
    .locals 2
    .param p1, "smscPdu"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;

    .line 1065
    new-instance v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 1066
    .local v0, "msg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->smscPdu:Ljava/lang/String;

    .line 1067
    if-nez p2, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    iput-object v1, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->pdu:Ljava/lang/String;

    .line 1068
    return-object v0
.end method

.method public static convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 25
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 5322
    .local p0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5324
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CellInfo;

    .line 5326
    .local v2, "record":Landroid/hardware/radio/V1_0/CellInfo;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    .line 5327
    .local v15, "p":Landroid/os/Parcel;
    iget v3, v2, Landroid/hardware/radio/V1_0/CellInfo;->cellInfoType:I

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5328
    iget-boolean v3, v2, Landroid/hardware/radio/V1_0/CellInfo;->registered:Z

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5329
    iget v3, v2, Landroid/hardware/radio/V1_0/CellInfo;->timeStampType:I

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5330
    iget-wide v3, v2, Landroid/hardware/radio/V1_0/CellInfo;->timeStamp:J

    invoke-virtual {v15, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5331
    const v3, 0x7fffffff

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5332
    iget v3, v2, Landroid/hardware/radio/V1_0/CellInfo;->cellInfoType:I

    const/4 v14, 0x0

    packed-switch v3, :pswitch_data_0

    .line 5410
    move-object v3, v15

    .end local v15    # "p":Landroid/os/Parcel;
    .local v3, "p":Landroid/os/Parcel;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected cellinfotype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/hardware/radio/V1_0/CellInfo;->cellInfoType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5393
    .end local v3    # "p":Landroid/os/Parcel;
    .restart local v15    # "p":Landroid/os/Parcel;
    :pswitch_0
    iget-object v3, v2, Landroid/hardware/radio/V1_0/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/hardware/radio/V1_0/CellInfoWcdma;

    .line 5394
    .local v13, "cellInfoWcdma":Landroid/hardware/radio/V1_0/CellInfoWcdma;
    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v4, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v5, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v6, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v7, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    const-string v10, ""

    const-string v11, ""

    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    iget v12, v3, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->signalStrength:I

    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    iget v3, v3, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->bitErrorRate:I

    move/from16 v16, v3

    move-object v3, v15

    move-object/from16 v17, v13

    move/from16 v13, v16

    .end local v13    # "cellInfoWcdma":Landroid/hardware/radio/V1_0/CellInfoWcdma;
    .local v17, "cellInfoWcdma":Landroid/hardware/radio/V1_0/CellInfoWcdma;
    invoke-static/range {v3 .. v13}, Lcom/android/internal/telephony/RIL;->writeToParcelForWcdma(Landroid/os/Parcel;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 5406
    nop

    .line 5413
    move-object/from16 v20, v1

    move v1, v14

    move-object/from16 v23, v15

    goto/16 :goto_1

    .line 5371
    .end local v17    # "cellInfoWcdma":Landroid/hardware/radio/V1_0/CellInfoWcdma;
    :pswitch_1
    iget-object v3, v2, Landroid/hardware/radio/V1_0/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/hardware/radio/V1_0/CellInfoLte;

    .line 5372
    .local v13, "cellInfoLte":Landroid/hardware/radio/V1_0/CellInfoLte;
    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v4, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->ci:I

    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v5, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->pci:I

    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v6, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v7, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->earfcn:I

    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v10, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    const-string v11, ""

    const-string v12, ""

    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v3, v3, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    iget-object v14, v13, Landroid/hardware/radio/V1_0/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v14, v14, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    iget-object v8, v13, Landroid/hardware/radio/V1_0/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v8, v8, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    move-object/from16 v20, v1

    iget-object v1, v13, Landroid/hardware/radio/V1_0/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v1, v1, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    move/from16 v21, v3

    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v3, v3, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    move/from16 v22, v3

    iget-object v3, v13, Landroid/hardware/radio/V1_0/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v3, v3, Landroid/hardware/radio/V1_0/LteSignalStrength;->timingAdvance:I

    move/from16 v18, v3

    move/from16 v16, v21

    move/from16 v17, v22

    move-object v3, v15

    move/from16 v19, v8

    const v8, 0x7fffffff

    move-object/from16 v21, v13

    move/from16 v13, v16

    .end local v13    # "cellInfoLte":Landroid/hardware/radio/V1_0/CellInfoLte;
    .local v21, "cellInfoLte":Landroid/hardware/radio/V1_0/CellInfoLte;
    move-object/from16 v23, v15

    move/from16 v15, v19

    .end local v15    # "p":Landroid/os/Parcel;
    .local v23, "p":Landroid/os/Parcel;
    move/from16 v16, v1

    invoke-static/range {v3 .. v18}, Lcom/android/internal/telephony/RIL;->writeToParcelForLte(Landroid/os/Parcel;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 5389
    nop

    .line 5413
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 5352
    .end local v21    # "cellInfoLte":Landroid/hardware/radio/V1_0/CellInfoLte;
    .end local v23    # "p":Landroid/os/Parcel;
    .restart local v15    # "p":Landroid/os/Parcel;
    :pswitch_2
    move-object/from16 v20, v1

    move-object/from16 v23, v15

    .end local v15    # "p":Landroid/os/Parcel;
    .restart local v23    # "p":Landroid/os/Parcel;
    iget-object v1, v2, Landroid/hardware/radio/V1_0/CellInfo;->cdma:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/CellInfoCdma;

    .line 5353
    .local v1, "cellInfoCdma":Landroid/hardware/radio/V1_0/CellInfoCdma;
    iget-object v3, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v4, v3, Landroid/hardware/radio/V1_0/CellIdentityCdma;->networkId:I

    iget-object v3, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v5, v3, Landroid/hardware/radio/V1_0/CellIdentityCdma;->systemId:I

    iget-object v3, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v6, v3, Landroid/hardware/radio/V1_0/CellIdentityCdma;->baseStationId:I

    iget-object v3, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v7, v3, Landroid/hardware/radio/V1_0/CellIdentityCdma;->longitude:I

    iget-object v3, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v8, v3, Landroid/hardware/radio/V1_0/CellIdentityCdma;->latitude:I

    const-string v9, ""

    const-string v10, ""

    iget-object v3, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget v11, v3, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->dbm:I

    iget-object v3, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget v12, v3, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->ecio:I

    iget-object v3, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v13, v3, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    iget-object v3, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v14, v3, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    iget-object v3, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v3, v3, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    move/from16 v16, v3

    move-object/from16 v3, v23

    move-object/from16 v24, v1

    move v1, v15

    move/from16 v15, v16

    .end local v1    # "cellInfoCdma":Landroid/hardware/radio/V1_0/CellInfoCdma;
    .local v24, "cellInfoCdma":Landroid/hardware/radio/V1_0/CellInfoCdma;
    invoke-static/range {v3 .. v15}, Lcom/android/internal/telephony/RIL;->writeToParcelForCdma(Landroid/os/Parcel;IIIIILjava/lang/String;Ljava/lang/String;IIIII)V

    .line 5367
    goto :goto_1

    .line 5334
    .end local v23    # "p":Landroid/os/Parcel;
    .end local v24    # "cellInfoCdma":Landroid/hardware/radio/V1_0/CellInfoCdma;
    .restart local v15    # "p":Landroid/os/Parcel;
    :pswitch_3
    move-object/from16 v20, v1

    move v1, v14

    move-object/from16 v23, v15

    .end local v15    # "p":Landroid/os/Parcel;
    .restart local v23    # "p":Landroid/os/Parcel;
    iget-object v3, v2, Landroid/hardware/radio/V1_0/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/hardware/radio/V1_0/CellInfoGsm;

    .line 5335
    .local v15, "cellInfoGsm":Landroid/hardware/radio/V1_0/CellInfoGsm;
    iget-object v3, v15, Landroid/hardware/radio/V1_0/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v4, v3, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    iget-object v3, v15, Landroid/hardware/radio/V1_0/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v5, v3, Landroid/hardware/radio/V1_0/CellIdentityGsm;->cid:I

    iget-object v3, v15, Landroid/hardware/radio/V1_0/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v6, v3, Landroid/hardware/radio/V1_0/CellIdentityGsm;->arfcn:I

    iget-object v3, v15, Landroid/hardware/radio/V1_0/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-byte v3, v3, Landroid/hardware/radio/V1_0/CellIdentityGsm;->bsic:B

    .line 5340
    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    iget-object v3, v15, Landroid/hardware/radio/V1_0/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v3, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    iget-object v3, v15, Landroid/hardware/radio/V1_0/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    const-string v10, ""

    const-string v11, ""

    iget-object v3, v15, Landroid/hardware/radio/V1_0/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v12, v3, Landroid/hardware/radio/V1_0/GsmSignalStrength;->signalStrength:I

    iget-object v3, v15, Landroid/hardware/radio/V1_0/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v13, v3, Landroid/hardware/radio/V1_0/GsmSignalStrength;->bitErrorRate:I

    iget-object v3, v15, Landroid/hardware/radio/V1_0/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v14, v3, Landroid/hardware/radio/V1_0/GsmSignalStrength;->timingAdvance:I

    .line 5335
    move-object/from16 v3, v23

    invoke-static/range {v3 .. v14}, Lcom/android/internal/telephony/RIL;->writeToParcelForGsm(Landroid/os/Parcel;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 5348
    nop

    .line 5413
    .end local v15    # "cellInfoGsm":Landroid/hardware/radio/V1_0/CellInfoGsm;
    :goto_1
    move-object/from16 v3, v23

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5414
    .end local v23    # "p":Landroid/os/Parcel;
    .restart local v3    # "p":Landroid/os/Parcel;
    sget-object v1, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 5415
    .local v1, "InfoRec":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 5416
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5417
    .end local v1    # "InfoRec":Landroid/telephony/CellInfo;
    .end local v2    # "record":Landroid/hardware/radio/V1_0/CellInfo;
    .end local v3    # "p":Landroid/os/Parcel;
    nop

    .line 5324
    move-object/from16 v1, v20

    goto/16 :goto_0

    .line 5419
    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertHalCellInfoList_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 25
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 5430
    .local p0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5432
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_2/CellInfo;

    .line 5434
    .local v2, "record":Landroid/hardware/radio/V1_2/CellInfo;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    .line 5435
    .local v15, "p":Landroid/os/Parcel;
    iget v3, v2, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5436
    iget-boolean v3, v2, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5437
    iget v3, v2, Landroid/hardware/radio/V1_2/CellInfo;->timeStampType:I

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5438
    iget-wide v3, v2, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    invoke-virtual {v15, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5439
    iget v3, v2, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5440
    iget v3, v2, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    const/4 v14, 0x0

    packed-switch v3, :pswitch_data_0

    .line 5518
    move-object v3, v0

    move-object v1, v15

    .end local v0    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local v15    # "p":Landroid/os/Parcel;
    .local v1, "p":Landroid/os/Parcel;
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected cellinfotype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5501
    .end local v1    # "p":Landroid/os/Parcel;
    .end local v3    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v0    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v15    # "p":Landroid/os/Parcel;
    :pswitch_0
    iget-object v3, v2, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/hardware/radio/V1_2/CellInfoWcdma;

    .line 5502
    .local v13, "cellInfoWcdma":Landroid/hardware/radio/V1_2/CellInfoWcdma;
    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v4, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v5, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v6, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v7, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v10, v3, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v11, v3, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->base:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    iget v12, v3, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->signalStrength:I

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->base:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    iget v3, v3, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->bitErrorRate:I

    move/from16 v16, v3

    move-object v3, v15

    move-object/from16 v17, v13

    move/from16 v13, v16

    .end local v13    # "cellInfoWcdma":Landroid/hardware/radio/V1_2/CellInfoWcdma;
    .local v17, "cellInfoWcdma":Landroid/hardware/radio/V1_2/CellInfoWcdma;
    invoke-static/range {v3 .. v13}, Lcom/android/internal/telephony/RIL;->writeToParcelForWcdma(Landroid/os/Parcel;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 5514
    nop

    .line 5521
    move-object/from16 v23, v0

    move-object/from16 v19, v1

    move v0, v14

    move-object/from16 v24, v15

    goto/16 :goto_1

    .line 5479
    .end local v17    # "cellInfoWcdma":Landroid/hardware/radio/V1_2/CellInfoWcdma;
    :pswitch_1
    iget-object v3, v2, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/hardware/radio/V1_2/CellInfoLte;

    .line 5480
    .local v13, "cellInfoLte":Landroid/hardware/radio/V1_2/CellInfoLte;
    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v4, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->ci:I

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v5, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->pci:I

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v6, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v7, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->earfcn:I

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget v8, v3, Landroid/hardware/radio/V1_2/CellIdentityLte;->bandwidth:I

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v10, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v11, v3, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v12, v3, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v3, v3, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    iget-object v14, v13, Landroid/hardware/radio/V1_2/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v14, v14, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    move-object/from16 v19, v1

    iget-object v1, v13, Landroid/hardware/radio/V1_2/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v1, v1, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    move/from16 v20, v3

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v3, v3, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    move/from16 v21, v3

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v3, v3, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    move/from16 v22, v3

    iget-object v3, v13, Landroid/hardware/radio/V1_2/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v3, v3, Landroid/hardware/radio/V1_0/LteSignalStrength;->timingAdvance:I

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v22

    move/from16 v20, v3

    move-object v3, v15

    move-object/from16 v21, v13

    move/from16 v13, v16

    .end local v13    # "cellInfoLte":Landroid/hardware/radio/V1_2/CellInfoLte;
    .local v21, "cellInfoLte":Landroid/hardware/radio/V1_2/CellInfoLte;
    move-object/from16 v23, v0

    const/4 v0, 0x0

    .end local v0    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .local v23, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    move-object/from16 v24, v15

    move v15, v1

    .end local v15    # "p":Landroid/os/Parcel;
    .local v24, "p":Landroid/os/Parcel;
    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    invoke-static/range {v3 .. v18}, Lcom/android/internal/telephony/RIL;->writeToParcelForLte(Landroid/os/Parcel;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 5497
    goto/16 :goto_1

    .line 5460
    .end local v21    # "cellInfoLte":Landroid/hardware/radio/V1_2/CellInfoLte;
    .end local v23    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local v24    # "p":Landroid/os/Parcel;
    .restart local v0    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v15    # "p":Landroid/os/Parcel;
    :pswitch_2
    move-object/from16 v23, v0

    move-object/from16 v19, v1

    move v0, v14

    move-object/from16 v24, v15

    .end local v0    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local v15    # "p":Landroid/os/Parcel;
    .restart local v23    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v24    # "p":Landroid/os/Parcel;
    iget-object v1, v2, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_2/CellInfoCdma;

    .line 5461
    .local v1, "cellInfoCdma":Landroid/hardware/radio/V1_2/CellInfoCdma;
    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityCdma;->base:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v4, v3, Landroid/hardware/radio/V1_0/CellIdentityCdma;->networkId:I

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityCdma;->base:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v5, v3, Landroid/hardware/radio/V1_0/CellIdentityCdma;->systemId:I

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityCdma;->base:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v6, v3, Landroid/hardware/radio/V1_0/CellIdentityCdma;->baseStationId:I

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityCdma;->base:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v7, v3, Landroid/hardware/radio/V1_0/CellIdentityCdma;->longitude:I

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityCdma;->base:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v8, v3, Landroid/hardware/radio/V1_0/CellIdentityCdma;->latitude:I

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityCdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, v3, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityCdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v10, v3, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget v11, v3, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->dbm:I

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget v12, v3, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->ecio:I

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v13, v3, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v14, v3, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v15, v3, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    move-object/from16 v3, v24

    invoke-static/range {v3 .. v15}, Lcom/android/internal/telephony/RIL;->writeToParcelForCdma(Landroid/os/Parcel;IIIIILjava/lang/String;Ljava/lang/String;IIIII)V

    .line 5475
    goto :goto_1

    .line 5442
    .end local v1    # "cellInfoCdma":Landroid/hardware/radio/V1_2/CellInfoCdma;
    .end local v23    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local v24    # "p":Landroid/os/Parcel;
    .restart local v0    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v15    # "p":Landroid/os/Parcel;
    :pswitch_3
    move-object/from16 v23, v0

    move-object/from16 v19, v1

    move v0, v14

    move-object/from16 v24, v15

    .end local v0    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local v15    # "p":Landroid/os/Parcel;
    .restart local v23    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v24    # "p":Landroid/os/Parcel;
    iget-object v1, v2, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_2/CellInfoGsm;

    .line 5443
    .local v1, "cellInfoGsm":Landroid/hardware/radio/V1_2/CellInfoGsm;
    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v4, v3, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v5, v3, Landroid/hardware/radio/V1_0/CellIdentityGsm;->cid:I

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v6, v3, Landroid/hardware/radio/V1_0/CellIdentityGsm;->arfcn:I

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-byte v3, v3, Landroid/hardware/radio/V1_0/CellIdentityGsm;->bsic:B

    .line 5448
    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v3, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v10, v3, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v11, v3, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v12, v3, Landroid/hardware/radio/V1_0/GsmSignalStrength;->signalStrength:I

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v13, v3, Landroid/hardware/radio/V1_0/GsmSignalStrength;->bitErrorRate:I

    iget-object v3, v1, Landroid/hardware/radio/V1_2/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v14, v3, Landroid/hardware/radio/V1_0/GsmSignalStrength;->timingAdvance:I

    .line 5443
    move-object/from16 v3, v24

    invoke-static/range {v3 .. v14}, Lcom/android/internal/telephony/RIL;->writeToParcelForGsm(Landroid/os/Parcel;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 5456
    nop

    .line 5521
    .end local v1    # "cellInfoGsm":Landroid/hardware/radio/V1_2/CellInfoGsm;
    :goto_1
    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5522
    .end local v24    # "p":Landroid/os/Parcel;
    .local v1, "p":Landroid/os/Parcel;
    sget-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 5523
    .local v0, "InfoRec":Landroid/telephony/CellInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5524
    move-object/from16 v3, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5525
    .end local v0    # "InfoRec":Landroid/telephony/CellInfo;
    .end local v1    # "p":Landroid/os/Parcel;
    .end local v2    # "record":Landroid/hardware/radio/V1_2/CellInfo;
    .end local v23    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v3    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    nop

    .line 5432
    move-object v0, v3

    move-object/from16 v1, v19

    goto/16 :goto_0

    .line 5527
    .end local v3    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_0
    move-object v3, v0

    .end local v0    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v3    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static convertHalHwConfigList(Ljava/util/ArrayList;Lcom/android/internal/telephony/RIL;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;",
            "Lcom/android/internal/telephony/RIL;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .line 5182
    .local p0, "hwListRil":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5183
    .local v0, "num":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5188
    .local v1, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/HardwareConfig;

    .line 5189
    .local v3, "hwRil":Landroid/hardware/radio/V1_0/HardwareConfig;
    iget v4, v3, Landroid/hardware/radio/V1_0/HardwareConfig;->type:I

    .line 5190
    .local v4, "type":I
    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    .line 5204
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RIL_REQUEST_GET_HARDWARE_CONFIG invalid hardward type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5199
    :pswitch_0
    new-instance v6, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v6, v4}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 5200
    .local v6, "hw":Lcom/android/internal/telephony/HardwareConfig;
    iget-object v7, v3, Landroid/hardware/radio/V1_0/HardwareConfig;->uuid:Ljava/lang/String;

    iget v8, v3, Landroid/hardware/radio/V1_0/HardwareConfig;->state:I

    iget-object v9, v3, Landroid/hardware/radio/V1_0/HardwareConfig;->sim:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/HardwareConfigSim;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/HardwareConfigSim;->modemUuid:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    .line 5201
    goto :goto_1

    .line 5192
    .end local v6    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    :pswitch_1
    new-instance v9, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v9, v4}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 5193
    .local v9, "hw":Lcom/android/internal/telephony/HardwareConfig;
    iget-object v6, v3, Landroid/hardware/radio/V1_0/HardwareConfig;->modem:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/HardwareConfigModem;

    .line 5194
    .local v5, "hwModem":Landroid/hardware/radio/V1_0/HardwareConfigModem;
    iget-object v10, v3, Landroid/hardware/radio/V1_0/HardwareConfig;->uuid:Ljava/lang/String;

    iget v11, v3, Landroid/hardware/radio/V1_0/HardwareConfig;->state:I

    iget v12, v5, Landroid/hardware/radio/V1_0/HardwareConfigModem;->rilModel:I

    iget v13, v5, Landroid/hardware/radio/V1_0/HardwareConfigModem;->rat:I

    iget v14, v5, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxVoice:I

    iget v15, v5, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxData:I

    iget v6, v5, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxStandby:I

    move/from16 v16, v6

    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    .line 5196
    nop

    .line 5204
    move-object v6, v9

    .end local v5    # "hwModem":Landroid/hardware/radio/V1_0/HardwareConfigModem;
    .end local v9    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    .restart local v6    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    :goto_1
    move-object v5, v6

    .line 5209
    .end local v6    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    .local v5, "hw":Lcom/android/internal/telephony/HardwareConfig;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5210
    .end local v3    # "hwRil":Landroid/hardware/radio/V1_0/HardwareConfig;
    .end local v4    # "type":I
    goto :goto_0

    .line 5212
    .end local v5    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    :cond_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static convertHalLceData(Landroid/hardware/radio/V1_0/LceDataInfo;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/LinkCapacityEstimate;
    .locals 4
    .param p0, "halData"    # Landroid/hardware/radio/V1_0/LceDataInfo;
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 5234
    new-instance v0, Lcom/android/internal/telephony/LinkCapacityEstimate;

    iget v1, p0, Landroid/hardware/radio/V1_0/LceDataInfo;->lastHopCapacityKbps:I

    iget-byte v2, p0, Landroid/hardware/radio/V1_0/LceDataInfo;->confidenceLevel:B

    .line 5236
    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    .line 5237
    iget-boolean v3, p0, Landroid/hardware/radio/V1_0/LceDataInfo;->lceSuspended:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 5238
    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/LinkCapacityEstimate;-><init>(III)V

    .line 5240
    .local v0, "lce":Lcom/android/internal/telephony/LinkCapacityEstimate;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCE capacity information received:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5241
    return-object v0
.end method

.method static convertHalLceData(Landroid/hardware/radio/V1_2/LinkCapacityEstimate;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/LinkCapacityEstimate;
    .locals 3
    .param p0, "halData"    # Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 5246
    new-instance v0, Lcom/android/internal/telephony/LinkCapacityEstimate;

    iget v1, p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->downlinkCapacityKbps:I

    iget v2, p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->uplinkCapacityKbps:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/LinkCapacityEstimate;-><init>(II)V

    .line 5249
    .local v0, "lce":Lcom/android/internal/telephony/LinkCapacityEstimate;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCE capacity information received:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5250
    return-object v0
.end method

.method static convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;
    .locals 13
    .param p0, "rcRil"    # Landroid/hardware/radio/V1_0/RadioCapability;
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 5217
    iget v7, p0, Landroid/hardware/radio/V1_0/RadioCapability;->session:I

    .line 5218
    .local v7, "session":I
    iget v8, p0, Landroid/hardware/radio/V1_0/RadioCapability;->phase:I

    .line 5219
    .local v8, "phase":I
    iget v9, p0, Landroid/hardware/radio/V1_0/RadioCapability;->raf:I

    .line 5220
    .local v9, "rat":I
    iget-object v10, p0, Landroid/hardware/radio/V1_0/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 5221
    .local v10, "logicModemUuid":Ljava/lang/String;
    iget v11, p0, Landroid/hardware/radio/V1_0/RadioCapability;->status:I

    .line 5223
    .local v11, "status":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertHalRadioCapability: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logicModemUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5228
    new-instance v12, Lcom/android/internal/telephony/RadioCapability;

    iget-object v0, p1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 5229
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v0, v12

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 5230
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    return-object v0
.end method

.method public static convertHalSignalStrength(Landroid/hardware/radio/V1_0/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 17
    .param p0, "signalStrength"    # Landroid/hardware/radio/V1_0/SignalStrength;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5534
    move-object/from16 v0, p0

    const/16 v1, 0xff

    .line 5537
    .local v1, "tdscdmaRscp_1_2":I
    iget-object v2, v0, Landroid/hardware/radio/V1_0/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    iget v2, v2, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;->rscp:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_0

    iget-object v2, v0, Landroid/hardware/radio/V1_0/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    iget v2, v2, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;->rscp:I

    const/16 v3, 0x78

    if-gt v2, v3, :cond_0

    .line 5539
    iget-object v2, v0, Landroid/hardware/radio/V1_0/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    iget v2, v2, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;->rscp:I

    neg-int v2, v2

    .line 5541
    .local v2, "rscpDbm":I
    add-int/lit8 v1, v2, 0x78

    .line 5543
    .end local v2    # "rscpDbm":I
    :cond_0
    new-instance v16, Landroid/telephony/SignalStrength;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/SignalStrength;->gw:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v3, v2, Landroid/hardware/radio/V1_0/GsmSignalStrength;->signalStrength:I

    iget-object v2, v0, Landroid/hardware/radio/V1_0/SignalStrength;->gw:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v4, v2, Landroid/hardware/radio/V1_0/GsmSignalStrength;->bitErrorRate:I

    iget-object v2, v0, Landroid/hardware/radio/V1_0/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget v5, v2, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->dbm:I

    iget-object v2, v0, Landroid/hardware/radio/V1_0/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget v6, v2, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->ecio:I

    iget-object v2, v0, Landroid/hardware/radio/V1_0/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v7, v2, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    iget-object v2, v0, Landroid/hardware/radio/V1_0/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v8, v2, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    iget-object v2, v0, Landroid/hardware/radio/V1_0/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v9, v2, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    iget-object v2, v0, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v10, v2, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    iget-object v2, v0, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v11, v2, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    iget-object v2, v0, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v12, v2, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    iget-object v2, v0, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v13, v2, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    iget-object v2, v0, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v14, v2, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    move-object/from16 v2, v16

    move v15, v1

    invoke-direct/range {v2 .. v15}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIII)V

    return-object v16
.end method

.method public static convertHalSignalStrength_1_2(Landroid/hardware/radio/V1_2/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 18
    .param p0, "signalStrength"    # Landroid/hardware/radio/V1_2/SignalStrength;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5563
    move-object/from16 v0, p0

    new-instance v17, Landroid/telephony/SignalStrength;

    iget-object v1, v0, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v2, v1, Landroid/hardware/radio/V1_0/GsmSignalStrength;->signalStrength:I

    iget-object v1, v0, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v3, v1, Landroid/hardware/radio/V1_0/GsmSignalStrength;->bitErrorRate:I

    iget-object v1, v0, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget v4, v1, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->dbm:I

    iget-object v1, v0, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget v5, v1, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->ecio:I

    iget-object v1, v0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v6, v1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    iget-object v1, v0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v7, v1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    iget-object v1, v0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v8, v1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    iget-object v1, v0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v9, v1, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    iget-object v1, v0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v10, v1, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    iget-object v1, v0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v11, v1, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    iget-object v1, v0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v12, v1, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    iget-object v1, v0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v13, v1, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    iget-object v1, v0, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    iget v14, v1, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;->rscp:I

    iget-object v1, v0, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    iget-object v1, v1, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->base:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    iget v15, v1, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->signalStrength:I

    iget-object v1, v0, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    iget v1, v1, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->rscp:I

    move/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIII)V

    return-object v17
.end method

.method private convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 530
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private convertRadioAccessSpecifierToRadioHAL(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    .locals 8
    .param p1, "ras"    # Landroid/telephony/RadioAccessSpecifier;

    .line 1707
    new-instance v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    invoke-direct {v0}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;-><init>()V

    .line 1709
    .local v0, "rasInHalFormat":Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 1710
    const/4 v1, 0x0

    .line 1711
    .local v1, "bands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1722
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioAccessNetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not supported!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const/4 v2, 0x0

    return-object v2

    .line 1719
    :pswitch_0
    iget-object v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->eutranBands:Ljava/util/ArrayList;

    .line 1720
    goto :goto_0

    .line 1716
    :pswitch_1
    iget-object v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->utranBands:Ljava/util/ArrayList;

    .line 1717
    goto :goto_0

    .line 1713
    :pswitch_2
    iget-object v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->geranBands:Ljava/util/ArrayList;

    .line 1714
    nop

    .line 1727
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1728
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_0

    aget v6, v2, v5

    .line 1729
    .local v6, "band":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1728
    .end local v6    # "band":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1732
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1733
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v2

    array-length v4, v2

    :goto_2
    if-ge v3, v4, :cond_1

    aget v5, v2, v3

    .line 1734
    .local v5, "channel":I
    iget-object v6, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    .end local v5    # "channel":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1738
    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertRanToHalRan(I)I
    .locals 1
    .param p0, "radioAccessNetwork"    # I

    .line 3814
    packed-switch p0, :pswitch_data_0

    .line 3827
    const/4 v0, 0x0

    return v0

    .line 3824
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 3822
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 3820
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 3818
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 3816
    :pswitch_4
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertToHalDataProfile(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;
    .locals 2
    .param p0, "dp"    # Landroid/telephony/data/DataProfile;

    .line 1135
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 1137
    .local v0, "dpi":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->profileId:I

    .line 1138
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->apn:Ljava/lang/String;

    .line 1139
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocol()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->protocol:Ljava/lang/String;

    .line 1140
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocol()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->roamingProtocol:Ljava/lang/String;

    .line 1141
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->authType:I

    .line 1142
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->user:Ljava/lang/String;

    .line 1143
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->password:Ljava/lang/String;

    .line 1144
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->type:I

    .line 1145
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->maxConnsTime:I

    .line 1146
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConns()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->maxConns:I

    .line 1147
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->waitTime:I

    .line 1148
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->enabled:Z

    .line 1149
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmap()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 1150
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmap()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->bearerBitmap:I

    .line 1151
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtu()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->mtu:I

    .line 1152
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMvnoType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->convertToHalMvnoType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->mvnoType:I

    .line 1153
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->mvnoMatchData:Ljava/lang/String;

    .line 1155
    return-object v0
.end method

.method private static convertToHalMvnoType(Ljava/lang/String;)I
    .locals 5
    .param p0, "mvnoType"    # Ljava/lang/String;

    .line 1121
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x18fc2

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x1bdb1

    if-eq v0, v1, :cond_1

    const v1, 0x31627a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "imsi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v0, "spn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "gid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1125
    return v4

    .line 1124
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1123
    :pswitch_1
    return v3

    .line 1122
    :pswitch_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertToHalResetNvType(I)I
    .locals 1
    .param p0, "resetType"    # I

    .line 1170
    packed-switch p0, :pswitch_data_0

    .line 1175
    const/4 v0, -0x1

    return v0

    .line 1173
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1172
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1171
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createSimApdu(IIIIIILjava/lang/String;)Landroid/hardware/radio/V1_0/SimApdu;
    .locals 2
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .line 3122
    new-instance v0, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 3123
    .local v0, "msg":Landroid/hardware/radio/V1_0/SimApdu;
    iput p1, v0, Landroid/hardware/radio/V1_0/SimApdu;->sessionId:I

    .line 3124
    iput p2, v0, Landroid/hardware/radio/V1_0/SimApdu;->cla:I

    .line 3125
    iput p3, v0, Landroid/hardware/radio/V1_0/SimApdu;->instruction:I

    .line 3126
    iput p4, v0, Landroid/hardware/radio/V1_0/SimApdu;->p1:I

    .line 3127
    iput p5, v0, Landroid/hardware/radio/V1_0/SimApdu;->p2:I

    .line 3128
    iput p6, v0, Landroid/hardware/radio/V1_0/SimApdu;->p3:I

    .line 3129
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/SimApdu;->data:Ljava/lang/String;

    .line 3130
    return-object v0
.end method

.method private decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V
    .locals 8
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .line 4364
    monitor-enter p1

    .line 4365
    :try_start_0
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    packed-switch v0, :pswitch_data_0

    .line 4395
    const-string v0, "RILJ"

    goto :goto_2

    .line 4391
    :pswitch_0
    goto/16 :goto_3

    .line 4367
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4368
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v2, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 4370
    iget v5, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    iget v5, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    sub-int/2addr v5, v7

    goto :goto_0

    .line 4368
    :cond_0
    move v5, v6

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 4371
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getWorkSourceClientId()Ljava/lang/String;

    move-result-object v1

    .line 4372
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_2

    .line 4374
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v3, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 4375
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 4376
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 4378
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4381
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    if-le v2, v7, :cond_3

    .line 4382
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    sub-int/2addr v2, v7

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    goto :goto_1

    .line 4384
    :cond_3
    iput v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 4385
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4387
    .end local v1    # "clientId":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    .line 4388
    goto :goto_3

    .line 4387
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 4393
    :pswitch_2
    goto :goto_3

    .line 4395
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4397
    :goto_3
    const/4 v0, -0x1

    iput v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    .line 4398
    monitor-exit p1

    .line 4399
    return-void

    .line 4398
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 3
    .param p1, "serial"    # I

    .line 4451
    const/4 v0, 0x0

    .line 4452
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4453
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    move-object v0, v2

    .line 4454
    if-eqz v0, :cond_0

    .line 4455
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4457
    :cond_0
    monitor-exit v1

    .line 4459
    return-object v0

    .line 4457
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 0
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 4279
    if-nez p1, :cond_0

    .line 4280
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 4283
    :cond_0
    return-object p1
.end method

.method private static getResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;
    .locals 11
    .param p0, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .line 313
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 315
    :cond_0
    const/4 v0, 0x0

    .line 316
    .local v0, "timeoutResponse":Ljava/lang/Object;
    iget v1, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v2, 0x87

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 318
    :cond_1
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x5

    new-array v8, v2, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    move-object v0, v1

    .line 322
    :goto_0
    return-object v0
.end method

.method public static getTelephonyRILTimingHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 215
    sget-object v0, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 216
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 218
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    sget-object v4, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 219
    .local v3, "entry":Landroid/telephony/TelephonyHistogram;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v3    # "entry":Landroid/telephony/TelephonyHistogram;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    move-object v0, v1

    .line 222
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    return-object v0

    .line 221
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList()V

    .line 527
    return-void
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;
    .locals 1
    .param p1, "request"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 513
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 514
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->addRequest(Lcom/android/internal/telephony/RILRequest;)V

    .line 515
    return-object v0
.end method

.method public static primitiveArrayToArrayList([B)Ljava/util/ArrayList;
    .locals 5
    .param p0, "arr"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 5150
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5151
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 5152
    .local v3, "b":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5151
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5154
    :cond_0
    return-object v0
.end method

.method public static primitiveArrayToArrayList([I)Ljava/util/ArrayList;
    .locals 5
    .param p0, "arr"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5159
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5160
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 5161
    .local v3, "i":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5160
    .end local v3    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5163
    :cond_0
    return-object v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 4656
    const/16 v0, 0x320

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 4952
    const-string v0, "<unknown request>"

    return-object v0

    .line 4951
    :pswitch_0
    const-string v0, "RIL_REQUEST_SET_LINK_CAPACITY_REPORTING_CRITERIA"

    return-object v0

    .line 4949
    :pswitch_1
    const-string v0, "RIL_REQUEST_SET_SIGNAL_STRENGTH_REPORTING_CRITERIA"

    return-object v0

    .line 4947
    :pswitch_2
    const-string v0, "RIL_REQUEST_STOP_KEEPALIVE"

    return-object v0

    .line 4945
    :pswitch_3
    const-string v0, "RIL_REQUEST_START_KEEPALIVE"

    return-object v0

    .line 4943
    :pswitch_4
    const-string v0, "RIL_REQUEST_SET_LOGICAL_TO_PHYSICAL_SLOT_MAPPING"

    return-object v0

    .line 4941
    :pswitch_5
    const-string v0, "RIL_REQUEST_GET_SLOT_STATUS"

    return-object v0

    .line 4939
    :pswitch_6
    const-string v0, "RIL_REQUEST_STOP_NETWORK_SCAN"

    return-object v0

    .line 4937
    :pswitch_7
    const-string v0, "RIL_REQUEST_START_NETWORK_SCAN"

    return-object v0

    .line 4935
    :pswitch_8
    const-string v0, "RIL_REQUEST_SET_CARRIER_INFO_IMSI_ENCRYPTION"

    return-object v0

    .line 4927
    :pswitch_9
    const-string v0, "RIL_REQUEST_SET_SIM_CARD_POWER"

    return-object v0

    .line 4931
    :pswitch_a
    const-string v0, "RIL_REQUEST_SET_UNSOLICITED_RESPONSE_FILTER"

    return-object v0

    .line 4929
    :pswitch_b
    const-string v0, "RIL_REQUEST_SEND_DEVICE_STATE"

    return-object v0

    .line 4925
    :pswitch_c
    const-string v0, "RIL_REQUEST_GET_ALLOWED_CARRIERS"

    return-object v0

    .line 4923
    :pswitch_d
    const-string v0, "RIL_REQUEST_SET_ALLOWED_CARRIERS"

    return-object v0

    .line 4921
    :pswitch_e
    const-string v0, "RIL_REQUEST_GET_ACTIVITY_INFO"

    return-object v0

    .line 4919
    :pswitch_f
    const-string v0, "RIL_REQUEST_PULL_LCEDATA"

    return-object v0

    .line 4917
    :pswitch_10
    const-string v0, "RIL_REQUEST_STOP_LCE"

    return-object v0

    .line 4915
    :pswitch_11
    const-string v0, "RIL_REQUEST_START_LCE"

    return-object v0

    .line 4911
    :pswitch_12
    const-string v0, "RIL_REQUEST_SET_RADIO_CAPABILITY"

    return-object v0

    .line 4913
    :pswitch_13
    const-string v0, "RIL_REQUEST_GET_RADIO_CAPABILITY"

    return-object v0

    .line 4909
    :pswitch_14
    const-string v0, "RIL_REQUEST_SHUTDOWN"

    return-object v0

    .line 4879
    :pswitch_15
    const-string v0, "RIL_REQUEST_SET_DATA_PROFILE"

    return-object v0

    .line 4907
    :pswitch_16
    const-string v0, "RIL_REQUEST_SIM_AUTHENTICATION"

    return-object v0

    .line 4905
    :pswitch_17
    const-string v0, "GET_HARDWARE_CONFIG"

    return-object v0

    .line 4903
    :pswitch_18
    const-string v0, "RIL_REQUEST_ALLOW_DATA"

    return-object v0

    .line 4901
    :pswitch_19
    const-string v0, "RIL_REQUEST_SET_UICC_SUBSCRIPTION"

    return-object v0

    .line 4899
    :pswitch_1a
    const-string v0, "RIL_REQUEST_NV_RESET_CONFIG"

    return-object v0

    .line 4897
    :pswitch_1b
    const-string v0, "RIL_REQUEST_NV_WRITE_CDMA_PRL"

    return-object v0

    .line 4895
    :pswitch_1c
    const-string v0, "RIL_REQUEST_NV_WRITE_ITEM"

    return-object v0

    .line 4893
    :pswitch_1d
    const-string v0, "RIL_REQUEST_NV_READ_ITEM"

    return-object v0

    .line 4891
    :pswitch_1e
    const-string v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_CHANNEL"

    return-object v0

    .line 4889
    :pswitch_1f
    const-string v0, "RIL_REQUEST_SIM_CLOSE_CHANNEL"

    return-object v0

    .line 4887
    :pswitch_20
    const-string v0, "RIL_REQUEST_SIM_OPEN_CHANNEL"

    return-object v0

    .line 4885
    :pswitch_21
    const-string v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_BASIC"

    return-object v0

    .line 4883
    :pswitch_22
    const-string v0, "RIL_REQUEST_IMS_SEND_SMS"

    return-object v0

    .line 4881
    :pswitch_23
    const-string v0, "RIL_REQUEST_IMS_REGISTRATION_STATE"

    return-object v0

    .line 4877
    :pswitch_24
    const-string v0, "RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    return-object v0

    .line 4875
    :pswitch_25
    const-string v0, "RIL_REQUEST_SET_CELL_INFO_LIST_RATE"

    return-object v0

    .line 4873
    :pswitch_26
    const-string v0, "RIL_REQUEST_GET_CELL_INFO_LIST"

    return-object v0

    .line 4871
    :pswitch_27
    const-string v0, "RIL_REQUEST_VOICE_RADIO_TECH"

    return-object v0

    .line 4869
    :pswitch_28
    const-string v0, "RIL_REQUEST_STK_SEND_ENVELOPE_WITH_STATUS"

    return-object v0

    .line 4867
    :pswitch_29
    const-string v0, "RIL_REQUEST_ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU"

    return-object v0

    .line 4865
    :pswitch_2a
    const-string v0, "RIL_REQUEST_ISIM_AUTHENTICATION"

    return-object v0

    .line 4863
    :pswitch_2b
    const-string v0, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE"

    return-object v0

    .line 4861
    :pswitch_2c
    const-string v0, "RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING"

    return-object v0

    .line 4859
    :pswitch_2d
    const-string v0, "RIL_REQUEST_REPORT_SMS_MEMORY_STATUS"

    return-object v0

    .line 4855
    :pswitch_2e
    const-string v0, "RIL_REQUEST_SET_SMSC_ADDRESS"

    return-object v0

    .line 4853
    :pswitch_2f
    const-string v0, "RIL_REQUEST_GET_SMSC_ADDRESS"

    return-object v0

    .line 4857
    :pswitch_30
    const-string v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4851
    :pswitch_31
    const-string v0, "RIL_REQUEST_DEVICE_IDENTITY"

    return-object v0

    .line 4849
    :pswitch_32
    const-string v0, "RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM"

    return-object v0

    .line 4847
    :pswitch_33
    const-string v0, "RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM"

    return-object v0

    .line 4845
    :pswitch_34
    const-string v0, "RIL_REQUEST_CDMA_SUBSCRIPTION"

    return-object v0

    .line 4843
    :pswitch_35
    const-string v0, "RIL_REQUEST_CDMA_BROADCAST_ACTIVATION"

    return-object v0

    .line 4837
    :pswitch_36
    const-string v0, "RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG"

    return-object v0

    .line 4835
    :pswitch_37
    const-string v0, "RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG"

    return-object v0

    .line 4839
    :pswitch_38
    const-string v0, "RIL_REQUEST_GSM_BROADCAST_ACTIVATION"

    return-object v0

    .line 4833
    :pswitch_39
    const-string v0, "RIL_REQUEST_GSM_SET_BROADCAST_CONFIG"

    return-object v0

    .line 4831
    :pswitch_3a
    const-string v0, "RIL_REQUEST_GSM_GET_BROADCAST_CONFIG"

    return-object v0

    .line 4829
    :pswitch_3b
    const-string v0, "RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE"

    return-object v0

    .line 4827
    :pswitch_3c
    const-string v0, "RIL_REQUEST_CDMA_SEND_SMS"

    return-object v0

    .line 4841
    :pswitch_3d
    const-string v0, "RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY"

    return-object v0

    .line 4825
    :pswitch_3e
    const-string v0, "RIL_REQUEST_CDMA_BURST_DTMF"

    return-object v0

    .line 4823
    :pswitch_3f
    const-string v0, "RIL_REQUEST_CDMA_FLASH"

    return-object v0

    .line 4821
    :pswitch_40
    const-string v0, "RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    return-object v0

    .line 4819
    :pswitch_41
    const-string v0, "RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    return-object v0

    .line 4817
    :pswitch_42
    const-string v0, "RIL_REQUEST_QUERY_TTY_MODE"

    return-object v0

    .line 4815
    :pswitch_43
    const-string v0, "RIL_REQUEST_SET_TTY_MODE"

    return-object v0

    .line 4813
    :pswitch_44
    const-string v0, "RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE"

    return-object v0

    .line 4811
    :pswitch_45
    const-string v0, "RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE"

    return-object v0

    .line 4809
    :pswitch_46
    const-string v0, "RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE"

    return-object v0

    .line 4807
    :pswitch_47
    const-string v0, "REQUEST_SET_LOCATION_UPDATES"

    return-object v0

    .line 4805
    :pswitch_48
    const-string v0, "REQUEST_GET_NEIGHBORING_CELL_IDS"

    return-object v0

    .line 4803
    :pswitch_49
    const-string v0, "REQUEST_GET_PREFERRED_NETWORK_TYPE"

    return-object v0

    .line 4801
    :pswitch_4a
    const-string v0, "REQUEST_SET_PREFERRED_NETWORK_TYPE"

    return-object v0

    .line 4799
    :pswitch_4b
    const-string v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 4798
    :pswitch_4c
    const-string v0, "REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    return-object v0

    .line 4796
    :pswitch_4d
    const-string v0, "REQUEST_STK_SEND_TERMINAL_RESPONSE"

    return-object v0

    .line 4794
    :pswitch_4e
    const-string v0, "REQUEST_STK_SEND_ENVELOPE_COMMAND"

    return-object v0

    .line 4792
    :pswitch_4f
    const-string v0, "REQUEST_STK_SET_PROFILE"

    return-object v0

    .line 4790
    :pswitch_50
    const-string v0, "REQUEST_STK_GET_PROFILE"

    return-object v0

    .line 4788
    :pswitch_51
    const-string v0, "QUERY_AVAILABLE_BAND_MODE"

    return-object v0

    .line 4786
    :pswitch_52
    const-string v0, "SET_BAND_MODE"

    return-object v0

    .line 4784
    :pswitch_53
    const-string v0, "DELETE_SMS_ON_SIM"

    return-object v0

    .line 4782
    :pswitch_54
    const-string v0, "WRITE_SMS_TO_SIM"

    return-object v0

    .line 4780
    :pswitch_55
    const-string v0, "SET_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 4778
    :pswitch_56
    const-string v0, "SCREEN_STATE"

    return-object v0

    .line 4776
    :pswitch_57
    const-string v0, "OEM_HOOK_STRINGS"

    return-object v0

    .line 4774
    :pswitch_58
    const-string v0, "OEM_HOOK_RAW"

    return-object v0

    .line 4772
    :pswitch_59
    const-string v0, "RESET_RADIO"

    return-object v0

    .line 4770
    :pswitch_5a
    const-string v0, "DATA_CALL_LIST"

    return-object v0

    .line 4768
    :pswitch_5b
    const-string v0, "LAST_DATA_CALL_FAIL_CAUSE"

    return-object v0

    .line 4766
    :pswitch_5c
    const-string v0, "QUERY_CLIP"

    return-object v0

    .line 4764
    :pswitch_5d
    const-string v0, "GET_MUTE"

    return-object v0

    .line 4762
    :pswitch_5e
    const-string v0, "SET_MUTE"

    return-object v0

    .line 4760
    :pswitch_5f
    const-string v0, "SEPARATE_CONNECTION"

    return-object v0

    .line 4758
    :pswitch_60
    const-string v0, "BASEBAND_VERSION"

    return-object v0

    .line 4756
    :pswitch_61
    const-string v0, "DTMF_STOP"

    return-object v0

    .line 4754
    :pswitch_62
    const-string v0, "DTMF_START"

    return-object v0

    .line 4752
    :pswitch_63
    const-string v0, "QUERY_AVAILABLE_NETWORKS "

    return-object v0

    .line 4750
    :pswitch_64
    const-string v0, "SET_NETWORK_SELECTION_MANUAL"

    return-object v0

    .line 4748
    :pswitch_65
    const-string v0, "SET_NETWORK_SELECTION_AUTOMATIC"

    return-object v0

    .line 4746
    :pswitch_66
    const-string v0, "QUERY_NETWORK_SELECTION_MODE"

    return-object v0

    .line 4744
    :pswitch_67
    const-string v0, "CHANGE_BARRING_PASSWORD"

    return-object v0

    .line 4742
    :pswitch_68
    const-string v0, "SET_FACILITY_LOCK"

    return-object v0

    .line 4740
    :pswitch_69
    const-string v0, "QUERY_FACILITY_LOCK"

    return-object v0

    .line 4738
    :pswitch_6a
    const-string v0, "DEACTIVATE_DATA_CALL"

    return-object v0

    .line 4736
    :pswitch_6b
    const-string v0, "ANSWER"

    return-object v0

    .line 4734
    :pswitch_6c
    const-string v0, "GET_IMEISV"

    return-object v0

    .line 4732
    :pswitch_6d
    const-string v0, "GET_IMEI"

    return-object v0

    .line 4730
    :pswitch_6e
    const-string v0, "SMS_ACKNOWLEDGE"

    return-object v0

    .line 4728
    :pswitch_6f
    const-string v0, "SET_CALL_WAITING"

    return-object v0

    .line 4726
    :pswitch_70
    const-string v0, "QUERY_CALL_WAITING"

    return-object v0

    .line 4724
    :pswitch_71
    const-string v0, "SET_CALL_FORWARD"

    return-object v0

    .line 4722
    :pswitch_72
    const-string v0, "QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 4720
    :pswitch_73
    const-string v0, "SET_CLIR"

    return-object v0

    .line 4718
    :pswitch_74
    const-string v0, "GET_CLIR"

    return-object v0

    .line 4716
    :pswitch_75
    const-string v0, "CANCEL_USSD"

    return-object v0

    .line 4714
    :pswitch_76
    const-string v0, "SEND_USSD"

    return-object v0

    .line 4712
    :pswitch_77
    const-string v0, "SIM_IO"

    return-object v0

    .line 4710
    :pswitch_78
    const-string v0, "SETUP_DATA_CALL"

    return-object v0

    .line 4708
    :pswitch_79
    const-string v0, "SEND_SMS_EXPECT_MORE"

    return-object v0

    .line 4706
    :pswitch_7a
    const-string v0, "SEND_SMS"

    return-object v0

    .line 4704
    :pswitch_7b
    const-string v0, "DTMF"

    return-object v0

    .line 4702
    :pswitch_7c
    const-string v0, "RADIO_POWER"

    return-object v0

    .line 4700
    :pswitch_7d
    const-string v0, "OPERATOR"

    return-object v0

    .line 4698
    :pswitch_7e
    const-string v0, "DATA_REGISTRATION_STATE"

    return-object v0

    .line 4696
    :pswitch_7f
    const-string v0, "VOICE_REGISTRATION_STATE"

    return-object v0

    .line 4694
    :pswitch_80
    const-string v0, "SIGNAL_STRENGTH"

    return-object v0

    .line 4692
    :pswitch_81
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 4690
    :pswitch_82
    const-string v0, "UDUB"

    return-object v0

    .line 4688
    :pswitch_83
    const-string v0, "CONFERENCE"

    return-object v0

    .line 4686
    :pswitch_84
    const-string v0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 4684
    :pswitch_85
    const-string v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    .line 4682
    :pswitch_86
    const-string v0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    .line 4680
    :pswitch_87
    const-string v0, "HANGUP"

    return-object v0

    .line 4678
    :pswitch_88
    const-string v0, "GET_IMSI"

    return-object v0

    .line 4676
    :pswitch_89
    const-string v0, "DIAL"

    return-object v0

    .line 4674
    :pswitch_8a
    const-string v0, "GET_CURRENT_CALLS"

    return-object v0

    .line 4672
    :pswitch_8b
    const-string v0, "ENTER_NETWORK_DEPERSONALIZATION"

    return-object v0

    .line 4670
    :pswitch_8c
    const-string v0, "CHANGE_SIM_PIN2"

    return-object v0

    .line 4668
    :pswitch_8d
    const-string v0, "CHANGE_SIM_PIN"

    return-object v0

    .line 4666
    :pswitch_8e
    const-string v0, "ENTER_SIM_PUK2"

    return-object v0

    .line 4664
    :pswitch_8f
    const-string v0, "ENTER_SIM_PIN2"

    return-object v0

    .line 4662
    :pswitch_90
    const-string v0, "ENTER_SIM_PUK"

    return-object v0

    .line 4660
    :pswitch_91
    const-string v0, "ENTER_SIM_PIN"

    return-object v0

    .line 4658
    :pswitch_92
    const-string v0, "GET_SIM_STATUS"

    return-object v0

    .line 4933
    :cond_0
    const-string v0, "RIL_RESPONSE_ACKNOWLEDGEMENT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 4957
    packed-switch p0, :pswitch_data_0

    .line 5063
    :pswitch_0
    const-string v0, "<unknown response>"

    return-object v0

    .line 5061
    :pswitch_1
    const-string v0, "RIL_UNSOL_PHYSICAL_CHANNEL_CONFIG"

    return-object v0

    .line 5059
    :pswitch_2
    const-string v0, "RIL_UNSOL_KEEPALIVE_STATUS"

    return-object v0

    .line 5057
    :pswitch_3
    const-string v0, "RIL_UNSOL_ICC_SLOT_STATUS"

    return-object v0

    .line 5055
    :pswitch_4
    const-string v0, "RIL_UNSOL_NETWORK_SCAN_RESULT"

    return-object v0

    .line 5053
    :pswitch_5
    const-string v0, "RIL_UNSOL_CARRIER_INFO_IMSI_ENCRYPTION"

    return-object v0

    .line 5051
    :pswitch_6
    const-string v0, "UNSOL_MODEM_RESTART"

    return-object v0

    .line 5049
    :pswitch_7
    const-string v0, "UNSOL_PCO_DATA"

    return-object v0

    .line 5047
    :pswitch_8
    const-string v0, "UNSOL_LCE_INFO_RECV"

    return-object v0

    .line 5045
    :pswitch_9
    const-string v0, "UNSOL_STK_CC_ALPHA_NOTIFY"

    return-object v0

    .line 5043
    :pswitch_a
    const-string v0, "UNSOL_ON_SS"

    return-object v0

    .line 5041
    :pswitch_b
    const-string v0, "RIL_UNSOL_RADIO_CAPABILITY"

    return-object v0

    .line 5039
    :pswitch_c
    const-string v0, "RIL_UNSOL_HARDWARE_CONFIG_CHANGED"

    return-object v0

    .line 5037
    :pswitch_d
    const-string v0, "UNSOL_SRVCC_STATE_NOTIFY"

    return-object v0

    .line 5035
    :pswitch_e
    const-string v0, "RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED"

    return-object v0

    .line 5033
    :pswitch_f
    const-string v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    .line 5031
    :pswitch_10
    const-string v0, "UNSOL_CELL_INFO_LIST"

    return-object v0

    .line 5029
    :pswitch_11
    const-string v0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    return-object v0

    .line 5027
    :pswitch_12
    const-string v0, "UNSOL_RIL_CONNECTED"

    return-object v0

    .line 5025
    :pswitch_13
    const-string v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 5023
    :pswitch_14
    const-string v0, "UNSOL_CDMA_PRL_CHANGED"

    return-object v0

    .line 5021
    :pswitch_15
    const-string v0, "CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    return-object v0

    .line 5019
    :pswitch_16
    const-string v0, "UNSOL_RESEND_INCALL_MUTE"

    return-object v0

    .line 5017
    :pswitch_17
    const-string v0, "UNSOL_RINGBACK_TONE"

    return-object v0

    .line 5015
    :pswitch_18
    const-string v0, "UNSOL_OEM_HOOK_RAW"

    return-object v0

    .line 5013
    :pswitch_19
    const-string v0, "UNSOL_CDMA_INFO_REC"

    return-object v0

    .line 5011
    :pswitch_1a
    const-string v0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    return-object v0

    .line 5009
    :pswitch_1b
    const-string v0, "UNSOL_CDMA_CALL_WAITING"

    return-object v0

    .line 5007
    :pswitch_1c
    const-string v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 5005
    :pswitch_1d
    const-string v0, "UNSOL_RESTRICTED_STATE_CHANGED"

    return-object v0

    .line 5003
    :pswitch_1e
    const-string v0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    return-object v0

    .line 5001
    :pswitch_1f
    const-string v0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    return-object v0

    .line 4999
    :pswitch_20
    const-string v0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    return-object v0

    .line 4997
    :pswitch_21
    const-string v0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    return-object v0

    .line 4995
    :pswitch_22
    const-string v0, "UNSOL_CALL_RING"

    return-object v0

    .line 4993
    :pswitch_23
    const-string v0, "UNSOL_SIM_REFRESH"

    return-object v0

    .line 4991
    :pswitch_24
    const-string v0, "UNSOL_SIM_SMS_STORAGE_FULL"

    return-object v0

    .line 4989
    :pswitch_25
    const-string v0, "UNSOL_STK_CALL_SETUP"

    return-object v0

    .line 4987
    :pswitch_26
    const-string v0, "UNSOL_STK_EVENT_NOTIFY"

    return-object v0

    .line 4985
    :pswitch_27
    const-string v0, "UNSOL_STK_PROACTIVE_COMMAND"

    return-object v0

    .line 4983
    :pswitch_28
    const-string v0, "UNSOL_STK_SESSION_END"

    return-object v0

    .line 4981
    :pswitch_29
    const-string v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 4979
    :pswitch_2a
    const-string v0, "UNSOL_DATA_CALL_LIST_CHANGED"

    return-object v0

    .line 4977
    :pswitch_2b
    const-string v0, "UNSOL_SIGNAL_STRENGTH"

    return-object v0

    .line 4975
    :pswitch_2c
    const-string v0, "UNSOL_NITZ_TIME_RECEIVED"

    return-object v0

    .line 4973
    :pswitch_2d
    const-string v0, "UNSOL_ON_USSD_REQUEST"

    return-object v0

    .line 4971
    :pswitch_2e
    const-string v0, "UNSOL_ON_USSD"

    return-object v0

    .line 4969
    :pswitch_2f
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    return-object v0

    .line 4967
    :pswitch_30
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    return-object v0

    .line 4965
    :pswitch_31
    const-string v0, "UNSOL_RESPONSE_NEW_SMS"

    return-object v0

    .line 4963
    :pswitch_32
    const-string v0, "UNSOL_RESPONSE_NETWORK_STATE_CHANGED"

    return-object v0

    .line 4961
    :pswitch_33
    const-string v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    .line 4959
    :pswitch_34
    const-string v0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .line 4494
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 4495
    :cond_0
    const/16 v0, 0xb

    if-eq p0, v0, :cond_d

    const/16 v0, 0x73

    if-eq p0, v0, :cond_d

    const/16 v0, 0x75

    if-eq p0, v0, :cond_d

    packed-switch p0, :pswitch_data_0

    .line 4512
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    .line 4513
    move-object v0, p1

    check-cast v0, [I

    .line 4514
    .local v0, "intArray":[I
    array-length v1, v0

    .line 4515
    .local v1, "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4516
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-lez v1, :cond_1

    .line 4517
    const/4 v3, 0x0

    .line 4518
    .local v3, "i":I
    add-int/lit8 v4, v3, 0x1

    .local v4, "i":I
    aget v3, v0, v3

    .end local v3    # "i":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4519
    :goto_0
    if-ge v4, v1, :cond_1

    .line 4520
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i":I
    aget v4, v0, v4

    .end local v4    # "i":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4519
    move v4, v3

    goto :goto_0

    .line 4523
    .end local v3    # "i":I
    :cond_1
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4524
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4525
    .local v0, "s":Ljava/lang/String;
    goto/16 :goto_6

    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4526
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 4527
    .local v0, "strings":[Ljava/lang/String;
    array-length v1, v0

    .line 4528
    .restart local v1    # "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4529
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    if-lez v1, :cond_3

    .line 4530
    const/4 v3, 0x0

    .line 4531
    .restart local v3    # "i":I
    add-int/lit8 v4, v3, 0x1

    .restart local v4    # "i":I
    aget-object v3, v0, v3

    .end local v3    # "i":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4532
    :goto_1
    if-ge v4, v1, :cond_3

    .line 4533
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i":I
    aget-object v4, v0, v4

    .end local v4    # "i":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4532
    move v4, v3

    goto :goto_1

    .line 4536
    .end local v3    # "i":I
    :cond_3
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4537
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4538
    .local v0, "s":Ljava/lang/String;
    goto/16 :goto_6

    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const/16 v0, 0x9

    if-ne p0, v0, :cond_6

    .line 4539
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 4540
    .local v0, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4541
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DriverCall;

    .line 4542
    .local v3, "dc":Lcom/android/internal/telephony/DriverCall;
    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4543
    .end local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    goto :goto_2

    .line 4544
    :cond_5
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4545
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4546
    .local v0, "s":Ljava/lang/String;
    goto/16 :goto_6

    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_8

    .line 4547
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 4548
    .local v0, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4549
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NeighboringCellInfo;

    .line 4550
    .local v3, "cell":Landroid/telephony/NeighboringCellInfo;
    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4551
    .end local v3    # "cell":Landroid/telephony/NeighboringCellInfo;
    goto :goto_3

    .line 4552
    :cond_7
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4553
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4554
    .local v0, "s":Ljava/lang/String;
    goto :goto_6

    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    const/16 v0, 0x21

    if-ne p0, v0, :cond_a

    .line 4555
    move-object v0, p1

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 4556
    .local v0, "cinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v1, v0

    .line 4557
    .local v1, "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4558
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v1, :cond_9

    .line 4559
    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4558
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4561
    .end local v3    # "i":I
    :cond_9
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4562
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4563
    .local v0, "s":Ljava/lang/String;
    goto :goto_6

    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    const/16 v0, 0x7c

    if-ne p0, v0, :cond_c

    .line 4564
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 4565
    .local v0, "hwcfgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4566
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HardwareConfig;

    .line 4567
    .local v3, "hwcfg":Lcom/android/internal/telephony/HardwareConfig;
    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4568
    .end local v3    # "hwcfg":Lcom/android/internal/telephony/HardwareConfig;
    goto :goto_5

    .line 4569
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4570
    .local v0, "s":Ljava/lang/String;
    goto :goto_6

    .line 4571
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4573
    .restart local v0    # "s":Ljava/lang/String;
    :goto_6
    return-object v0

    .line 4505
    .end local v0    # "s":Ljava/lang/String;
    :cond_d
    :pswitch_0
    const-string v0, ""

    return-object v0

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendAck()V
    .locals 5

    .line 4261
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    const/16 v2, 0x320

    invoke-static {v2, v1, v0}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4263
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    .line 4264
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 4265
    .local v1, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 4267
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4271
    :goto_0
    goto :goto_1

    .line 4268
    :catch_0
    move-exception v2

    .line 4269
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendAck"

    invoke-direct {p0, v0, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 4273
    :cond_0
    const-string v2, "RILJ"

    const-string v3, "Error trying to send ack, radioProxy = null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 4276
    return-void
.end method

.method private translateStatus(I)I
    .locals 4
    .param p1, "status"    # I

    .line 4036
    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    .line 4048
    return v1

    .line 4044
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 4042
    :cond_1
    return v2

    .line 4040
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 4038
    :cond_3
    return v1
.end method

.method private static writeToParcelForCdma(Landroid/os/Parcel;IIIIILjava/lang/String;Ljava/lang/String;IIIII)V
    .locals 10
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "ni"    # I
    .param p2, "si"    # I
    .param p3, "bsi"    # I
    .param p4, "lon"    # I
    .param p5, "lat"    # I
    .param p6, "al"    # Ljava/lang/String;
    .param p7, "as"    # Ljava/lang/String;
    .param p8, "dbm"    # I
    .param p9, "ecio"    # I
    .param p10, "eDbm"    # I
    .param p11, "eEcio"    # I
    .param p12, "eSnr"    # I

    move-object v0, p0

    .line 5273
    new-instance v9, Landroid/telephony/CellIdentityCdma;

    move-object v1, v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/telephony/CellIdentityCdma;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5274
    new-instance v8, Landroid/telephony/CellSignalStrengthCdma;

    move-object v2, v8

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p11

    move/from16 v7, p12

    invoke-direct/range {v2 .. v7}, Landroid/telephony/CellSignalStrengthCdma;-><init>(IIIII)V

    invoke-virtual {v8, v0, v1}, Landroid/telephony/CellSignalStrengthCdma;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5275
    return-void
.end method

.method private static writeToParcelForGsm(Landroid/os/Parcel;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "lac"    # I
    .param p2, "cid"    # I
    .param p3, "arfcn"    # I
    .param p4, "bsic"    # I
    .param p5, "mcc"    # Ljava/lang/String;
    .param p6, "mnc"    # Ljava/lang/String;
    .param p7, "al"    # Ljava/lang/String;
    .param p8, "as"    # Ljava/lang/String;
    .param p9, "ss"    # I
    .param p10, "ber"    # I
    .param p11, "ta"    # I

    .line 5256
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5257
    invoke-virtual {p0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5258
    invoke-virtual {p0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5259
    invoke-virtual {p0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5260
    invoke-virtual {p0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5261
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5262
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5263
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5264
    invoke-virtual {p0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5265
    invoke-virtual {p0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 5266
    invoke-virtual {p0, p10}, Landroid/os/Parcel;->writeInt(I)V

    .line 5267
    invoke-virtual {p0, p11}, Landroid/os/Parcel;->writeInt(I)V

    .line 5268
    return-void
.end method

.method private static writeToParcelForLte(Landroid/os/Parcel;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 15
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "ci"    # I
    .param p2, "pci"    # I
    .param p3, "tac"    # I
    .param p4, "earfcn"    # I
    .param p5, "bandwidth"    # I
    .param p6, "mcc"    # Ljava/lang/String;
    .param p7, "mnc"    # Ljava/lang/String;
    .param p8, "al"    # Ljava/lang/String;
    .param p9, "as"    # Ljava/lang/String;
    .param p10, "ss"    # I
    .param p11, "rsrp"    # I
    .param p12, "rsrq"    # I
    .param p13, "rssnr"    # I
    .param p14, "cqi"    # I
    .param p15, "ta"    # I

    move-object v0, p0

    .line 5280
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5281
    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5282
    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5283
    move-object/from16 v3, p8

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5284
    move-object/from16 v4, p9

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5285
    invoke-virtual/range {p0 .. p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5286
    move/from16 v5, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5287
    move/from16 v6, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5288
    move/from16 v7, p4

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 5289
    move/from16 v8, p5

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 5290
    move/from16 v9, p10

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 5291
    move/from16 v10, p11

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 5292
    move/from16 v11, p12

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 5293
    move/from16 v12, p13

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 5294
    move/from16 v13, p14

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 5295
    move/from16 v14, p15

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 5296
    return-void
.end method

.method private static writeToParcelForWcdma(Landroid/os/Parcel;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "lac"    # I
    .param p2, "cid"    # I
    .param p3, "psc"    # I
    .param p4, "uarfcn"    # I
    .param p5, "mcc"    # Ljava/lang/String;
    .param p6, "mnc"    # Ljava/lang/String;
    .param p7, "al"    # Ljava/lang/String;
    .param p8, "as"    # Ljava/lang/String;
    .param p9, "ss"    # I
    .param p10, "ber"    # I

    .line 5301
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5302
    invoke-virtual {p0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5303
    invoke-virtual {p0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5304
    invoke-virtual {p0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5305
    invoke-virtual {p0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5306
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5307
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5308
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5309
    invoke-virtual {p0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5310
    invoke-virtual {p0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 5311
    invoke-virtual {p0, p10}, Landroid/os/Parcel;->writeInt(I)V

    .line 5312
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1496
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1497
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1498
    const/16 v1, 0x28

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1502
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1506
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->acceptCall(I)V

    .line 1507
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilAnswer(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    goto :goto_0

    .line 1508
    :catch_0
    move-exception v2

    .line 1509
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "acceptCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1512
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 2942
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2943
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2944
    const/16 v1, 0x6a

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2948
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2953
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2954
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2953
    invoke-interface {v0, v2, p1, v3}, Landroid/hardware/radio/V1_0/IRadio;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2957
    goto :goto_0

    .line 2955
    :catch_0
    move-exception v2

    .line 2956
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "acknowledgeIncomingGsmSmsWithPdu"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2959
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2580
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2581
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2582
    const/16 v1, 0x58

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2586
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2590
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 2591
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    xor-int/lit8 v3, p1, 0x1

    iput v3, v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;->errorClass:I

    .line 2592
    iput p2, v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;->smsCauseCode:I

    .line 2595
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2598
    goto :goto_0

    .line 2596
    :catch_0
    move-exception v3

    .line 2597
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "acknowledgeLastIncomingCdmaSms"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2600
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1476
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1477
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1478
    const/16 v1, 0x25

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1482
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1487
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->acknowledgeLastIncomingGsmSms(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    goto :goto_0

    .line 1488
    :catch_0
    move-exception v2

    .line 1489
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "acknowledgeLastIncomingGsmSms"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1492
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1319
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1320
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1321
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1325
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1326
    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1325
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1330
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->cancelPendingUssd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    goto :goto_0

    .line 1331
    :catch_0
    move-exception v2

    .line 1332
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "cancelPendingUssd"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1335
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 1611
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1612
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1613
    const/16 v1, 0x2c

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1618
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "facility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1623
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1624
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1625
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1626
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1623
    invoke-interface {v0, v2, v3, v4, v5}, Landroid/hardware/radio/V1_0/IRadio;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1629
    goto :goto_0

    .line 1627
    :catch_0
    move-exception v2

    .line 1628
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "changeBarringPassword"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1631
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 681
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 708
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 709
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 713
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 714
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 715
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 719
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " oldPin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " newPin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 724
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 725
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 727
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 724
    invoke-interface {v0, v2, v3, v4, v5}, Landroid/hardware/radio/V1_0/IRadio;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    goto :goto_0

    .line 728
    :catch_0
    move-exception v2

    .line 729
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "changeIccPin2ForApp"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 732
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 685
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 686
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 687
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 691
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " oldPin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " newPin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 696
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 697
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 698
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 699
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 696
    invoke-interface {v0, v2, v3, v4, v5}, Landroid/hardware/radio/V1_0/IRadio;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    goto :goto_0

    .line 700
    :catch_0
    move-exception v2

    .line 701
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "changeIccPinForApp"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 704
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 907
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 908
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 909
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 912
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 915
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->conference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    goto :goto_0

    .line 916
    :catch_0
    move-exception v2

    .line 917
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "conference"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 920
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method protected constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V
    .locals 8
    .param p1, "msg"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .param p2, "pdu"    # [B

    .line 2516
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2517
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2520
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    .line 2521
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    .line 2522
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    .line 2523
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digitMode:I

    .line 2524
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberMode:I

    .line 2525
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberType:I

    .line 2526
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberPlan:I

    .line 2527
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    .line 2528
    .local v2, "addrNbrOfDigits":I
    move v5, v3

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 2529
    iget-object v6, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2528
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2531
    .end local v5    # "i":I
    :cond_1
    iget-object v5, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v6

    iput v6, v5, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->subaddressType:I

    .line 2532
    iget-object v5, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    if-ne v6, v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    iput-boolean v4, v5, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->odd:Z

    .line 2533
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    .line 2534
    .local v4, "subaddrNbrOfDigits":I
    move v5, v3

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v4, :cond_3

    .line 2535
    iget-object v6, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2534
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2538
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 2539
    .local v5, "bearerDataLength":I
    nop

    .local v3, "i":I
    :goto_4
    if-ge v3, v5, :cond_4

    .line 2540
    iget-object v6, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2539
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2547
    .end local v3    # "i":I
    :cond_4
    goto :goto_5

    .line 2542
    .end local v2    # "addrNbrOfDigits":I
    .end local v4    # "subaddrNbrOfDigits":I
    .end local v5    # "bearerDataLength":I
    :catch_0
    move-exception v2

    .line 2544
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSmsCdma: conversion from input stream to object failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2548
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_5
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 6
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1516
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1517
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_2

    .line 1518
    const/16 v1, 0x29

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1522
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1523
    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1522
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1526
    nop

    .line 1527
    invoke-static {v0}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v2

    .line 1530
    .local v2, "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    if-nez v2, :cond_1

    .line 1531
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v4, 0x2

    if-ne p2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0, v3, p1, v4}, Landroid/hardware/radio/V1_0/IRadio;->deactivateDataCall(IIZ)V

    goto :goto_1

    .line 1537
    :catch_0
    move-exception v3

    goto :goto_2

    .line 1534
    :cond_1
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v3, p1, p2}, Landroid/hardware/radio/V1_2/IRadio;->deactivateDataCall_1_2(III)V

    .line 1536
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v3, v4, v5, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDeactivateDataCall(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    goto :goto_3

    .line 1537
    :goto_2
    nop

    .line 1538
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "deactivateDataCall"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1541
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2796
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2797
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2798
    const/16 v1, 0x61

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2808
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->deleteSmsOnRuim(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2811
    goto :goto_0

    .line 2809
    :catch_0
    move-exception v2

    .line 2810
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "deleteSmsOnRuim"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2813
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2104
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2105
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2106
    const/16 v1, 0x40

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2115
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->deleteSmsOnSim(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2118
    goto :goto_0

    .line 2116
    :catch_0
    move-exception v2

    .line 2117
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "deleteSmsOnSim"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2120
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 777
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .line 781
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 782
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 783
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 786
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 787
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 788
    iput p2, v2, Landroid/hardware/radio/V1_0/Dial;->clir:I

    .line 789
    if-eqz p3, :cond_0

    .line 790
    new-instance v3, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 791
    .local v3, "info":Landroid/hardware/radio/V1_0/UusInfo;
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v4

    iput v4, v3, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    .line 792
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v4

    iput v4, v3, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    .line 793
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v3, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 794
    iget-object v4, v2, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    .end local v3    # "info":Landroid/hardware/radio/V1_0/UusInfo;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 803
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->dial(ILandroid/hardware/radio/V1_0/Dial;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    goto :goto_0

    .line 804
    :catch_0
    move-exception v3

    .line 805
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "dial"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 808
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 5119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLockTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5122
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5123
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5124
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mWakeLockCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5125
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5126
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 5127
    .local v1, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mRequestList count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5128
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 5129
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RILRequest;

    .line 5130
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5128
    .end local v3    # "rr":Lcom/android/internal/telephony/RILRequest;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5132
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastNITZTimeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTestingEmergencyCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5135
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ClientWakelockTracker;->dumpClientRequestTracker(Ljava/io/PrintWriter;)V

    .line 5136
    return-void

    .line 5125
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 5132
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2834
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2835
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2836
    const/16 v1, 0x63

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2839
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2842
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2845
    goto :goto_0

    .line 2843
    :catch_0
    move-exception v2

    .line 2844
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "exitEmergencyCallbackMode"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2847
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2249
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2250
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2251
    const/16 v1, 0x48

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2254
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2257
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->explicitCallTransfer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2260
    goto :goto_0

    .line 2258
    :catch_0
    move-exception v2

    .line 2259
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "explicitCallTransfer"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2262
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getAllowedCarriers(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3684
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3685
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3686
    const/16 v1, 0x89

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3690
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3694
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getAllowedCarriers(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3697
    goto :goto_0

    .line 3695
    :catch_0
    move-exception v2

    .line 3696
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getAllowedCarriers"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3699
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1690
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1691
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1692
    const/16 v1, 0x30

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1695
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1698
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getAvailableNetworks(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1701
    goto :goto_0

    .line 1699
    :catch_0
    move-exception v2

    .line 1700
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getAvailableNetworks"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1703
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1907
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1908
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1909
    const/16 v1, 0x33

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1912
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1915
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getBasebandVersion(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    goto :goto_0

    .line 1916
    :catch_0
    move-exception v2

    .line 1917
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getBasebandVersion"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1920
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2753
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2754
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2755
    const/16 v1, 0x5f

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2758
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2761
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getCDMASubscription(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2764
    goto :goto_0

    .line 2762
    :catch_0
    move-exception v2

    .line 2763
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCDMASubscription"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2766
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1339
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1340
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1341
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1344
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1347
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getClir(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    goto :goto_0

    .line 1348
    :catch_0
    move-exception v2

    .line 1349
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCLIR"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1352
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2679
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2680
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2681
    const/16 v1, 0x5c

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2684
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2687
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getCdmaBroadcastConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2690
    goto :goto_0

    .line 2688
    :catch_0
    move-exception v2

    .line 2689
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCdmaBroadcastConfig"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2692
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2925
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2926
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2927
    const/16 v1, 0x68

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2930
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2933
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getCdmaSubscriptionSource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2936
    goto :goto_0

    .line 2934
    :catch_0
    move-exception v2

    .line 2935
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCdmaSubscriptionSource"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2938
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCellInfoList(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .line 2980
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 2981
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2982
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2983
    const/16 v1, 0x6d

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2987
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2991
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getCellInfoList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2994
    goto :goto_0

    .line 2992
    :catch_0
    move-exception v2

    .line 2993
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCellInfoList"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2996
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getClientRequestStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .line 5139
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientRequestStats()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 757
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 758
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 759
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 763
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 767
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getCurrentCalls(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    goto :goto_0

    .line 768
    :catch_0
    move-exception v2

    .line 769
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCurrentCalls"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 772
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1987
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1988
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1989
    const/16 v1, 0x39

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1992
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1995
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getDataCallList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    goto :goto_0

    .line 1996
    :catch_0
    move-exception v2

    .line 1997
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDataCallList"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2000
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 992
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 993
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 994
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 997
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1000
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getDataRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    goto :goto_0

    .line 1001
    :catch_0
    move-exception v2

    .line 1002
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDataRegistrationState"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1005
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2817
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2818
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2819
    const/16 v1, 0x62

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2822
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2825
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getDeviceIdentity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2828
    goto :goto_0

    .line 2826
    :catch_0
    move-exception v2

    .line 2827
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDeviceIdentity"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2830
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2604
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2605
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2606
    const/16 v1, 0x59

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2609
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2612
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getGsmBroadcastConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2615
    goto :goto_0

    .line 2613
    :catch_0
    move-exception v2

    .line 2614
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getGsmBroadcastConfig"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2617
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3378
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3379
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3380
    const/16 v1, 0x7c

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3384
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3387
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getHardwareConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3390
    goto :goto_0

    .line 3388
    :catch_0
    move-exception v2

    .line 3389
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getHardwareConfig"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3392
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 4006
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getIMEI not expected to be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 4011
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getIMEISV not expected to be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 812
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 813
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 817
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 818
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 819
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 823
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 824
    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 823
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 827
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio;->getImsiForApp(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    goto :goto_0

    .line 828
    :catch_0
    move-exception v2

    .line 829
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getIMSIForApp"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 832
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 536
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 537
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 540
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 543
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getIccCardStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    goto :goto_0

    .line 544
    :catch_0
    move-exception v2

    .line 545
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getIccCardStatus"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 548
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getIccSlotsStatus(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 552
    if-eqz p1, :cond_0

    .line 553
    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 554
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 553
    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 555
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 557
    :cond_0
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3046
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3047
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3048
    const/16 v1, 0x70

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3052
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3056
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getImsRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3059
    goto :goto_0

    .line 3057
    :catch_0
    move-exception v2

    .line 3058
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsRegistrationState"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3061
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 941
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 942
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 943
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 946
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 949
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getLastCallFailCause(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    goto :goto_0

    .line 950
    :catch_0
    move-exception v2

    .line 951
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getLastCallFailCause"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 954
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 4028
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getLastDataCallFailCause not expected to be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4020
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getLastPdpFailCause not expected to be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getMessageFromRequest(Ljava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "request"    # Ljava/lang/Object;

    .line 4211
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    .line 4212
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    .line 4213
    .local v1, "result":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 4214
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    .line 4216
    :cond_0
    return-object v1
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 3599
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3600
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3601
    const/16 v1, 0x87

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3605
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3609
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getModemActivityInfo(I)V

    .line 3611
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3612
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3613
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 3614
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3617
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 3615
    :catch_0
    move-exception v2

    .line 3616
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getModemActivityInfo"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3621
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1944
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1945
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1946
    const/16 v1, 0x36

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1949
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1952
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getMute(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    goto :goto_0

    .line 1953
    :catch_0
    move-exception v2

    .line 1954
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getMute"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1957
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .line 2305
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 2306
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2307
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2308
    const/16 v1, 0x4b

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2311
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2314
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getNeighboringCids(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2317
    goto :goto_0

    .line 2315
    :catch_0
    move-exception v2

    .line 2316
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getNeighboringCids"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2319
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1635
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1636
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1637
    const/16 v1, 0x2d

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1640
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1643
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getNetworkSelectionMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1646
    goto :goto_0

    .line 1644
    :catch_0
    move-exception v2

    .line 1645
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getNetworkSelectionMode"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1648
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getOemHookProxy(Landroid/os/Message;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;
    .locals 5
    .param p1, "result"    # Landroid/os/Message;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 399
    iget-boolean v0, p0, Lcom/android/internal/telephony/RIL;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 401
    if-eqz p1, :cond_0

    .line 402
    nop

    .line 403
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 402
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 404
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 406
    :cond_0
    return-object v2

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    return-object v0

    .line 414
    :cond_2
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 415
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    aget-object v0, v0, v3

    .line 414
    invoke-static {v0, v1}, Landroid/hardware/radio/deprecated/V1_0/IOemHook;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    if-eqz v0, :cond_4

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mOemHookResponse:Lcom/android/internal/telephony/OemHookResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mOemHookIndication:Lcom/android/internal/telephony/OemHookIndication;

    invoke-interface {v0, v3, v4}, Landroid/hardware/radio/deprecated/V1_0/IOemHook;->setResponseFunctions(Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse;Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication;)V

    goto :goto_1

    .line 421
    :cond_4
    const-string v0, "getOemHookProxy: mOemHookProxy == null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_1
    goto :goto_2

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OemHookProxy getService/setResponseFunctions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 428
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    if-nez v0, :cond_5

    .line 429
    if-eqz p1, :cond_5

    .line 430
    nop

    .line 431
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 430
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 432
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 436
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    return-object v0
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1009
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1010
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1011
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1014
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1017
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getOperator(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    goto :goto_0

    .line 1018
    :catch_0
    move-exception v2

    .line 1019
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getOperator"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1022
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1982
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getDataCallList(Landroid/os/Message;)V

    .line 1983
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2288
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2289
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2290
    const/16 v1, 0x4a

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2293
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2296
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getPreferredNetworkType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2299
    goto :goto_0

    .line 2297
    :catch_0
    move-exception v2

    .line 2298
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getPreferredNetworkType"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2301
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2457
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2458
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2459
    const/16 v1, 0x53

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2462
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2465
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getPreferredVoicePrivacy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2468
    goto :goto_0

    .line 2466
    :catch_0
    move-exception v2

    .line 2467
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getPreferredVoicePrivacy"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2470
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 3466
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3467
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3468
    const/16 v1, 0x82

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3472
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3476
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getRadioCapability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3479
    goto :goto_0

    .line 3477
    :catch_0
    move-exception v2

    .line 3478
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getRadioCapability"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3481
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 354
    iget-boolean v0, p0, Lcom/android/internal/telephony/RIL;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 356
    if-eqz p1, :cond_0

    .line 357
    nop

    .line 358
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 357
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 359
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 361
    :cond_0
    return-object v2

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-object v0

    .line 369
    :cond_2
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    aget-object v0, v0, v3

    invoke-static {v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v0, :cond_4

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 373
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 372
    invoke-interface {v0, v3, v4, v5}, Landroid/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

    invoke-interface {v0, v3, v4}, Landroid/hardware/radio/V1_0/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    goto :goto_1

    .line 376
    :cond_4
    const-string v0, "getRadioProxy: mRadioProxy == null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_1
    goto :goto_2

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 383
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_5

    .line 385
    const-string v0, "getRadioProxy: mRadioProxy == null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 386
    if-eqz p1, :cond_5

    .line 387
    nop

    .line 388
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 387
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 389
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 393
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-object v0
.end method

.method public getRilHandler()Lcom/android/internal/telephony/RIL$RilHandler;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4354
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    return-object v0
.end method

.method public getRilRequestList()Landroid/util/SparseArray;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation

    .line 4360
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 958
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 959
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 960
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 963
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 966
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getSignalStrength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    goto :goto_0

    .line 967
    :catch_0
    move-exception v2

    .line 968
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getSignalStrength"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 971
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2851
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2852
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2853
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2856
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2859
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getSmscAddress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2862
    goto :goto_0

    .line 2860
    :catch_0
    move-exception v2

    .line 2861
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getSmscAddress"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2864
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2963
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2964
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2965
    const/16 v1, 0x6c

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2968
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2971
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getVoiceRadioTechnology(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2974
    goto :goto_0

    .line 2972
    :catch_0
    move-exception v2

    .line 2973
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getVoiceRadioTechnology"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2976
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 975
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 976
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 977
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 980
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 983
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getVoiceRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    goto :goto_0

    .line 984
    :catch_0
    move-exception v2

    .line 985
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getVoiceRegistrationState"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 988
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getWakeLock(I)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p1, "wakeLockType"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4348
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_0
    return-object v0
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "accept"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 4061
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 4062
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 4063
    const/16 v1, 0x47

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4067
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4071
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->handleStkCallSetupRequestFromSim(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4074
    goto :goto_0

    .line 4072
    :catch_0
    move-exception v2

    .line 4073
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getAllowedCarriers"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4076
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 4
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 836
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 837
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 838
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 842
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " gsmIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 847
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->hangup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    goto :goto_0

    .line 848
    :catch_0
    move-exception v2

    .line 849
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupConnection"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 852
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 873
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 874
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 875
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 878
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 881
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->hangupForegroundResumeBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    goto :goto_0

    .line 882
    :catch_0
    move-exception v2

    .line 883
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupForegroundResumeBackground"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 886
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 856
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 857
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 858
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 861
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 864
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->hangupWaitingOrBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    goto :goto_0

    .line 865
    :catch_0
    move-exception v2

    .line 866
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupWaitingOrBackground"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 869
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 4
    .param p1, "channel"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3186
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3187
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3188
    const/16 v1, 0x74

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3192
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " channel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3197
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->iccCloseLogicalChannel(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3200
    goto :goto_0

    .line 3198
    :catch_0
    move-exception v2

    .line 3199
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "iccCloseLogicalChannel"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3202
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "command"    # I
    .param p2, "fileId"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .line 1252
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/RIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1253
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "command"    # I
    .param p2, "fileId"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .line 1258
    invoke-virtual {p0, p10}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1259
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 1260
    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p10, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1264
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> iccIO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1266
    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " command = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " fileId = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " p1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " p2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " p3 =  data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1265
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1272
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> iccIO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1276
    :goto_0
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 1277
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    iput p1, v2, Landroid/hardware/radio/V1_0/IccIo;->command:I

    .line 1278
    iput p2, v2, Landroid/hardware/radio/V1_0/IccIo;->fileId:I

    .line 1279
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/IccIo;->path:Ljava/lang/String;

    .line 1280
    iput p4, v2, Landroid/hardware/radio/V1_0/IccIo;->p1:I

    .line 1281
    iput p5, v2, Landroid/hardware/radio/V1_0/IccIo;->p2:I

    .line 1282
    iput p6, v2, Landroid/hardware/radio/V1_0/IccIo;->p3:I

    .line 1283
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/IccIo;->data:Ljava/lang/String;

    .line 1284
    invoke-direct {p0, p8}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/IccIo;->pin2:Ljava/lang/String;

    .line 1285
    invoke-direct {p0, p9}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/IccIo;->aid:Ljava/lang/String;

    .line 1288
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    goto :goto_1

    .line 1289
    :catch_0
    move-exception v3

    .line 1290
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "iccIOForApp"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1293
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "p2"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3162
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3163
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 3164
    const/16 v1, 0x73

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3168
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 3169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " p2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 3172
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3177
    :goto_0
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, p2}, Landroid/hardware/radio/V1_0/IRadio;->iccOpenLogicalChannel(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3180
    goto :goto_1

    .line 3178
    :catch_0
    move-exception v2

    .line 3179
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "iccOpenLogicalChannel"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3182
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 16
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "result"    # Landroid/os/Message;

    move-object/from16 v9, p0

    .line 3136
    move-object/from16 v10, p7

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v11

    .line 3137
    .local v11, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v11, :cond_1

    .line 3138
    const/16 v0, 0x72

    iget-object v1, v9, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v9, v0, v10, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v12

    .line 3142
    .local v12, "rr":Lcom/android/internal/telephony/RILRequest;
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 3143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cla = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " instruction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " p1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p3

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " p2 =  p3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 3147
    :cond_0
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v8, p5

    move-object/from16 v7, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3151
    :goto_0
    const/4 v2, 0x0

    move-object v1, v9

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, p4

    move v7, v8

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/RIL;->createSimApdu(IIIIIILjava/lang/String;)Landroid/hardware/radio/V1_0/SimApdu;

    move-result-object v0

    move-object v1, v0

    .line 3153
    .local v1, "msg":Landroid/hardware/radio/V1_0/SimApdu;
    :try_start_0
    iget v0, v12, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v11, v0, v1}, Landroid/hardware/radio/V1_0/IRadio;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3156
    goto :goto_1

    .line 3154
    :catch_0
    move-exception v0

    .line 3155
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "iccTransmitApduBasicChannel"

    invoke-direct {v9, v12, v2, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Landroid/hardware/radio/V1_0/SimApdu;
    .end local v12    # "rr":Lcom/android/internal/telephony/RILRequest;
    goto :goto_1

    .line 3158
    :cond_1
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    :goto_1
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .line 3208
    if-lez p1, :cond_2

    .line 3213
    invoke-virtual {p0, p8}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3214
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 3215
    const/16 v1, 0x75

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p8, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3219
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 3220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " channel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cla = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " instruction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " p1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " p2 =  p3 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 3224
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3228
    :goto_0
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/RIL;->createSimApdu(IIIIIILjava/lang/String;)Landroid/hardware/radio/V1_0/SimApdu;

    move-result-object v2

    .line 3231
    .local v2, "msg":Landroid/hardware/radio/V1_0/SimApdu;
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3234
    goto :goto_1

    .line 3232
    :catch_0
    move-exception v3

    .line 3233
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "iccTransmitApduLogicalChannel"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3236
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/SimApdu;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 3209
    .end local v0    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid channel in iccTransmitApduLogicalChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 2004
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getOemHookProxy(Landroid/os/Message;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    move-result-object v0

    .line 2005
    .local v0, "oemHookProxy":Landroid/hardware/radio/deprecated/V1_0/IOemHook;
    if-eqz v0, :cond_0

    .line 2006
    const/16 v1, 0x3b

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2010
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2010
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2015
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/deprecated/V1_0/IOemHook;->sendRequestRaw(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2018
    goto :goto_0

    .line 2016
    :catch_0
    move-exception v2

    .line 2017
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "invokeOemRilRequestRaw"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2019
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 2022
    :cond_0
    const-string v1, "Radio Oem Hook Service is disabled for P and later devices. "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2024
    :goto_1
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2028
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getOemHookProxy(Landroid/os/Message;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    move-result-object v0

    .line 2029
    .local v0, "oemHookProxy":Landroid/hardware/radio/deprecated/V1_0/IOemHook;
    if-eqz v0, :cond_1

    .line 2030
    const/16 v1, 0x3c

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2033
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string v2, ""

    .line 2034
    .local v2, "logStr":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 2035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2034
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2038
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " strings = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2043
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    new-instance v4, Ljava/util/ArrayList;

    .line 2044
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2043
    invoke-interface {v0, v3, v4}, Landroid/hardware/radio/deprecated/V1_0/IOemHook;->sendRequestStrings(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2047
    goto :goto_1

    .line 2045
    :catch_0
    move-exception v3

    .line 2046
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "invokeOemRilRequestStrings"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2048
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "logStr":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 2051
    :cond_1
    const-string v1, "Radio Oem Hook Service is disabled for P and later devices. "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2053
    :goto_2
    return-void
.end method

.method makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;
    .locals 10

    .line 4480
    const/4 v0, 0x1

    .line 4482
    .local v0, "raf":I
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4484
    .local v1, "rafString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4485
    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->rafTypeFromString(Ljava/lang/String;)I

    move-result v0

    .line 4487
    :cond_0
    new-instance v9, Lcom/android/internal/telephony/RadioCapability;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, ""

    const/4 v8, 0x1

    move-object v2, v9

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 4489
    .local v2, "rc":Lcom/android/internal/telephony/RadioCapability;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Faking RIL_REQUEST_GET_RADIO_CAPABILITY response using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4490
    return-object v2
.end method

.method notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 5
    .param p1, "infoRec"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 4607
    const/16 v0, 0x403

    .line 4608
    .local v0, "response":I
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4609
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_6

    .line 4610
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4611
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v3, v2, v4, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4614
    :cond_0
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v1, :cond_1

    .line 4615
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_6

    .line 4616
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4617
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v3, v2, v4, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4620
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    if-eqz v1, :cond_2

    .line 4621
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_6

    .line 4622
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4623
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v3, v2, v4, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4626
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    if-eqz v1, :cond_3

    .line 4627
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_6

    .line 4628
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4629
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v3, v2, v4, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4632
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    if-eqz v1, :cond_4

    .line 4633
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_6

    .line 4634
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4635
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v3, v2, v4, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4638
    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    if-eqz v1, :cond_5

    .line 4639
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_6

    .line 4640
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4641
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v3, v2, v4, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4644
    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    if-eqz v1, :cond_6

    .line 4645
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_6

    .line 4647
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4649
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v3, v2, v4, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4653
    :cond_6
    :goto_0
    return-void
.end method

.method notifyRegistrantsRilConnectionChanged(I)V
    .locals 4
    .param p1, "rilVer"    # I

    .line 4598
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mRilVersion:I

    .line 4599
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 4600
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4603
    :cond_0
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 4
    .param p1, "itemID"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3240
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3241
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3242
    const/16 v1, 0x76

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3246
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " itemId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3251
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->nvReadItem(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3254
    goto :goto_0

    .line 3252
    :catch_0
    move-exception v2

    .line 3253
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "nvReadItem"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3256
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 4
    .param p1, "resetType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3310
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3311
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3312
    const/16 v1, 0x79

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3316
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resetType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3321
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertToHalResetNvType(I)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio;->nvResetConfig(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3324
    goto :goto_0

    .line 3322
    :catch_0
    move-exception v2

    .line 3323
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "nvResetConfig"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3326
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 5
    .param p1, "preferredRoamingList"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .line 3284
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3285
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 3286
    const/16 v1, 0x78

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3290
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " PreferredRoamingList = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3292
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3290
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3296
    .local v2, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 3297
    aget-byte v4, p1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3296
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3301
    .end local v3    # "i":I
    :cond_0
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3304
    goto :goto_1

    .line 3302
    :catch_0
    move-exception v3

    .line 3303
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "nvWriteCdmaPrl"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3306
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "itemId"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 3260
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3261
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3262
    const/16 v1, 0x77

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3266
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " itemId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " itemValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3270
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 3271
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    iput p1, v2, Landroid/hardware/radio/V1_0/NvWriteItem;->itemId:I

    .line 3272
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/NvWriteItem;->value:Ljava/lang/String;

    .line 3275
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3278
    goto :goto_0

    .line 3276
    :catch_0
    move-exception v3

    .line 3277
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "nvWriteItem"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3280
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method protected obtainRequestSerial(ILandroid/os/Message;Landroid/os/WorkSource;)I
    .locals 2
    .param p1, "request"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 519
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 520
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->addRequest(Lcom/android/internal/telephony/RILRequest;)V

    .line 521
    iget v1, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    return v1
.end method

.method processIndication(I)V
    .locals 1
    .param p1, "indicationType"    # I

    .line 4086
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4087
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->sendAck()V

    .line 4088
    const-string v0, "Unsol response received; Sending ack to ril.cpp"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4092
    :cond_0
    return-void
.end method

.method processRequestAck(I)V
    .locals 4
    .param p1, "serial"    # I

    .line 4096
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4097
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    .line 4098
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4099
    if-nez v1, :cond_0

    .line 4100
    const-string v0, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRequestAck: Unexpected solicited ack response! serial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4103
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 4105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Ack < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4108
    :goto_0
    return-void

    .line 4098
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .locals 7
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4119
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 4120
    .local v0, "serial":I
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 4121
    .local v1, "error":I
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    .line 4123
    .local v2, "type":I
    const/4 v3, 0x0

    .line 4125
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 4126
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 4127
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/RILRequest;

    move-object v3, v5

    .line 4128
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4129
    if-nez v3, :cond_0

    .line 4130
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected solicited ack response! sn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4132
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 4134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Ack < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4137
    :goto_0
    return-object v3

    .line 4128
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 4140
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 4141
    if-nez v3, :cond_2

    .line 4142
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processResponse: Unexpected response! serial: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    const/4 v4, 0x0

    return-object v4

    .line 4148
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V

    .line 4150
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 4151
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->sendAck()V

    .line 4153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response received for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 4154
    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Sending ack to ril.cpp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4153
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4163
    :cond_3
    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_5

    const/16 v6, 0x81

    if-eq v5, v6, :cond_4

    goto :goto_1

    .line 4175
    :cond_4
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_1

    .line 4166
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v5, :cond_6

    .line 4168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    .line 4169
    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4168
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4171
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4179
    :cond_6
    :goto_1
    if-eqz v1, :cond_9

    .line 4180
    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    if-eq v5, v4, :cond_7

    const/4 v4, 0x4

    if-eq v5, v4, :cond_7

    const/16 v4, 0x2b

    if-eq v5, v4, :cond_7

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 4186
    :cond_7
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_8

    .line 4188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    .line 4189
    invoke-virtual {v5}, Landroid/os/RegistrantList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4188
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4191
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4193
    :cond_8
    :goto_2
    goto :goto_3

    .line 4197
    :cond_9
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v5, 0xe

    if-eq v4, v5, :cond_a

    goto :goto_3

    .line 4199
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4200
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_b

    .line 4201
    const-string v4, "testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4202
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v4}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 4207
    :cond_b
    :goto_3
    return-object v3

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 7
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4229
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v0, :cond_0

    .line 4231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 4232
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4231
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 4236
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4239
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 4241
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v4, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    .line 4243
    if-eqz p1, :cond_2

    .line 4244
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    if-nez v0, :cond_1

    .line 4245
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 4247
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 4249
    :cond_2
    return-void
.end method

.method protected processResponseDone(Ljava/lang/Object;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 1
    .param p1, "request"    # Ljava/lang/Object;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 4252
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    .line 4253
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 4254
    return-void
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3580
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3581
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3582
    const/16 v1, 0x86

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3586
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3590
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->pullLceData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3593
    goto :goto_0

    .line 3591
    :catch_0
    move-exception v2

    .line 3592
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "pullLceData"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3595
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2144
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2145
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2146
    const/16 v1, 0x42

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2149
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2152
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getAvailableBandModes(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2155
    goto :goto_0

    .line 2153
    :catch_0
    move-exception v2

    .line 2154
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryAvailableBandMode"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2157
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1961
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1962
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1963
    const/16 v1, 0x37

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1966
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1969
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getClip(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1972
    goto :goto_0

    .line 1970
    :catch_0
    move-exception v2

    .line 1971
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryCLIP"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1974
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 1376
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1377
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1378
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1382
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cfreason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1386
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 1388
    .local v2, "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    iput p1, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 1389
    iput p2, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 1390
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 1391
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 1392
    const/4 v3, 0x0

    iput v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 1395
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1398
    goto :goto_0

    .line 1396
    :catch_0
    move-exception v3

    .line 1397
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "queryCallForwardStatus"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1400
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 4
    .param p1, "serviceClass"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1436
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1437
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1438
    const/16 v1, 0x23

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1442
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1447
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->getCallWaiting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    goto :goto_0

    .line 1448
    :catch_0
    move-exception v2

    .line 1449
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryCallWaiting"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1452
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2363
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2364
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2365
    const/16 v1, 0x4f

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2368
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2371
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getCdmaRoamingPreference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2374
    goto :goto_0

    .line 2372
    :catch_0
    move-exception v2

    .line 2373
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryCdmaRoamingPreference"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2376
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 1546
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1547
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .line 1552
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v6

    .line 1553
    .local v6, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v6, :cond_0

    .line 1554
    const/16 v0, 0x2a

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 1558
    .local v7, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1564
    :try_start_0
    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1565
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1566
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1568
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1564
    move-object v0, v6

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/radio/V1_0/IRadio;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1571
    goto :goto_0

    .line 1569
    :catch_0
    move-exception v0

    .line 1570
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "getFacilityLockForApp"

    invoke-direct {p0, v7, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1573
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2400
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2401
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2402
    const/16 v1, 0x51

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2405
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2408
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getTTYMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2411
    goto :goto_0

    .line 2409
    :catch_0
    move-exception v2

    .line 2410
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryTTYMode"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2413
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 924
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 925
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 926
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 929
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 932
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->rejectCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    goto :goto_0

    .line 933
    :catch_0
    move-exception v2

    .line 934
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "rejectCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 937
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2888
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2889
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2890
    const/16 v1, 0x66

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2894
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 2895
    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " available = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2894
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2899
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->reportSmsMemoryStatus(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2902
    goto :goto_0

    .line 2900
    :catch_0
    move-exception v2

    .line 2901
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "reportSmsMemoryStatus"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2904
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2908
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2909
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2910
    const/16 v1, 0x67

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2913
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2916
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->reportStkServiceIsRunning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2919
    goto :goto_0

    .line 2917
    :catch_0
    move-exception v2

    .line 2918
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "reportStkServiceIsRunning"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2921
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 3397
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3398
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3399
    const/16 v1, 0x7d

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3403
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3406
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 3408
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3409
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3406
    invoke-interface {v0, v2, p1, v3, v4}, Landroid/hardware/radio/V1_0/IRadio;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3412
    goto :goto_0

    .line 3410
    :catch_0
    move-exception v2

    .line 3411
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestIccSimAuthentication"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3414
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3447
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3448
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3449
    const/16 v1, 0x81

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3453
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3457
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->requestShutdown(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3460
    goto :goto_0

    .line 3458
    :catch_0
    move-exception v2

    .line 3459
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestShutdown"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3462
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method protected resetProxyAndRequestList()V
    .locals 3

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 336
    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    .line 339
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 341
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 343
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 345
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V

    .line 347
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getOemHookProxy(Landroid/os/Message;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    .line 349
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 4053
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "resetRadio not expected to be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method riljLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 5068
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5069
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [SUB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5068
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5070
    return-void
.end method

.method riljLoge(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 5073
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5074
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [SUB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5073
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5075
    return-void
.end method

.method riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 5078
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5079
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [SUB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5078
    invoke-static {v0, v1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5080
    return-void
.end method

.method riljLogv(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 5083
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5084
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [SUB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5083
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 4
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 2494
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2495
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2496
    const/16 v1, 0x55

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2500
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dtmfString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " off = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2505
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, p2, p3}, Landroid/hardware/radio/V1_0/IRadio;->sendBurstDtmf(ILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2508
    goto :goto_0

    .line 2506
    :catch_0
    move-exception v2

    .line 2507
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendBurstDtmf"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2510
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "featureCode"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2474
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2475
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2476
    const/16 v1, 0x54

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2480
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " featureCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2485
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio;->sendCDMAFeatureCode(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2488
    goto :goto_0

    .line 2486
    :catch_0
    move-exception v2

    .line 2487
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendCDMAFeatureCode"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2490
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 7
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .line 2557
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2558
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2559
    const/16 v1, 0x57

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2563
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2565
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 2566
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    .line 2569
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 2570
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2574
    goto :goto_0

    .line 2572
    :catch_0
    move-exception v3

    .line 2573
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "sendCdmaSms"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2576
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;Z)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "expectMore"    # Z

    .line 2552
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->sendCdmaSms([BLandroid/os/Message;)V

    .line 2553
    return-void
.end method

.method public sendDeviceState(IZLandroid/os/Message;)V
    .locals 4
    .param p1, "stateType"    # I
    .param p2, "state"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 3704
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3705
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3706
    const/16 v1, 0x8a

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3710
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3715
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->sendDeviceState(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3718
    goto :goto_0

    .line 3716
    :catch_0
    move-exception v2

    .line 3717
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendDeviceState"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3720
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 5
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1046
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1047
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1048
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1053
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1057
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio;->sendDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    goto :goto_0

    .line 1058
    :catch_0
    move-exception v2

    .line 1059
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendDtmf"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1062
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2161
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2162
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2163
    const/16 v1, 0x45

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2167
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contents = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2172
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio;->sendEnvelope(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2175
    goto :goto_0

    .line 2173
    :catch_0
    move-exception v2

    .line 2174
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendEnvelope"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2177
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2229
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2230
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2231
    const/16 v1, 0x6b

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2235
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contents = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2240
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio;->sendEnvelopeWithStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2243
    goto :goto_0

    .line 2241
    :catch_0
    move-exception v2

    .line 2242
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendEnvelopeWithStatus"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2245
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 9
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 3093
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3094
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 3095
    const/16 v1, 0x71

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3099
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3101
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 3102
    .local v2, "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    const/4 v3, 0x2

    iput v3, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 3103
    int-to-byte v4, p2

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    .line 3104
    iput p3, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    .line 3106
    new-instance v4, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3107
    .local v4, "cdmaMsg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    .line 3108
    iget-object v5, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3111
    :try_start_0
    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v5, v2}, Landroid/hardware/radio/V1_0/IRadio;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 3112
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3116
    goto :goto_1

    .line 3114
    :catch_0
    move-exception v3

    .line 3115
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "sendImsCdmaSms"

    invoke-direct {p0, v1, v5, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3118
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "cdmaMsg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :cond_1
    :goto_1
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 9
    .param p1, "smscPdu"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 3066
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3067
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 3068
    const/16 v1, 0x71

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3072
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3074
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 3075
    .local v2, "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    const/4 v3, 0x1

    iput v3, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 3076
    int-to-byte v4, p3

    if-lt v4, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    .line 3077
    iput p4, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    .line 3079
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object v4

    .line 3080
    .local v4, "gsmMsg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    iget-object v5, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3082
    :try_start_0
    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v5, v2}, Landroid/hardware/radio/V1_0/IRadio;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 3083
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3087
    goto :goto_1

    .line 3085
    :catch_0
    move-exception v3

    .line 3086
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "sendImsGsmSms"

    invoke-direct {p0, v1, v5, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3089
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "gsmMsg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :cond_1
    :goto_1
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "smscPdu"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1073
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1074
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1075
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1079
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1081
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object v2

    .line 1084
    .local v2, "msg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 1085
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    goto :goto_0

    .line 1087
    :catch_0
    move-exception v3

    .line 1088
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "sendSMS"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1091
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "smscPdu"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1095
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1096
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1097
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1101
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1103
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object v2

    .line 1106
    .local v2, "msg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 1107
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    goto :goto_0

    .line 1109
    :catch_0
    move-exception v3

    .line 1110
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "sendSMSExpectMore"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1113
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2181
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2182
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 2183
    const/16 v1, 0x46

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2187
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contents = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2188
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->censoredTerminalResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2187
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2192
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2193
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2192
    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio;->sendTerminalResponseToSim(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2196
    goto :goto_1

    .line 2194
    :catch_0
    move-exception v2

    .line 2195
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendTerminalResponse"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2198
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "ussd"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1297
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1298
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1299
    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1303
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string v2, "*******"

    .line 1305
    .local v2, "logUssd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ussd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1310
    .end local v2    # "logUssd":Ljava/lang/String;
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio;->sendUssd(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1313
    goto :goto_0

    .line 1311
    :catch_0
    move-exception v2

    .line 1312
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendUSSD"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1315
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 4
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1887
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1888
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1889
    const/16 v1, 0x34

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1893
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " gsmIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1898
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->separateConnection(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1901
    goto :goto_0

    .line 1899
    :catch_0
    move-exception v2

    .line 1900
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "separateConnection"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1903
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setAllowedCarriers(Ljava/util/List;Landroid/os/Message;)V
    .locals 10
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 3625
    .local p1, "carriers":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    const-string v0, "Allowed carriers list cannot be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3626
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3627
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_7

    .line 3628
    const/16 v1, 0x88

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3632
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string v2, ""

    .line 3633
    .local v2, "logStr":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "logStr":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 3634
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3633
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3636
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " carriers = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3641
    .end local v4    # "logStr":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 3642
    const/4 v3, 0x1

    .local v3, "allAllowed":Z
    goto :goto_1

    .line 3644
    .end local v3    # "allAllowed":Z
    :cond_1
    nop

    .restart local v3    # "allAllowed":Z
    :goto_1
    move v2, v3

    .line 3646
    .end local v3    # "allAllowed":Z
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 3648
    .local v3, "carrierList":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/carrier/CarrierIdentifier;

    .line 3649
    .local v5, "ci":Landroid/service/carrier/CarrierIdentifier;
    new-instance v6, Landroid/hardware/radio/V1_0/Carrier;

    invoke-direct {v6}, Landroid/hardware/radio/V1_0/Carrier;-><init>()V

    .line 3650
    .local v6, "c":Landroid/hardware/radio/V1_0/Carrier;
    invoke-virtual {v5}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/hardware/radio/V1_0/Carrier;->mcc:Ljava/lang/String;

    .line 3651
    invoke-virtual {v5}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/hardware/radio/V1_0/Carrier;->mnc:Ljava/lang/String;

    .line 3652
    const/4 v7, 0x0

    .line 3653
    .local v7, "matchType":I
    const/4 v8, 0x0

    .line 3654
    .local v8, "matchData":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3655
    const/4 v7, 0x1

    .line 3656
    invoke-virtual {v5}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 3657
    :cond_2
    invoke-virtual {v5}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 3658
    const/4 v7, 0x2

    .line 3659
    invoke-virtual {v5}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 3660
    :cond_3
    invoke-virtual {v5}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 3661
    const/4 v7, 0x3

    .line 3662
    invoke-virtual {v5}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 3663
    :cond_4
    invoke-virtual {v5}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 3664
    const/4 v7, 0x4

    .line 3665
    invoke-virtual {v5}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v8

    .line 3667
    :cond_5
    :goto_3
    iput v7, v6, Landroid/hardware/radio/V1_0/Carrier;->matchType:I

    .line 3668
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/hardware/radio/V1_0/Carrier;->matchData:Ljava/lang/String;

    .line 3669
    iget-object v9, v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3670
    .end local v5    # "ci":Landroid/service/carrier/CarrierIdentifier;
    .end local v6    # "c":Landroid/hardware/radio/V1_0/Carrier;
    .end local v7    # "matchType":I
    .end local v8    # "matchData":Ljava/lang/String;
    goto :goto_2

    .line 3675
    :cond_6
    :try_start_0
    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v4, v2, v3}, Landroid/hardware/radio/V1_0/IRadio;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3678
    goto :goto_4

    .line 3676
    :catch_0
    move-exception v4

    .line 3677
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "setAllowedCarriers"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3680
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "allAllowed":Z
    .end local v3    # "carrierList":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_4
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 4
    .param p1, "bandMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2124
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2125
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2126
    const/16 v1, 0x41

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2130
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bandMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2135
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setBandMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2138
    goto :goto_0

    .line 2136
    :catch_0
    move-exception v2

    .line 2137
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setBandMode"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2140
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1356
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1357
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1358
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1361
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " clirMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1366
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setClir(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    goto :goto_0

    .line 1367
    :catch_0
    move-exception v2

    .line 1368
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCLIR"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1371
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 1405
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1406
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1407
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p6, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1411
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cfReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " timeSeconds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1416
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 1418
    .local v2, "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    iput p1, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    .line 1419
    iput p2, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 1420
    iput p3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 1421
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 1422
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 1423
    iput p5, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 1426
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    goto :goto_0

    .line 1427
    :catch_0
    move-exception v3

    .line 1428
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setCallForward"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1432
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1456
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1457
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1458
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1462
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1467
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setCallWaiting(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1470
    goto :goto_0

    .line 1468
    :catch_0
    move-exception v2

    .line 1469
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCallWaiting"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1472
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
    .locals 10
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;
    .param p2, "result"    # Landroid/os/Message;

    .line 3878
    const-string v0, "ImsiEncryptionInfo cannot be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3879
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3880
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_3

    .line 3881
    nop

    .line 3882
    invoke-static {v0}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v1

    .line 3883
    .local v1, "radioProxy11":Landroid/hardware/radio/V1_1/IRadio;
    if-nez v1, :cond_0

    .line 3884
    if-eqz p2, :cond_3

    .line 3885
    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 3886
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 3885
    invoke-static {p2, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3887
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 3890
    :cond_0
    const/16 v2, 0x8d

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 3892
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3895
    :try_start_0
    new-instance v3, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 3897
    .local v3, "halImsiInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {p1}, Landroid/telephony/ImsiEncryptionInfo;->getMnc()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    .line 3898
    invoke-virtual {p1}, Landroid/telephony/ImsiEncryptionInfo;->getMcc()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    .line 3899
    invoke-virtual {p1}, Landroid/telephony/ImsiEncryptionInfo;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    .line 3900
    invoke-virtual {p1}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3901
    nop

    .line 3902
    invoke-virtual {p1}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->expirationTime:J

    .line 3904
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ImsiEncryptionInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-byte v7, v4, v6

    .line 3905
    .local v7, "b":B
    iget-object v8, v3, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->carrierKey:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/Byte;

    invoke-direct {v9, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3904
    .end local v7    # "b":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3908
    :cond_2
    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v4, v3}, Landroid/hardware/radio/V1_1/IRadio;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3912
    .end local v3    # "halImsiInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    goto :goto_1

    .line 3910
    :catch_0
    move-exception v3

    .line 3911
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setCarrierInfoForImsiEncryption"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3915
    .end local v1    # "radioProxy11":Landroid/hardware/radio/V1_1/IRadio;
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "activate"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2733
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2734
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2735
    const/16 v1, 0x5e

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2739
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " activate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2744
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setCdmaBroadcastActivation(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2747
    goto :goto_0

    .line 2745
    :catch_0
    move-exception v2

    .line 2746
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCdmaBroadcastActivation"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2749
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 9
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "result"    # Landroid/os/Message;

    .line 2696
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2697
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_3

    .line 2698
    const/16 v1, 0x5d

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2701
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2703
    .local v2, "halConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    .line 2704
    .local v5, "config":Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getFromServiceCategory()I

    move-result v6

    .line 2705
    .local v6, "i":I
    :goto_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getToServiceCategory()I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 2707
    new-instance v7, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    invoke-direct {v7}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;-><init>()V

    .line 2708
    .local v7, "info":Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;
    iput v6, v7, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->serviceCategory:I

    .line 2709
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getLanguage()I

    move-result v8

    iput v8, v7, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->language:I

    .line 2710
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    move-result v8

    iput-boolean v8, v7, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->selected:Z

    .line 2711
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2706
    .end local v7    # "info":Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2703
    .end local v5    # "config":Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .end local v6    # "i":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2716
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2717
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " configs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2716
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2718
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    .line 2719
    .local v4, "config":Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;
    invoke-virtual {v4}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2720
    .end local v4    # "config":Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;
    goto :goto_2

    .line 2724
    :cond_2
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2727
    goto :goto_3

    .line 2725
    :catch_0
    move-exception v3

    .line 2726
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setCdmaBroadcastConfig"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2729
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "halConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 4
    .param p1, "cdmaRoamingType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2380
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2381
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2382
    const/16 v1, 0x4e

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2386
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cdmaRoamingType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2391
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setCdmaRoamingPreference(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2394
    goto :goto_0

    .line 2392
    :catch_0
    move-exception v2

    .line 2393
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCdmaRoamingPreference"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2396
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 4
    .param p1, "cdmaSubscription"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2343
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2344
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2345
    const/16 v1, 0x4d

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2349
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cdmaSubscription = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2354
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setCdmaSubscriptionSource(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2357
    goto :goto_0

    .line 2355
    :catch_0
    move-exception v2

    .line 2356
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCdmaSubscriptionSource"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2359
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method setCellInfoListRate()V
    .locals 3

    .line 3020
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/telephony/RIL;->setCellInfoListRate(ILandroid/os/Message;Landroid/os/WorkSource;)V

    .line 3021
    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "rateInMillis"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 3000
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    .line 3001
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3002
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3003
    const/16 v1, 0x6e

    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3007
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rateInMillis = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3012
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setCellInfoListRate(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3015
    goto :goto_0

    .line 3013
    :catch_0
    move-exception v2

    .line 3014
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCellInfoListRate"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3017
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 3358
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3359
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3360
    const/16 v1, 0x7b

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3364
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " allowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3369
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setDataAllowed(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3372
    goto :goto_0

    .line 3370
    :catch_0
    move-exception v2

    .line 3371
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setDataAllowed"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3374
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDataProfile([Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 7
    .param p1, "dps"    # [Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 3419
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3420
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_2

    .line 3421
    const/16 v1, 0x80

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3425
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with data profiles : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3427
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p1, v4

    .line 3428
    .local v5, "profile":Landroid/telephony/data/DataProfile;
    invoke-virtual {v5}, Landroid/telephony/data/DataProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3427
    .end local v5    # "profile":Landroid/telephony/data/DataProfile;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3432
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3433
    .local v2, "dpis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, p1, v3

    .line 3434
    .local v5, "dp":Landroid/telephony/data/DataProfile;
    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->convertToHalDataProfile(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3433
    .end local v5    # "dp":Landroid/telephony/data/DataProfile;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3438
    :cond_1
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2, p2}, Landroid/hardware/radio/V1_0/IRadio;->setDataProfile(ILjava/util/ArrayList;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3441
    goto :goto_2

    .line 3439
    :catch_0
    move-exception v3

    .line 3440
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setDataProfile"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3443
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "dpis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 1578
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/RIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1579
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .line 1584
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v7

    .line 1585
    .local v7, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v7, :cond_0

    .line 1586
    const/16 v0, 0x2b

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p6, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v8

    .line 1590
    .local v8, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lockstate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1596
    :try_start_0
    iget v1, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1597
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1599
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1601
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1596
    move-object v0, v7

    move v3, p2

    move v5, p4

    invoke-interface/range {v0 .. v6}, Landroid/hardware/radio/V1_0/IRadio;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    goto :goto_0

    .line 1602
    :catch_0
    move-exception v0

    .line 1603
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "setFacilityLockForApp"

    invoke-direct {p0, v8, v1, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1606
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "activate"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2659
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2660
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2661
    const/16 v1, 0x5b

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2665
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " activate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2670
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setGsmBroadcastActivation(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2673
    goto :goto_0

    .line 2671
    :catch_0
    move-exception v2

    .line 2672
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setGsmBroadcastActivation"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2675
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 7
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "result"    # Landroid/os/Message;

    .line 2621
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2622
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_2

    .line 2623
    const/16 v1, 0x5a

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2627
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " configs : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2629
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 2630
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2629
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2634
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2636
    .local v3, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    array-length v4, p1

    .line 2639
    .local v4, "numOfConfig":I
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 2640
    new-instance v5, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;-><init>()V

    .line 2641
    .local v5, "info":Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;
    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v6

    iput v6, v5, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromServiceId:I

    .line 2642
    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v6

    iput v6, v5, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toServiceId:I

    .line 2643
    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v6

    iput v6, v5, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromCodeScheme:I

    .line 2644
    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v6

    iput v6, v5, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toCodeScheme:I

    .line 2645
    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v6

    iput-boolean v6, v5, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->selected:Z

    .line 2646
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2639
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2650
    .end local v2    # "i":I
    .end local v5    # "info":Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;
    :cond_1
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2653
    goto :goto_2

    .line 2651
    :catch_0
    move-exception v2

    .line 2652
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "setGsmBroadcastConfig"

    invoke-direct {p0, v1, v5, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2655
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    .end local v4    # "numOfConfig":I
    :cond_2
    :goto_2
    return-void
.end method

.method public setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 5
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 3026
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3027
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3028
    const/16 v1, 0x6f

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3032
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3036
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertToHalDataProfile(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;

    move-result-object v3

    .line 3037
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->isModemCognitive()Z

    move-result v4

    .line 3036
    invoke-interface {v0, v2, v3, v4, p2}, Landroid/hardware/radio/V1_0/IRadio;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3040
    goto :goto_0

    .line 3038
    :catch_0
    move-exception v2

    .line 3039
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setInitialAttachApn"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3042
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V
    .locals 14
    .param p1, "hysteresisMs"    # I
    .param p2, "hysteresisDlKbps"    # I
    .param p3, "hysteresisUlKbps"    # I
    .param p4, "thresholdsDlKbps"    # [I
    .param p5, "thresholdsUlKbps"    # [I
    .param p6, "ran"    # I
    .param p7, "result"    # Landroid/os/Message;

    move-object v1, p0

    .line 3786
    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v3

    .line 3787
    .local v3, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v3, :cond_1

    .line 3788
    nop

    .line 3789
    invoke-static {v3}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v12

    .line 3790
    .local v12, "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    if-nez v12, :cond_0

    .line 3791
    const-string v0, "setLinkCapacityReportingCriteria ignored. RadioProxy 1.2 is null!"

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 3792
    return-void

    .line 3795
    :cond_0
    const/16 v0, 0x95

    iget-object v4, v1, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v2, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v13

    .line 3799
    .local v13, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3803
    :try_start_0
    iget v5, v13, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 3805
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/RIL;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v9

    .line 3806
    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/RIL;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/RIL;->convertRanToHalRan(I)I

    move-result v11

    .line 3803
    move-object v4, v12

    move v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-interface/range {v4 .. v11}, Landroid/hardware/radio/V1_2/IRadio;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3809
    goto :goto_0

    .line 3807
    :catch_0
    move-exception v0

    .line 3808
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "setLinkCapacityReportingCriteria"

    invoke-direct {v1, v13, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3811
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    .end local v13    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_1
    :goto_0
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2323
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2324
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2325
    const/16 v1, 0x4c

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2329
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 2330
    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2329
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2334
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setLocationUpdates(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2337
    goto :goto_0

    .line 2335
    :catch_0
    move-exception v2

    .line 2336
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setLocationUpdates"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2339
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setLogicalToPhysicalSlotMapping([ILandroid/os/Message;)V
    .locals 2
    .param p1, "physicalSlots"    # [I
    .param p2, "result"    # Landroid/os/Message;

    .line 561
    if-eqz p2, :cond_0

    .line 562
    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 563
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 562
    invoke-static {p2, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 564
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 566
    :cond_0
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enableMute"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1924
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1925
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1926
    const/16 v1, 0x35

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1930
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enableMute = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1935
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setMute(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    goto :goto_0

    .line 1936
    :catch_0
    move-exception v2

    .line 1937
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setMute"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1940
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1652
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1653
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1654
    const/16 v1, 0x2e

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1657
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1660
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->setNetworkSelectionModeAutomatic(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1663
    goto :goto_0

    .line 1661
    :catch_0
    move-exception v2

    .line 1662
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setNetworkSelectionModeAutomatic"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1665
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1669
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1670
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1671
    const/16 v1, 0x2f

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1675
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " operatorNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1680
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1681
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1680
    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio;->setNetworkSelectionModeManual(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1684
    goto :goto_0

    .line 1682
    :catch_0
    move-exception v2

    .line 1683
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setNetworkSelectionModeManual"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1686
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 494
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 499
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 502
    :cond_0
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .line 5105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5106
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    .line 5107
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2266
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2267
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2268
    const/16 v1, 0x49

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2272
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " networkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2275
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    .line 2276
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetPreferredNetworkType(II)V

    .line 2279
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setPreferredNetworkType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2282
    goto :goto_0

    .line 2280
    :catch_0
    move-exception v2

    .line 2281
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setPreferredNetworkType"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2284
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2437
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2438
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2439
    const/16 v1, 0x52

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2443
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2448
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setPreferredVoicePrivacy(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2451
    goto :goto_0

    .line 2449
    :catch_0
    move-exception v2

    .line 2450
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setPreferredVoicePrivacy"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2453
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 5
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "response"    # Landroid/os/Message;

    .line 3485
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3486
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3487
    const/16 v1, 0x83

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3491
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " RadioCapability = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3492
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3491
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3495
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 3498
    .local v2, "halRc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/RadioCapability;->session:I

    .line 3499
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/RadioCapability;->phase:I

    .line 3500
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/RadioCapability;->raf:I

    .line 3501
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 3502
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/RadioCapability;->status:I

    .line 3505
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3508
    goto :goto_0

    .line 3506
    :catch_0
    move-exception v3

    .line 3507
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setRadioCapability"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3510
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "halRc":Landroid/hardware/radio/V1_0/RadioCapability;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1026
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1027
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1028
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1032
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1037
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setRadioPower(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    goto :goto_0

    .line 1038
    :catch_0
    move-exception v2

    .line 1039
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setRadioPower"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1042
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSignalStrengthReportingCriteria(II[IILandroid/os/Message;)V
    .locals 9
    .param p1, "hysteresisMs"    # I
    .param p2, "hysteresisDb"    # I
    .param p3, "thresholdsDbm"    # [I
    .param p4, "ran"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 3756
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3757
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 3758
    nop

    .line 3759
    invoke-static {v0}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v7

    .line 3760
    .local v7, "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    if-nez v7, :cond_0

    .line 3761
    const-string v1, "setSignalStrengthReportingCriteria ignored. RadioProxy 1.2 is null!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 3762
    return-void

    .line 3765
    :cond_0
    const/16 v1, 0x94

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v8

    .line 3769
    .local v8, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3773
    :try_start_0
    iget v2, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 3774
    invoke-static {p3}, Lcom/android/internal/telephony/RIL;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v5

    .line 3775
    invoke-static {p4}, Lcom/android/internal/telephony/RIL;->convertRanToHalRan(I)I

    move-result v6

    .line 3773
    move-object v1, v7

    move v3, p1

    move v4, p2

    invoke-interface/range {v1 .. v6}, Landroid/hardware/radio/V1_2/IRadio;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3778
    goto :goto_0

    .line 3776
    :catch_0
    move-exception v1

    .line 3777
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setSignalStrengthReportingCriteria"

    invoke-direct {p0, v8, v2, v1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3780
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    .end local v8    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_1
    :goto_0
    return-void
.end method

.method public setSimCardPower(ILandroid/os/Message;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3833
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3834
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_2

    .line 3835
    const/16 v1, 0x8c

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3839
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3841
    nop

    .line 3842
    invoke-static {v0}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v2

    .line 3843
    .local v2, "radioProxy11":Landroid/hardware/radio/V1_1/IRadio;
    if-nez v2, :cond_1

    .line 3845
    packed-switch p1, :pswitch_data_0

    .line 3855
    if-eqz p2, :cond_0

    .line 3856
    const/4 v3, 0x0

    const/4 v4, 0x6

    .line 3857
    :try_start_0
    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v4

    goto :goto_0

    .line 3851
    :pswitch_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/hardware/radio/V1_0/IRadio;->setSimCardPower(IZ)V

    .line 3852
    goto :goto_2

    .line 3847
    :pswitch_1
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/hardware/radio/V1_0/IRadio;->setSimCardPower(IZ)V

    .line 3848
    goto :goto_2

    .line 3862
    :catch_0
    move-exception v3

    goto :goto_1

    .line 3856
    :goto_0
    invoke-static {p2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3858
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3862
    :goto_1
    nop

    .line 3863
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setSimCardPower"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3864
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "radioProxy11":Landroid/hardware/radio/V1_1/IRadio;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    goto :goto_3

    .line 3867
    .restart local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .restart local v2    # "radioProxy11":Landroid/hardware/radio/V1_1/IRadio;
    :cond_1
    :try_start_1
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v3, p1}, Landroid/hardware/radio/V1_1/IRadio;->setSimCardPower_1_1(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3870
    goto :goto_3

    .line 3868
    :catch_1
    move-exception v3

    .line 3869
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v4, "setSimCardPower"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3873
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "radioProxy11":Landroid/hardware/radio/V1_1/IRadio;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2868
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2869
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2870
    const/16 v1, 0x65

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2874
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2879
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio;->setSmscAddress(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2882
    goto :goto_0

    .line 2880
    :catch_0
    move-exception v2

    .line 2881
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setSmscAddress"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2884
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2057
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2058
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2059
    const/16 v1, 0x3e

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2063
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2068
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setSuppServiceNotifications(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2071
    goto :goto_0

    .line 2069
    :catch_0
    move-exception v2

    .line 2070
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setSuppServiceNotifications"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2073
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 4
    .param p1, "ttyMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2417
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2418
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2419
    const/16 v1, 0x50

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2423
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ttyMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2428
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setTTYMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2431
    goto :goto_0

    .line 2429
    :catch_0
    move-exception v2

    .line 2430
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setTTYMode"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2433
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 3331
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3332
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3333
    const/16 v1, 0x7a

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3337
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " appIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3342
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 3343
    .local v2, "info":Landroid/hardware/radio/V1_0/SelectUiccSub;
    iput p1, v2, Landroid/hardware/radio/V1_0/SelectUiccSub;->slot:I

    .line 3344
    iput p2, v2, Landroid/hardware/radio/V1_0/SelectUiccSub;->appIndex:I

    .line 3345
    iput p3, v2, Landroid/hardware/radio/V1_0/SelectUiccSub;->subType:I

    .line 3346
    iput p4, v2, Landroid/hardware/radio/V1_0/SelectUiccSub;->actStatus:I

    .line 3349
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3352
    goto :goto_0

    .line 3350
    :catch_0
    move-exception v3

    .line 3351
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setUiccSubscription"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3354
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "info":Landroid/hardware/radio/V1_0/SelectUiccSub;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setUnsolResponseFilter(ILandroid/os/Message;)V
    .locals 5
    .param p1, "filter"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3724
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3725
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 3726
    const/16 v1, 0x8b

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3730
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3733
    nop

    .line 3734
    invoke-static {v0}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v2

    .line 3736
    .local v2, "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    if-eqz v2, :cond_0

    .line 3738
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v3, p1}, Landroid/hardware/radio/V1_2/IRadio;->setIndicationFilter_1_2(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3739
    :catch_0
    move-exception v3

    .line 3740
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setIndicationFilter_1_2"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3741
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 3744
    .restart local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .restart local v2    # "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    :cond_0
    and-int/lit8 v3, p1, 0x7

    .line 3745
    .local v3, "filter10":I
    :try_start_1
    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v4, v3}, Landroid/hardware/radio/V1_0/IRadio;->setIndicationFilter(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3748
    .end local v3    # "filter10":I
    goto :goto_1

    .line 3746
    :catch_1
    move-exception v3

    .line 3747
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setIndicationFilter"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3751
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V
    .locals 20
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "result"    # Landroid/os/Message;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v13, p3

    move/from16 v14, p4

    .line 1183
    move-object/from16 v15, p7

    invoke-virtual {v1, v15}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v12

    .line 1185
    .local v12, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v12, :cond_4

    .line 1187
    const/16 v0, 0x1b

    iget-object v3, v1, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v15, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v11

    .line 1191
    .local v11, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/RIL;->convertToHalDataProfile(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;

    move-result-object v16

    .line 1193
    .local v16, "dpi":Landroid/hardware/radio/V1_0/DataProfileInfo;
    nop

    .line 1194
    invoke-static {v12}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v0

    move-object/from16 v17, v0

    .line 1196
    .local v17, "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    if-nez v17, :cond_1

    .line 1203
    const/4 v0, 0x0

    .line 1204
    .local v0, "dataRat":I
    :try_start_0
    iget-object v3, v1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object v10, v3

    .line 1205
    .local v10, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v10, :cond_0

    .line 1206
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 1207
    .local v3, "ss":Landroid/telephony/ServiceState;
    if-eqz v3, :cond_0

    .line 1208
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v4

    move v0, v4

    .line 1212
    .end local v3    # "ss":Landroid/telephony/ServiceState;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v11, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",dataRat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",isRoaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",allowRoaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1217
    iget v4, v11, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/DataProfile;->isModemCognitive()Z

    move-result v7

    .line 1217
    move-object v3, v12

    move v5, v0

    move-object/from16 v6, v16

    move v8, v14

    move v9, v13

    invoke-interface/range {v3 .. v9}, Landroid/hardware/radio/V1_0/IRadio;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    .end local v0    # "dataRat":I
    .end local v10    # "phone":Lcom/android/internal/telephony/Phone;
    nop

    .line 1245
    move-object v2, v11

    move-object/from16 v19, v12

    goto/16 :goto_2

    .line 1243
    :catch_0
    move-exception v0

    move-object v2, v11

    move-object/from16 v19, v12

    goto/16 :goto_3

    .line 1221
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    .local v0, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v10, v3

    .line 1223
    .local v10, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p6, :cond_3

    .line 1224
    :try_start_2
    invoke-virtual/range {p6 .. p6}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 1225
    .local v4, "address":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    .end local v4    # "address":Ljava/net/InetAddress;
    goto :goto_0

    .line 1227
    :cond_2
    invoke-virtual/range {p6 .. p6}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 1228
    .local v4, "dns":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1229
    .end local v4    # "dns":Ljava/net/InetAddress;
    goto :goto_1

    .line 1233
    :cond_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v11, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",accessNetworkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",isRoaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",allowRoaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",addresses="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",dnses="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1239
    iget v4, v11, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1240
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/DataProfile;->isModemCognitive()Z

    move-result v7
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1239
    move-object/from16 v3, v17

    move v5, v9

    move-object/from16 v6, v16

    move v8, v14

    move v9, v13

    move-object/from16 v18, v10

    move/from16 v10, p5

    .end local v10    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v2, v11

    move-object v11, v0

    .end local v11    # "rr":Lcom/android/internal/telephony/RILRequest;
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v19, v12

    move-object/from16 v12, v18

    .end local v12    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .local v19, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    :try_start_4
    invoke-interface/range {v3 .. v12}, Landroid/hardware/radio/V1_2/IRadio;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1245
    .end local v0    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    goto :goto_4

    .line 1243
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v19    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .restart local v11    # "rr":Lcom/android/internal/telephony/RILRequest;
    .restart local v12    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    :catch_2
    move-exception v0

    move-object v2, v11

    move-object/from16 v19, v12

    .line 1244
    .end local v11    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v12    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    .restart local v19    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    :goto_3
    const-string v3, "setupDataCall"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v16    # "dpi":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v17    # "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    goto :goto_4

    .line 1247
    .end local v19    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .restart local v12    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    :cond_4
    move-object/from16 v19, v12

    .end local v12    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .restart local v19    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    :goto_4
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 5
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1852
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1853
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1854
    const/16 v1, 0x31

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1858
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1861
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio;->startDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1864
    goto :goto_0

    .line 1862
    :catch_0
    move-exception v2

    .line 1863
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "startDtmf"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1866
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 5
    .param p1, "reportIntervalMs"    # I
    .param p2, "pullMode"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 3514
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3515
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    nop

    .line 3516
    invoke-static {v0}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v1

    .line 3517
    .local v1, "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    if-eqz v1, :cond_0

    .line 3520
    return-void

    .line 3523
    :cond_0
    if-eqz v0, :cond_1

    .line 3524
    const/16 v2, 0x84

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 3528
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " reportIntervalMs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pullMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3533
    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->startLceService(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3536
    goto :goto_0

    .line 3534
    :catch_0
    move-exception v3

    .line 3535
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "startLceService"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3538
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .locals 6
    .param p1, "contextId"    # I
    .param p2, "packetData"    # Landroid/net/KeepalivePacketData;
    .param p3, "intervalMillis"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 3920
    const-string v0, "KeepaliveRequest cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3921
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3922
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-nez v0, :cond_0

    .line 3923
    const-string v1, "Radio Proxy object is null!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 3924
    return-void

    .line 3927
    :cond_0
    nop

    .line 3928
    invoke-static {v0}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v1

    .line 3929
    .local v1, "radioProxy11":Landroid/hardware/radio/V1_1/IRadio;
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 3930
    if-eqz p4, :cond_1

    .line 3931
    const/4 v3, 0x6

    .line 3932
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 3931
    invoke-static {p4, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3933
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 3935
    :cond_1
    return-void

    .line 3938
    :cond_2
    const/16 v3, 0x92

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3, p4, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 3941
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3944
    :try_start_0
    new-instance v4, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v4}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 3947
    .local v4, "req":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    iput p1, v4, Landroid/hardware/radio/V1_1/KeepaliveRequest;->cid:I

    .line 3949
    iget-object v5, p2, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_3

    .line 3950
    const/4 v2, 0x0

    iput v2, v4, Landroid/hardware/radio/V1_1/KeepaliveRequest;->type:I

    goto :goto_0

    .line 3951
    :cond_3
    iget-object v5, p2, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_4

    .line 3952
    const/4 v2, 0x1

    iput v2, v4, Landroid/hardware/radio/V1_1/KeepaliveRequest;->type:I

    .line 3960
    :goto_0
    iget-object v2, p2, Landroid/net/KeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    .line 3961
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    iget-object v5, v4, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourceAddress:Ljava/util/ArrayList;

    .line 3960
    invoke-static {v2, v5}, Lcom/android/internal/telephony/RIL;->appendPrimitiveArrayToArrayList([BLjava/util/ArrayList;)V

    .line 3962
    iget v2, p2, Landroid/net/KeepalivePacketData;->srcPort:I

    iput v2, v4, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourcePort:I

    .line 3963
    iget-object v2, p2, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    .line 3964
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    iget-object v5, v4, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationAddress:Ljava/util/ArrayList;

    .line 3963
    invoke-static {v2, v5}, Lcom/android/internal/telephony/RIL;->appendPrimitiveArrayToArrayList([BLjava/util/ArrayList;)V

    .line 3965
    iget v2, p2, Landroid/net/KeepalivePacketData;->dstPort:I

    iput v2, v4, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationPort:I

    .line 3967
    iget v2, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v2, v4}, Landroid/hardware/radio/V1_1/IRadio;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 3970
    .end local v4    # "req":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    goto :goto_1

    .line 3954
    .restart local v4    # "req":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :cond_4
    const/16 v5, 0x2c

    .line 3955
    invoke-static {v5}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v5

    .line 3954
    invoke-static {p4, v2, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3956
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3957
    return-void

    .line 3968
    .end local v4    # "req":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :catch_0
    move-exception v2

    .line 3969
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "startNattKeepalive"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3971
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 11
    .param p1, "nsr"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "result"    # Landroid/os/Message;

    .line 1743
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1744
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_6

    .line 1745
    nop

    .line 1746
    invoke-static {v0}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v1

    .line 1747
    .local v1, "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    const/16 v2, 0x8e

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1748
    new-instance v4, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v4}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 1750
    .local v4, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getScanType()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    .line 1751
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    .line 1752
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    .line 1753
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 1754
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getIncrementalResults()Z

    move-result v5

    iput-boolean v5, v4, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    .line 1756
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v7, v5, v3

    .line 1758
    .local v7, "ras":Landroid/telephony/RadioAccessSpecifier;
    nop

    .line 1759
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->convertRadioAccessSpecifierToRadioHAL(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    move-result-object v8

    .line 1760
    .local v8, "rasInHalFormat":Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    if-nez v8, :cond_0

    .line 1761
    return-void

    .line 1764
    :cond_0
    iget-object v9, v4, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1756
    .end local v7    # "ras":Landroid/telephony/RadioAccessSpecifier;
    .end local v8    # "rasInHalFormat":Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1767
    :cond_1
    iget-object v3, v4, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1768
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 1772
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1776
    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, v4}, Landroid/hardware/radio/V1_2/IRadio;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1779
    goto :goto_1

    .line 1777
    :catch_0
    move-exception v3

    .line 1778
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "startNetworkScan"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1780
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :goto_1
    goto/16 :goto_3

    .line 1781
    :cond_2
    nop

    .line 1782
    invoke-static {v0}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v4

    .line 1783
    .local v4, "radioProxy11":Landroid/hardware/radio/V1_1/IRadio;
    if-nez v4, :cond_3

    .line 1784
    if-eqz p2, :cond_6

    .line 1785
    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 1786
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 1785
    invoke-static {p2, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1787
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 1790
    :cond_3
    new-instance v5, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v5}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 1792
    .local v5, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getScanType()I

    move-result v6

    iput v6, v5, Landroid/hardware/radio/V1_1/NetworkScanRequest;->type:I

    .line 1793
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v6

    iput v6, v5, Landroid/hardware/radio/V1_1/NetworkScanRequest;->interval:I

    .line 1794
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object v6

    array-length v7, v6

    :goto_2
    if-ge v3, v7, :cond_5

    aget-object v8, v6, v3

    .line 1795
    .local v8, "ras":Landroid/telephony/RadioAccessSpecifier;
    nop

    .line 1796
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->convertRadioAccessSpecifierToRadioHAL(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    move-result-object v9

    .line 1797
    .local v9, "rasInHalFormat":Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    if-nez v9, :cond_4

    .line 1798
    return-void

    .line 1801
    :cond_4
    iget-object v10, v5, Landroid/hardware/radio/V1_1/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    .end local v8    # "ras":Landroid/telephony/RadioAccessSpecifier;
    .end local v9    # "rasInHalFormat":Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1804
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 1808
    .restart local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1812
    :try_start_1
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v4, v3, v5}, Landroid/hardware/radio/V1_1/IRadio;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1815
    goto :goto_3

    .line 1813
    :catch_1
    move-exception v3

    .line 1814
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v6, "startNetworkScan"

    invoke-direct {p0, v2, v6, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1819
    .end local v1    # "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "radioProxy11":Landroid/hardware/radio/V1_1/IRadio;
    .end local v5    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :cond_6
    :goto_3
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1870
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1871
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1872
    const/16 v1, 0x32

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1875
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1878
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->stopDtmf(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1881
    goto :goto_0

    .line 1879
    :catch_0
    move-exception v2

    .line 1880
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "stopDtmf"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1883
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3542
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3543
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    nop

    .line 3544
    invoke-static {v0}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v1

    .line 3545
    .local v1, "radioProxy12":Landroid/hardware/radio/V1_2/IRadio;
    if-eqz v1, :cond_0

    .line 3548
    return-void

    .line 3551
    :cond_0
    if-eqz v0, :cond_1

    .line 3552
    const/16 v2, 0x85

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 3556
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3560
    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3}, Landroid/hardware/radio/V1_0/IRadio;->stopLceService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3563
    goto :goto_0

    .line 3561
    :catch_0
    move-exception v3

    .line 3562
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "stopLceService"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3565
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public stopNattKeepalive(ILandroid/os/Message;)V
    .locals 5
    .param p1, "sessionHandle"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3975
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3976
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-nez v0, :cond_0

    .line 3977
    const-string v1, "RILJ"

    const-string v2, "Radio Proxy object is null!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3978
    return-void

    .line 3981
    :cond_0
    nop

    .line 3982
    invoke-static {v0}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v1

    .line 3983
    .local v1, "radioProxy11":Landroid/hardware/radio/V1_1/IRadio;
    if-nez v1, :cond_2

    .line 3984
    if-eqz p2, :cond_1

    .line 3985
    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 3986
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 3985
    invoke-static {p2, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3987
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3989
    :cond_1
    return-void

    .line 3992
    :cond_2
    const/16 v2, 0x93

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 3995
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3998
    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Landroid/hardware/radio/V1_1/IRadio;->stopKeepalive(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4001
    goto :goto_0

    .line 3999
    :catch_0
    move-exception v3

    .line 4000
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "stopNattKeepalive"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4002
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stopNetworkScan(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1823
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1824
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 1825
    nop

    .line 1826
    invoke-static {v0}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v1

    .line 1827
    .local v1, "radioProxy11":Landroid/hardware/radio/V1_1/IRadio;
    if-nez v1, :cond_0

    .line 1828
    if-eqz p1, :cond_1

    .line 1829
    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 1830
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 1829
    invoke-static {p1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1831
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1834
    :cond_0
    const/16 v2, 0x8f

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 1838
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1842
    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Landroid/hardware/radio/V1_1/IRadio;->stopNetworkScan(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1845
    goto :goto_0

    .line 1843
    :catch_0
    move-exception v3

    .line 1844
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "stopNetworkScan"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1848
    .end local v1    # "radioProxy11":Landroid/hardware/radio/V1_1/IRadio;
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 571
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 625
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 626
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 630
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 631
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 632
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 636
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 641
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 642
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 643
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 641
    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    goto :goto_0

    .line 644
    :catch_0
    move-exception v2

    .line 645
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "supplyIccPin2ForApp"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 648
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 575
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 576
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 577
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 581
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 586
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 587
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 588
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 586
    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    goto :goto_0

    .line 589
    :catch_0
    move-exception v2

    .line 590
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "supplyIccPinForApp"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 593
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 598
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 652
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 653
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 657
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 658
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 659
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 663
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 668
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 669
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 670
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 671
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 668
    invoke-interface {v0, v2, v3, v4, v5}, Landroid/hardware/radio/V1_0/IRadio;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    goto :goto_0

    .line 672
    :catch_0
    move-exception v2

    .line 673
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "supplyIccPuk2ForApp"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 676
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 602
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 603
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 604
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 608
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 613
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 614
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 615
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 616
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 613
    invoke-interface {v0, v2, v3, v4, v5}, Landroid/hardware/radio/V1_0/IRadio;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    goto :goto_0

    .line 617
    :catch_0
    move-exception v2

    .line 618
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "supplyIccPukForApp"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 621
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 736
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 737
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 738
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 742
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " netpin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 747
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 748
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 747
    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio;->supplyNetworkDepersonalization(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    goto :goto_0

    .line 749
    :catch_0
    move-exception v2

    .line 750
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "supplyNetworkDepersonalization"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 753
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 890
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 891
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 892
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 895
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 898
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->switchWaitingOrHoldingAndActive(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    goto :goto_0

    .line 899
    :catch_0
    move-exception v2

    .line 900
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 903
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 2

    .line 5114
    const-string v0, "testingEmergencyCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5115
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5116
    return-void
.end method

.method unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .line 5088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5089
    return-void
.end method

.method unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .line 5092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5093
    return-void
.end method

.method unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 5096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5097
    return-void
.end method

.method unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 5100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 5101
    return-void
.end method

.method writeMetricsCallRing([C)V
    .locals 2
    .param p1, "response"    # [C

    .line 4581
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallRing(I[C)V

    .line 4582
    return-void
.end method

.method writeMetricsModemRestartEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 4589
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeModemRestartEvent(ILjava/lang/String;)V

    .line 4590
    return-void
.end method

.method writeMetricsNewSms(II)V
    .locals 2
    .param p1, "tech"    # I
    .param p2, "format"    # I

    .line 4577
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilNewSms(III)V

    .line 4578
    return-void
.end method

.method writeMetricsSrvcc(I)V
    .locals 2
    .param p1, "state"    # I

    .line 4585
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSrvcc(II)V

    .line 4586
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 2770
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    move-result p1

    .line 2771
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2772
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2773
    const/16 v1, 0x60

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2782
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 2783
    .local v2, "args":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    iput p1, v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->status:I

    .line 2784
    iget-object v3, v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->message:Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    .line 2787
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2790
    goto :goto_0

    .line 2788
    :catch_0
    move-exception v3

    .line 2789
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "writeSmsToRuim"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2792
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "args":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 2077
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    move-result p1

    .line 2078
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2079
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2080
    const/16 v1, 0x3f

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2089
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 2090
    .local v2, "args":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    iput p1, v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;->status:I

    .line 2091
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;->smsc:Ljava/lang/String;

    .line 2092
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;->pdu:Ljava/lang/String;

    .line 2095
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2098
    goto :goto_0

    .line 2096
    :catch_0
    move-exception v3

    .line 2097
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "writeSmsToSim"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2100
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "args":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
