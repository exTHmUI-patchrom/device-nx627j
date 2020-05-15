.class public Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
.super Ljava/lang/Object;
.source "MainServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;,
        Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;,
        Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;,
        Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;
    }
.end annotation


# static fields
.field private static final EVENT_ON_5G_CONFIG_INFO:I = 0x6

.field private static final EVENT_ON_5G_ENABLE_STATUS_CHANGE_IND:I = 0x1

.field private static final EVENT_ON_5G_SIGNAL_STRENGTH_CHANGE_IND:I = 0x2

.field private static final EVENT_ON_BEARER_ALLOCATION_CHANGE_IND:I = 0x0

.field private static final EVENT_ON_ENABLE_ENDC:I = 0x8

.field private static final EVENT_ON_ENDC_STATUS:I = 0x9

.field private static final EVENT_ON_NR_DUAL_CONNECTIVITY_CHANGE_IND:I = 0x3

.field private static final EVENT_ON_NR_ICON_TYPE:I = 0x7

.field private static final EVENT_ON_RESTRICT_DCNR_CHANGE:I = 0x4

.field private static final EVENT_ON_UPPER_LAYER_INDICATION_INFO:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MainServiceImpl"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;


# instance fields
.field private FAILED:Z

.field private SUCCESS:Z

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/internal/INetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientIndex:I

.field mHidlConnectionCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

.field private mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

.field private mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->SUCCESS:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->FAILED:Z

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mClientIndex:I

    .line 65
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MainServiceImplBgThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 199
    new-instance v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 306
    const-string v0, "MainServiceImpl"

    const-string v1, "MainServiceImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sput-object p1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    .line 308
    sget-object v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 309
    new-instance v0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-direct {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->setHidlClient(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;)V

    .line 310
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 311
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->setLooper(Landroid/os/Looper;)V

    .line 312
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hidlClient"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;
    .param p3, "workerLooper"    # Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->SUCCESS:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->FAILED:Z

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mClientIndex:I

    .line 65
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MainServiceImplBgThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 199
    new-instance v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 317
    const-string v0, "MainServiceImpl"

    const-string v1, "MainServiceImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sput-object p1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    .line 319
    sget-object v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 320
    invoke-virtual {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->setHidlClient(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;)V

    .line 321
    invoke-virtual {p0, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->setLooper(Landroid/os/Looper;)V

    .line 322
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/BearerAllocationStatus;

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Z

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/SignalStrength;

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/DcParam;

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/UpperLayerIndInfo;

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/NrConfigType;

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/NrIconType;

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    return-void
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onEnableEndc(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    return-void
.end method

.method static synthetic access$800(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Z

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onEndcStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    .line 45
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addCallback(Lorg/codeaurora/internal/INetworkCallback;)Z
    .locals 5
    .param p1, "callback"    # Lorg/codeaurora/internal/INetworkCallback;

    .line 427
    invoke-interface {p1}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 428
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 429
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 430
    .local v3, "it":Lorg/codeaurora/internal/INetworkCallback;
    invoke-interface {v3}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->FAILED:Z

    monitor-exit v1

    return v2

    .line 434
    .end local v3    # "it":Lorg/codeaurora/internal/INetworkCallback;
    :cond_0
    goto :goto_0

    .line 435
    :cond_1
    const-string v2, "MainServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add callback= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->SUCCESS:Z

    return v1

    .line 437
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private dumpAidlClients(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 695
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 696
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/internal/INetworkCallback;

    .line 697
    .local v2, "callback":Lorg/codeaurora/internal/INetworkCallback;
    invoke-interface {v2}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 698
    .local v3, "binder":Landroid/os/IBinder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "-> Binder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    .end local v2    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    .end local v3    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 700
    :cond_0
    monitor-exit v0

    .line 701
    return-void

    .line 700
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpInflightRequests(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 704
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 705
    .local v1, "key":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    .end local v1    # "key":Ljava/lang/Integer;
    goto :goto_0

    .line 707
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .locals 2

    .line 299
    sget-object v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    if-nez v0, :cond_0

    .line 300
    const-string v0, "MainServiceImpl"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 287
    const-class v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    monitor-enter v0

    .line 288
    :try_start_0
    sput-object p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    .line 289
    sget-object v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    if-nez v1, :cond_0

    .line 290
    new-instance v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    goto :goto_0

    .line 292
    :cond_0
    const-string v1, "MainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    sget-object v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    monitor-exit v0

    return-object v1

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "nrConfigType"    # Lorg/codeaurora/internal/NrConfigType;

    .line 587
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 588
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 590
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "on5gConfigInfo: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 591
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 590
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    .line 593
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 595
    :cond_0
    monitor-exit v1

    .line 598
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 595
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 596
    .end local v0    # "tokenKey":I
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on5gConfigInfo: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "enableStatus"    # Z

    .line 537
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 538
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 540
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "on5gStatus: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 541
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 540
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 543
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 545
    :cond_0
    monitor-exit v1

    .line 548
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 545
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 546
    .end local v0    # "tokenKey":I
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on5gStatus: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "bearerStatus"    # Lorg/codeaurora/internal/BearerAllocationStatus;

    .line 604
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 605
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 607
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAnyNrBearerAllocation: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 608
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 607
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    .line 610
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 612
    :cond_0
    monitor-exit v1

    .line 615
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 612
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 613
    .end local v0    # "tokenKey":I
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on5gStatus: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onEnableEndc(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;

    .line 654
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 655
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 657
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEnableEndc: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 658
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 657
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-interface {v3, p1, p2, p3}, Lorg/codeaurora/internal/INetworkCallback;->onEnableEndc(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    .line 660
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 662
    :cond_0
    monitor-exit v1

    .line 665
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 662
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 663
    .end local v0    # "tokenKey":I
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnableEndc: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onEndcStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "enableStatus"    # Z

    .line 670
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 671
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 673
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEndcStatus: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 674
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 673
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onEndcStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 676
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 678
    :cond_0
    monitor-exit v1

    .line 681
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 678
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 679
    .end local v0    # "tokenKey":I
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEndcStatus: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "dcParam"    # Lorg/codeaurora/internal/DcParam;

    .line 553
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 554
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 556
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNrDcParam: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 557
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 556
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    .line 559
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 561
    :cond_0
    monitor-exit v1

    .line 564
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 561
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 562
    .end local v0    # "tokenKey":I
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on5gStatus: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "nrIconType"    # Lorg/codeaurora/internal/NrIconType;

    .line 638
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 639
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 641
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNrIconType: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 642
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 641
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    .line 644
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 646
    :cond_0
    monitor-exit v1

    .line 649
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 646
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 647
    .end local v0    # "tokenKey":I
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNrIconType: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "signalStrength"    # Lorg/codeaurora/internal/SignalStrength;

    .line 621
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 622
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 624
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSignalStrength: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 625
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 624
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    .line 627
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 629
    :cond_0
    monitor-exit v1

    .line 632
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 629
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 630
    .end local v0    # "tokenKey":I
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on5gStatus: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "ulInfo"    # Lorg/codeaurora/internal/UpperLayerIndInfo;

    .line 570
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 571
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 573
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUpperLayerIndInfo: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 574
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 573
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    .line 576
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 578
    :cond_0
    monitor-exit v1

    .line 581
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 578
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 579
    .end local v0    # "tokenKey":I
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpperLayerIndInfo: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private removeCallback(Lorg/codeaurora/internal/INetworkCallback;)V
    .locals 6
    .param p1, "callback"    # Lorg/codeaurora/internal/INetworkCallback;

    .line 442
    invoke-interface {p1}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 443
    .local v0, "binder":Landroid/os/IBinder;
    const-string v1, "MainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCallback: callback= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 446
    .local v3, "it":Lorg/codeaurora/internal/INetworkCallback;
    invoke-interface {v3}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    const-string v2, "MainServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove callback= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 449
    monitor-exit v1

    return-void

    .line 451
    .end local v3    # "it":Lorg/codeaurora/internal/INetworkCallback;
    :cond_0
    goto :goto_0

    .line 452
    :cond_1
    monitor-exit v1

    .line 453
    return-void

    .line 452
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeClientFromInflightRequests(Lorg/codeaurora/internal/INetworkCallback;)V
    .locals 7
    .param p1, "callback"    # Lorg/codeaurora/internal/INetworkCallback;

    .line 456
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 457
    .local v1, "key":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    .line 458
    .local v2, "txn":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;
    iget-object v3, v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;->mClient:Lorg/codeaurora/internal/Client;

    invoke-virtual {v3}, Lorg/codeaurora/internal/Client;->getCallback()Lorg/codeaurora/internal/INetworkCallback;

    move-result-object v3

    invoke-interface {v3}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 459
    const-string v3, "MainServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeClientFromInflightRequests: Token = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 460
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 459
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .end local v1    # "key":I
    .end local v2    # "txn":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;
    :cond_0
    goto :goto_0

    .line 464
    :cond_1
    return-void
.end method


# virtual methods
.method public disable5g(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable5g: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->disable5g(I)Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 347
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "disable5g"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "printwriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 711
    move-object v0, p2

    .line 712
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "5G-Middleware:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHidlConnectionInterface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    const-string v1, "AIDL clients : "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->dumpAidlClients(Ljava/io/PrintWriter;)V

    .line 716
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 718
    const-string v1, "Inflight requests : "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->dumpInflightRequests(Ljava/io/PrintWriter;)V

    .line 720
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 721
    return-void
.end method

.method public enable5g(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 336
    .local v0, "uid":I
    sget-object v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "MainServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable5g: slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v2, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->enable5g(I)Lorg/codeaurora/internal/Token;

    move-result-object v2

    .line 340
    .local v2, "token":Lorg/codeaurora/internal/Token;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v6, "Enable5g"

    invoke-direct {v5, p0, v2, v6, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    return-object v2
.end method

.method public enable5gOnly(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable5gOnly: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableEndc(IZLorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "enabled"    # Z
    .param p3, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableEndc: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0, p1, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->enableEndc(IZ)Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 413
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "enableEndc"

    invoke-direct {v3, p0, v0, v4, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    return-object v0
.end method

.method public getAidlClientsCount()I
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 687
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInflightRequestsCount()I
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public query5gConfigInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query5gConfigInfo: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->query5gConfigInfo(I)Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 397
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "query5gConfigInfo"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    return-object v0
.end method

.method public query5gStatus(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query5gStatus: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->query5gStatus(I)Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 359
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "query5gStatus"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-object v0
.end method

.method public queryEndcStatus(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryEndcStatus: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryEndcStatus(I)Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 421
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryEndcStatus"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    return-object v0
.end method

.method public queryNrBearerAllocation(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNrBearerAllocation: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryNrBearerAllocation(I)Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 373
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryNrBearerAllocation"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    return-object v0
.end method

.method public queryNrDcParam(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNrDcParam: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryNrDcParam(I)Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 366
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryNrDcParam"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    return-object v0
.end method

.method public queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNrIconType: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryNrIconType(I)Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 405
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryNrIconType"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    return-object v0
.end method

.method public queryNrSignalStrength(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNrSignalStrength: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryNrSignalStrength(I)Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 381
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryNrSignalStrength"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    return-object v0
.end method

.method public queryUpperLayerIndInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryUpperLayerIndInfo: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryUpperLayerIndInfo(I)Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 389
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryUpperLayerIndInfo"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    return-object v0
.end method

.method public registerCallback(Ljava/lang/String;Lorg/codeaurora/internal/INetworkCallback;)Lorg/codeaurora/internal/Client;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/codeaurora/internal/INetworkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "client":Lorg/codeaurora/internal/Client;
    invoke-interface {p2}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 471
    .local v1, "binder":Landroid/os/IBinder;
    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;

    invoke-direct {v2, p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/INetworkCallback;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 473
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 474
    .local v2, "uid":I
    sget-object v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, "callerPackageName":Ljava/lang/String;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerCallback: uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " callerPackage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "callback = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "binder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 479
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->addCallback(Lorg/codeaurora/internal/INetworkCallback;)Z

    move-result v4

    iget-boolean v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->SUCCESS:Z

    if-ne v4, v5, :cond_0

    .line 480
    new-instance v4, Lorg/codeaurora/internal/Client;

    iget v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mClientIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mClientIndex:I

    invoke-direct {v4, v5, v2, p1, p2}, Lorg/codeaurora/internal/Client;-><init>(IILjava/lang/String;Lorg/codeaurora/internal/INetworkCallback;)V

    move-object v0, v4

    .line 481
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerCallback: client = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :cond_0
    const-string v4, "MainServiceImpl"

    const-string v5, "registerCallback: callback could not be added."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :goto_0
    return-object v0
.end method

.method retrieveCallbacks(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "tokenKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/internal/INetworkCallback;",
            ">;"
        }
    .end annotation

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/internal/INetworkCallback;>;"
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    .line 525
    .local v1, "txn":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;
    iget-object v2, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;->mClient:Lorg/codeaurora/internal/Client;

    .line 526
    .local v2, "client":Lorg/codeaurora/internal/Client;
    invoke-virtual {v2}, Lorg/codeaurora/internal/Client;->getCallback()Lorg/codeaurora/internal/INetworkCallback;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    .end local v1    # "txn":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;
    .end local v2    # "client":Lorg/codeaurora/internal/Client;
    goto :goto_0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    .line 532
    :cond_1
    :goto_0
    return-object v0
.end method

.method public setHidlClient(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;)V
    .locals 2
    .param p1, "hidlClient"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    .line 329
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    .line 330
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    invoke-interface {v0, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->registerCallback(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;)V

    .line 331
    return-void
.end method

.method public setLooper(Landroid/os/Looper;)V
    .locals 1
    .param p1, "workerLooper"    # Landroid/os/Looper;

    .line 325
    new-instance v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 326
    return-void
.end method

.method public unRegisterCallback(Lorg/codeaurora/internal/INetworkCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/codeaurora/internal/INetworkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->removeCallback(Lorg/codeaurora/internal/INetworkCallback;)V

    .line 491
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->removeClientFromInflightRequests(Lorg/codeaurora/internal/INetworkCallback;)V

    .line 492
    return-void
.end method
