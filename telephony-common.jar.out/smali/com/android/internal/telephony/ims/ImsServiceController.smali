.class public Lcom/android/internal/telephony/ims/ImsServiceController;
.super Ljava/lang/Object;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;,
        Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceController"

.field private static final REBIND_MAXIMUM_DELAY_MS:I = 0xea60

.field private static final REBIND_START_DELAY_MS:I = 0x7d0


# instance fields
.field private mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

.field private mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field protected final mContext:Landroid/content/Context;

.field private mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

.field private mFeatureStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

.field private mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

.field private mImsFeatureBinders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mImsFeatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation
.end field

.field private mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

.field private mImsServiceControllerBinder:Landroid/os/IBinder;

.field private mImsStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/internal/IImsServiceFeatureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBinding:Z

.field private mIsBound:Z

.field protected final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

.field private mRestartImsServiceRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "callbacks"    # Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

    .line 206
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsServiceControllerHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    .line 212
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    .line 216
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatureBinders:Ljava/util/HashSet;

    .line 221
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    .line 223
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    .line 295
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$2;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    .line 307
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$3;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 321
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    .line 322
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    .line 323
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 325
    new-instance v0, Lcom/android/internal/telephony/ExponentialBackoff;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 326
    invoke-interface {v1}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getStartDelay()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 327
    invoke-interface {v1}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getMaximumDelay()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 329
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    const/4 v6, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Looper;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 331
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 332
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Landroid/os/Handler;Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "callbacks"    # Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "rebindRetry"    # Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

    .line 206
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsServiceControllerHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    .line 212
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    .line 216
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatureBinders:Ljava/util/HashSet;

    .line 221
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    .line 223
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    .line 295
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$2;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    .line 307
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$3;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 339
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    .line 340
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    .line 341
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    .line 342
    new-instance v0, Lcom/android/internal/telephony/ExponentialBackoff;

    .line 343
    invoke-interface {p5}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getStartDelay()J

    move-result-wide v2

    .line 344
    invoke-interface {p5}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getMaximumDelay()J

    move-result-wide v4

    iget-object v8, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    const/4 v6, 0x2

    move-object v1, v0

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 349
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController;
    .param p1, "x1"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ims/ImsServiceController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 64
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController;
    .param p1, "x1"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/ims/ImsServiceController;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsServiceController;->sendImsFeatureStatusChanged(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->notifyAllFeaturesRemoved()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->cleanUpService()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->startDelayedRebindToService()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ExponentialBackoff;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/ims/ImsServiceController;Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController;
    .param p1, "x1"    # Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceControllerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceControllerBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceController;
    .param p1, "x1"    # Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V

    return-void
.end method

.method private addImsFeatureBinder(IILandroid/os/IInterface;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "b"    # Landroid/os/IInterface;

    .line 757
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatureBinders:Ljava/util/HashSet;

    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;IILandroid/os/IInterface;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 758
    return-void
.end method

.method private addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V
    .locals 5
    .param p1, "featurePair"    # Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 680
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    if-nez v0, :cond_0

    goto :goto_1

    .line 684
    :cond_0
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz v0, :cond_1

    .line 685
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;II)V

    .line 687
    .local v0, "c":Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 688
    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    .line 689
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->getCallback()Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v3

    .line 688
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->createImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/os/IInterface;

    move-result-object v1

    .line 690
    .local v1, "f":Landroid/os/IInterface;
    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsFeatureBinder(IILandroid/os/IInterface;)V

    .line 692
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v4, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-interface {v2, v3, v4, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeatureCreated(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 693
    .end local v0    # "c":Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;
    .end local v1    # "f":Landroid/os/IInterface;
    goto :goto_0

    .line 695
    :cond_1
    const-string v0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supports emergency calling on slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :goto_0
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->sendImsFeatureCreatedCallback(II)V

    .line 700
    return-void

    .line 681
    :cond_2
    :goto_1
    const-string v0, "ImsServiceController"

    const-string v1, "addImsServiceFeature called with null values."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-void
.end method

.method private cleanUpService()V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    .line 795
    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    .line 796
    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceControllerBinder:Landroid/os/IBinder;

    .line 797
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->setServiceController(Landroid/os/IBinder;)V

    .line 798
    monitor-exit v0

    .line 799
    return-void

    .line 798
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getImsFeatureContainer(II)Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I

    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatureBinders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$w3xbtqEhKr7IY81qFuw0e94p84Y;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$w3xbtqEhKr7IY81qFuw0e94p84Y;-><init>(II)V

    .line 772
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 773
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;

    .line 771
    return-object v0
.end method

.method private grantPermissionsToService()V
    .locals 4

    .line 620
    const-string v0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting Runtime permissions to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 623
    .local v0, "pkgToGrant":[Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    .line 625
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 624
    invoke-interface {v1, v0, v2}, Landroid/content/pm/IPackageManager;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :cond_0
    goto :goto_0

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ImsServiceController"

    const-string v3, "Unable to grant permissions, binder died."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$getImsFeatureContainer$2(IILcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;)Z
    .locals 1
    .param p0, "slotId"    # I
    .param p1, "featureType"    # I
    .param p2, "f"    # Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;

    .line 772
    iget v0, p2, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->slotId:I

    if-ne v0, p0, :cond_0

    iget v0, p2, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->featureType:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeImsFeatureBinder$1(IILcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;)Z
    .locals 1
    .param p0, "slotId"    # I
    .param p1, "featureType"    # I
    .param p2, "f"    # Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;

    .line 763
    iget v0, p2, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->slotId:I

    if-ne v0, p0, :cond_0

    iget v0, p2, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->featureType:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeImsServiceFeature$0(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)Z
    .locals 2
    .param p0, "featurePair"    # Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    .param p1, "c"    # Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    .line 711
    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->access$1100(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result v0

    iget v1, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->access$1200(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result v0

    iget v1, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyAllFeaturesRemoved()V
    .locals 6

    .line 777
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    if-nez v0, :cond_0

    .line 778
    const-string v0, "ImsServiceController"

    const-string v1, "notifyAllFeaturesRemoved called with invalid callbacks."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return-void

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 783
    .local v2, "feature":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    iget v3, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz v3, :cond_1

    .line 785
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    iget v4, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v5, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-interface {v3, v4, v5, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeatureRemoved(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 787
    :cond_1
    iget v3, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v4, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/ims/ImsServiceController;->sendImsFeatureRemovedCallback(II)V

    .line 788
    .end local v2    # "feature":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    goto :goto_0

    .line 789
    :cond_2
    monitor-exit v0

    .line 790
    return-void

    .line 789
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeImsFeatureBinder(II)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I

    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatureBinders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$rO36xbdAp6IQ5hFqLNNXDJPMers;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$rO36xbdAp6IQ5hFqLNNXDJPMers;-><init>(II)V

    .line 763
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 764
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;

    .line 765
    .local v0, "container":Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;
    if-eqz v0, :cond_0

    .line 766
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatureBinders:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 768
    :cond_0
    return-void
.end method

.method private removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V
    .locals 4
    .param p1, "featurePair"    # Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 705
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    if-nez v0, :cond_0

    goto :goto_1

    .line 709
    :cond_0
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz v0, :cond_3

    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$8NvoVXkZRS5LCradATGpNMBXAqg;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$8NvoVXkZRS5LCradATGpNMBXAqg;-><init>(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 712
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    .line 714
    .local v0, "callbackToRemove":Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;
    if-eqz v0, :cond_1

    .line 715
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 717
    :cond_1
    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    .line 718
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->getCallback()Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v1

    nop

    .line 717
    :cond_2
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 719
    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsFeatureBinder(II)V

    .line 721
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-interface {v1, v2, v3, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeatureRemoved(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 722
    .end local v0    # "callbackToRemove":Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;
    goto :goto_0

    .line 724
    :cond_3
    const-string v0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doesn\'t support emergency calling on slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_0
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->sendImsFeatureRemovedCallback(II)V

    .line 731
    return-void

    .line 706
    :cond_4
    :goto_1
    const-string v0, "ImsServiceController"

    const-string v1, "removeImsServiceFeature called with null values."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-void
.end method

.method private sendImsFeatureCreatedCallback(II)V
    .locals 6
    .param p1, "slot"    # I
    .param p2, "feature"    # I

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 634
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/IImsServiceFeatureCallback;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 637
    .local v1, "callbacks":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureCreated(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    goto :goto_1

    .line 638
    :catch_0
    move-exception v2

    .line 640
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ImsServiceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendImsFeatureCreatedCallback: Binder died, removing callback. Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 640
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 644
    .end local v1    # "callbacks":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 645
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/IImsServiceFeatureCallback;>;"
    :cond_0
    return-void
.end method

.method private sendImsFeatureRemovedCallback(II)V
    .locals 6
    .param p1, "slot"    # I
    .param p2, "feature"    # I

    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 649
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/IImsServiceFeatureCallback;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 652
    .local v1, "callbacks":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    goto :goto_1

    .line 653
    :catch_0
    move-exception v2

    .line 655
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ImsServiceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendImsFeatureRemovedCallback: Binder died, removing callback. Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 655
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 659
    .end local v1    # "callbacks":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 660
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/IImsServiceFeatureCallback;>;"
    :cond_0
    return-void
.end method

.method private sendImsFeatureStatusChanged(III)V
    .locals 6
    .param p1, "slot"    # I
    .param p2, "feature"    # I
    .param p3, "status"    # I

    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 664
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/IImsServiceFeatureCallback;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 667
    .local v1, "callbacks":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsStatusChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    goto :goto_1

    .line 668
    :catch_0
    move-exception v2

    .line 670
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ImsServiceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendImsFeatureStatusChanged: Binder died, removing callback. Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 670
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 674
    .end local v1    # "callbacks":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 675
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/IImsServiceFeatureCallback;>;"
    :cond_0
    return-void
.end method

.method private startDelayedRebindToService()V
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->start()V

    .line 615
    return-void
.end method


# virtual methods
.method public addImsServiceFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_2

    .line 484
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 485
    .local v2, "i":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    iget v3, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v4, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-interface {p1, v3, v4}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureCreated(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    .end local v2    # "i":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    goto :goto_0

    .line 489
    :cond_1
    goto :goto_1

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "ImsServiceController"

    const-string v3, "addImsServiceFeatureCallback: exception notifying callback"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0

    .line 491
    return-void

    .line 480
    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    .line 490
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public bind(Ljava/util/HashSet;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)Z"
        }
    .end annotation

    .line 361
    .local p1, "imsFeatureSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    if-nez v1, :cond_1

    .line 363
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    .line 364
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    .line 365
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->grantPermissionsToService()V

    .line 366
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getServiceInterface()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 368
    .local v1, "imsServiceIntent":Landroid/content/Intent;
    new-instance v3, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    .line 369
    const v3, 0x4000041

    .line 371
    .local v3, "serviceFlags":I
    const-string v4, "ImsServiceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding ImsService:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->startBindToService(Landroid/content/Intent;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;I)Z

    move-result v4

    .line 375
    .local v4, "bindSucceeded":Z
    if-nez v4, :cond_0

    .line 376
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v5}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :cond_0
    :try_start_2
    monitor-exit v0

    return v4

    .line 379
    .end local v4    # "bindSucceeded":Z
    :catch_0
    move-exception v4

    .line 380
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v5}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V

    .line 381
    const-string v5, "ImsServiceController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error binding ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") with exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", rebinding in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 381
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    monitor-exit v0

    return v2

    .line 387
    .end local v1    # "imsServiceIntent":Landroid/content/Intent;
    .end local v3    # "serviceFlags":I
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit v0

    return v2

    .line 389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public changeImsServiceFeatures(Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    .local p1, "newImsFeatures":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    const-string v1, "ImsServiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Features changed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") for ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 434
    .local v1, "oldImsFeatures":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    .line 435
    iget-boolean v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    if-eqz v2, :cond_1

    .line 437
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 439
    .local v2, "newFeatures":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 440
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 441
    .local v4, "i":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V

    .line 442
    .end local v4    # "i":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    goto :goto_0

    .line 444
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 446
    .local v3, "oldFeatures":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 447
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 448
    .local v5, "i":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V

    .line 449
    .end local v5    # "i":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    goto :goto_1

    .line 451
    .end local v1    # "oldImsFeatures":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    .end local v2    # "newFeatures":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    .end local v3    # "oldFeatures":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    :cond_1
    monitor-exit v0

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected createImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/os/IInterface;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 737
    packed-switch p2, :pswitch_data_0

    .line 745
    const/4 v0, 0x0

    return-object v0

    .line 742
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v0, p1, p3}, Landroid/telephony/ims/aidl/IImsServiceController;->createRcsFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    return-object v0

    .line 739
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v0, p1, p3}, Landroid/telephony/ims/aidl/IImsServiceController;->createMmTelFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public disableIms(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsServiceController;->disableIms(I)V

    .line 511
    :cond_0
    monitor-exit v0

    .line 514
    goto :goto_0

    .line 511
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsServiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t disable IMS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public enableIms(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsServiceController;->enableIms(I)V

    .line 499
    :cond_0
    monitor-exit v0

    .line 502
    goto :goto_0

    .line 499
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsServiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t enable IMS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 2
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsServiceController;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 562
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getImsServiceController()Landroid/telephony/ims/aidl/IImsServiceController;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    return-object v0
.end method

.method public getImsServiceControllerBinder()Landroid/os/IBinder;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceControllerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 5
    .param p1, "slotId"    # I

    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getImsFeatureContainer(II)Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;

    move-result-object v1

    .line 524
    .local v1, "f":Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;
    if-nez v1, :cond_0

    .line 525
    const-string v2, "ImsServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested null MMTelFeature on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 528
    :cond_0
    const-class v2, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->resolve(Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    monitor-exit v0

    return-object v2

    .line 529
    .end local v1    # "f":Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRcsFeature(I)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 5
    .param p1, "slotId"    # I

    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getImsFeatureContainer(II)Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;

    move-result-object v1

    .line 538
    .local v1, "f":Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;
    if-nez v1, :cond_0

    .line 539
    const-string v2, "ImsServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested null RcsFeature on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 542
    :cond_0
    const-class v2, Landroid/telephony/ims/aidl/IImsRcsFeature;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->resolve(Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/aidl/IImsRcsFeature;

    monitor-exit v0

    return-object v2

    .line 543
    .end local v1    # "f":Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRebindDelay()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 2
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 551
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsServiceController;->getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 551
    return-object v1

    .line 553
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getServiceInterface()Ljava/lang/String;
    .locals 1

    .line 579
    const-string v0, "android.telephony.ims.ImsService"

    return-object v0
.end method

.method public isBound()Z
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    monitor-exit v0

    return v1

    .line 596
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isServiceControllerAvailable()Z
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected notifyImsServiceReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    const-string v1, "ImsServiceController"

    const-string v2, "notifyImsServiceReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsServiceController;->setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V

    .line 573
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsServiceController;->notifyImsServiceReadyForFeatureCreation()V

    .line 575
    :cond_0
    monitor-exit v0

    .line 576
    return-void

    .line 575
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsServiceController;->removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 753
    return-void
.end method

.method public removeImsServiceFeatureCallbacks()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 610
    return-void
.end method

.method protected setServiceController(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "serviceController"    # Landroid/os/IBinder;

    .line 587
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    .line 588
    return-void
.end method

.method protected startBindToService(Landroid/content/Intent;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "connection"    # Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;
    .param p3, "flags"    # I

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public unbind()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    .line 408
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    if-nez v1, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->changeImsServiceFeatures(Ljava/util/HashSet;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeatureCallbacks()V

    .line 414
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceControllerBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 415
    const-string v1, "ImsServiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbinding ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 417
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->cleanUpService()V

    .line 418
    monitor-exit v0

    .line 419
    return-void

    .line 409
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 418
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
