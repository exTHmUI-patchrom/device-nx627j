.class public Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;
.super Ljava/lang/Object;
.source "FakeHidlConnectionInterfaceImpl.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FakeHidlConnectionInterfaceImpl"


# instance fields
.field private final EVENT_SIMULATE_5G_DISABLED:I

.field private final EVENT_SIMULATE_5G_ENABLED:I

.field private final EVENT_SIMULATE_ENABLE_ENDC:I

.field private final EVENT_SIMULATE_QUERY_5G_STATUS:I

.field private final EVENT_SIMULATE_QUERY_BEARER_ALLOCATION:I

.field private final EVENT_SIMULATE_QUERY_CONFIG_TYPE:I

.field private final EVENT_SIMULATE_QUERY_ENDC_STATUS:I

.field private final EVENT_SIMULATE_QUERY_ICON_TYPE:I

.field private final EVENT_SIMULATE_QUERY_NRDC_PARAM:I

.field private final EVENT_SIMULATE_QUERY_SIGNAL_STRENGTH:I

.field private final EVENT_SIMULATE_QUERY_UPPER_LAYER_IND_INFO:I

.field private final UNSOL:Lorg/codeaurora/internal/Token;

.field private m5gEnabledState:Z

.field private mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

.field private mSerial:I

.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FakeHidlConnectionInterfaceImplBgThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mSerial:I

    .line 34
    new-instance v1, Lorg/codeaurora/internal/Token;

    invoke-direct {v1, v0}, Lorg/codeaurora/internal/Token;-><init>(I)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->UNSOL:Lorg/codeaurora/internal/Token;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->m5gEnabledState:Z

    .line 38
    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_5G_ENABLED:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_5G_DISABLED:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_5G_STATUS:I

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_NRDC_PARAM:I

    .line 42
    const/4 v0, 0x4

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_BEARER_ALLOCATION:I

    .line 43
    const/4 v0, 0x5

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_SIGNAL_STRENGTH:I

    .line 44
    const/4 v0, 0x6

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_UPPER_LAYER_IND_INFO:I

    .line 45
    const/4 v0, 0x7

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_CONFIG_TYPE:I

    .line 46
    const/16 v0, 0x8

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_ICON_TYPE:I

    .line 47
    const/16 v0, 0x9

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_ENABLE_ENDC:I

    .line 48
    const/16 v0, 0xa

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_ENDC_STATUS:I

    .line 52
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 54
    .local v0, "workerLooper":Landroid/os/Looper;
    new-instance v1, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;

    invoke-direct {v1, p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 55
    const-string v1, "FakeHidlConnectionInterfaceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constructor... using its own bg thread Looper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "workerLooper"    # Landroid/os/Looper;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FakeHidlConnectionInterfaceImplBgThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mSerial:I

    .line 34
    new-instance v1, Lorg/codeaurora/internal/Token;

    invoke-direct {v1, v0}, Lorg/codeaurora/internal/Token;-><init>(I)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->UNSOL:Lorg/codeaurora/internal/Token;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->m5gEnabledState:Z

    .line 38
    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_5G_ENABLED:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_5G_DISABLED:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_5G_STATUS:I

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_NRDC_PARAM:I

    .line 42
    const/4 v0, 0x4

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_BEARER_ALLOCATION:I

    .line 43
    const/4 v0, 0x5

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_SIGNAL_STRENGTH:I

    .line 44
    const/4 v0, 0x6

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_UPPER_LAYER_IND_INFO:I

    .line 45
    const/4 v0, 0x7

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_CONFIG_TYPE:I

    .line 46
    const/16 v0, 0x8

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_ICON_TYPE:I

    .line 47
    const/16 v0, 0x9

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_ENABLE_ENDC:I

    .line 48
    const/16 v0, 0xa

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_ENDC_STATUS:I

    .line 59
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor... Looper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    .line 27
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    .line 27
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->UNSOL:Lorg/codeaurora/internal/Token;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    .line 27
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->m5gEnabledState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;
    .param p1, "x1"    # Z

    .line 27
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->m5gEnabledState:Z

    return p1
.end method

.method private getNextToken()Lorg/codeaurora/internal/Token;
    .locals 2

    .line 64
    new-instance v0, Lorg/codeaurora/internal/Token;

    iget v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mSerial:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mSerial:I

    invoke-direct {v0, v1}, Lorg/codeaurora/internal/Token;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public disable5g(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "disable5g: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 277
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 278
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, p1, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 277
    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 279
    const-string v1, "FakeHidlConnectionInterfaceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable5g: token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-object v0
.end method

.method public enable5g(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "enable5g: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 265
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 267
    invoke-virtual {v2, v3, p1, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    .line 266
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 269
    :cond_0
    const-string v1, "FakeHidlConnectionInterfaceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable5g: token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-object v0
.end method

.method public enable5gOnly(I)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableEndc(IZ)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "enableEndc: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 364
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 365
    const/16 v3, 0x9

    const/4 v4, -0x1

    invoke-virtual {v2, v3, p1, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 364
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 366
    const-string v1, "FakeHidlConnectionInterfaceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableEndc: token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-object v0
.end method

.method public query5gConfigInfo(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "query5gConfigInfo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 304
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 305
    const/4 v3, 0x7

    const/4 v4, -0x1

    invoke-virtual {v2, v3, p1, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 304
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 306
    const-string v1, "FakeHidlConnectionInterfaceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query5gConfigInfo: token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-object v0
.end method

.method public query5gStatus(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "query5gStatus: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 293
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 294
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-virtual {v2, v3, p1, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 293
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    const-string v1, "FakeHidlConnectionInterfaceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query5gStatus: token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-object v0
.end method

.method public queryEndcStatus(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "queryEndcStatus: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 374
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 375
    const/16 v3, 0xa

    const/4 v4, -0x1

    invoke-virtual {v2, v3, p1, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 374
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 376
    const-string v1, "FakeHidlConnectionInterfaceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryEndcStatus: token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-object v0
.end method

.method public queryNrBearerAllocation(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "queryNrBearerAllocation: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 324
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 325
    const/4 v3, 0x4

    const/4 v4, -0x1

    invoke-virtual {v2, v3, p1, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 324
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 326
    const-string v1, "FakeHidlConnectionInterfaceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryNrBearerAllocation: token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-object v0
.end method

.method public queryNrDcParam(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "queryNrDcParam: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 314
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 315
    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, p1, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 314
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    const-string v1, "FakeHidlConnectionInterfaceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryNrDcParam: token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-object v0
.end method

.method public queryNrIconType(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "queryNrIconType: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 354
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 355
    const/16 v3, 0x8

    const/4 v4, -0x1

    invoke-virtual {v2, v3, p1, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 354
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    const-string v1, "FakeHidlConnectionInterfaceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryNrIconType: token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-object v0
.end method

.method public queryNrSignalStrength(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "queryNrSignalStrength: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 334
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 335
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-virtual {v2, v3, p1, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 334
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    const-string v1, "FakeHidlConnectionInterfaceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryNrSignalStrength: token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-object v0
.end method

.method public queryUpperLayerIndInfo(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "queryUpperLayerIndInfo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 344
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 345
    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v2, v3, p1, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 344
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 346
    const-string v1, "FakeHidlConnectionInterfaceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryUpperLayerIndInfo: token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-object v0
.end method

.method public registerCallback(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 382
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback: callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 384
    return-void
.end method

.method public unRegisterCallback(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 388
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterCallback: callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    if-ne v0, p1, :cond_0

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 392
    :cond_0
    return-void
.end method
