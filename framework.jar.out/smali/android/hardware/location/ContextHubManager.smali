.class public final Landroid/hardware/location/ContextHubManager;
.super Ljava/lang/Object;
.source "ContextHubManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubManager$ICallback;,
        Landroid/hardware/location/ContextHubManager$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextHubManager"


# instance fields
.field private mCallback:Landroid/hardware/location/ContextHubManager$Callback;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

.field private mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;

.field private final mService:Landroid/hardware/location/IContextHubService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    new-instance v0, Landroid/hardware/location/ContextHubManager$4;

    invoke-direct {v0, p0}, Landroid/hardware/location/ContextHubManager$4;-><init>(Landroid/hardware/location/ContextHubManager;)V

    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

    .line 754
    iput-object p2, p0, Landroid/hardware/location/ContextHubManager;->mMainLooper:Landroid/os/Looper;

    .line 755
    const-string v0, "contexthub"

    .line 756
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 755
    invoke-static {v0}, Landroid/hardware/location/IContextHubService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    .line 758
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

    invoke-interface {v0, v1}, Landroid/hardware/location/IContextHubService;->registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    nop

    .line 762
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static synthetic access$000(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/ContextHubManager;

    .line 49
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/ContextHubManager;

    .line 49
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/location/ContextHubManager;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/ContextHubManager;

    .line 49
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/ContextHubManager;

    .line 49
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    return-object v0
.end method

.method private createClientCallback(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/IContextHubClientCallback;
    .locals 1
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 587
    new-instance v0, Landroid/hardware/location/ContextHubManager$3;

    invoke-direct {v0, p0, p3, p2, p1}, Landroid/hardware/location/ContextHubManager$3;-><init>(Landroid/hardware/location/ContextHubManager;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;)V

    return-object v0
.end method

.method private createQueryCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;>;)",
            "Landroid/hardware/location/IContextHubTransactionCallback;"
        }
    .end annotation

    .line 354
    .local p1, "transaction":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/util/List<Landroid/hardware/location/NanoAppState;>;>;"
    new-instance v0, Landroid/hardware/location/ContextHubManager$2;

    invoke-direct {v0, p0, p1}, Landroid/hardware/location/ContextHubManager$2;-><init>(Landroid/hardware/location/ContextHubManager;Landroid/hardware/location/ContextHubTransaction;)V

    return-object v0
.end method

.method private createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;)",
            "Landroid/hardware/location/IContextHubTransactionCallback;"
        }
    .end annotation

    .line 328
    .local p1, "transaction":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/lang/Void;>;"
    new-instance v0, Landroid/hardware/location/ContextHubManager$1;

    invoke-direct {v0, p0, p1}, Landroid/hardware/location/ContextHubManager$1;-><init>(Landroid/hardware/location/ContextHubManager;Landroid/hardware/location/ContextHubTransaction;)V

    return-object v0
.end method


# virtual methods
.method public createClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;
    .locals 2
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "callback"    # Landroid/hardware/location/ContextHubClientCallback;

    .line 681
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/location/ContextHubManager;->createClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/ContextHubClient;

    move-result-object v0

    return-object v0
.end method

.method public createClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/ContextHubClient;
    .locals 4
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 646
    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string v0, "Executor cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    new-instance v0, Landroid/hardware/location/ContextHubClient;

    invoke-direct {v0, p1}, Landroid/hardware/location/ContextHubClient;-><init>(Landroid/hardware/location/ContextHubInfo;)V

    .line 651
    .local v0, "client":Landroid/hardware/location/ContextHubClient;
    invoke-direct {p0, v0, p2, p3}, Landroid/hardware/location/ContextHubManager;->createClientCallback(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/IContextHubClientCallback;

    move-result-object v1

    .line 656
    .local v1, "clientInterface":Landroid/hardware/location/IContextHubClientCallback;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/hardware/location/IContextHubService;->createClient(Landroid/hardware/location/IContextHubClientCallback;I)Landroid/hardware/location/IContextHubClient;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .local v2, "clientProxy":Landroid/hardware/location/IContextHubClient;
    nop

    .line 658
    nop

    .line 661
    invoke-virtual {v0, v2}, Landroid/hardware/location/ContextHubClient;->setClientProxy(Landroid/hardware/location/IContextHubClient;)V

    .line 662
    return-object v0

    .line 657
    .end local v2    # "clientProxy":Landroid/hardware/location/IContextHubClient;
    :catch_0
    move-exception v2

    .line 658
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public disableNanoApp(Landroid/hardware/location/ContextHubInfo;J)Landroid/hardware/location/ContextHubTransaction;
    .locals 4
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "nanoAppId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "J)",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 473
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 477
    .local v0, "transaction":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/lang/Void;>;"
    invoke-direct {p0, v0}, Landroid/hardware/location/ContextHubManager;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 480
    .local v1, "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1, p2, p3}, Landroid/hardware/location/IContextHubService;->disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    nop

    .line 485
    return-object v0

    .line 481
    :catch_0
    move-exception v2

    .line 482
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public enableNanoApp(Landroid/hardware/location/ContextHubInfo;J)Landroid/hardware/location/ContextHubTransaction;
    .locals 4
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "nanoAppId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "J)",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 445
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 449
    .local v0, "transaction":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/lang/Void;>;"
    invoke-direct {p0, v0}, Landroid/hardware/location/ContextHubManager;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 452
    .local v1, "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1, p2, p3}, Landroid/hardware/location/IContextHubService;->enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    nop

    .line 457
    return-object v0

    .line 453
    :catch_0
    move-exception v2

    .line 454
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .locals 2
    .param p1, "hubHandle"    # I
    .param p2, "filter"    # Landroid/hardware/location/NanoAppFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubService;->findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getContextHubHandles()[I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubService;->getContextHubHandles()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .locals 2
    .param p1, "hubHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getContextHubs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation

    .line 311
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubService;->getContextHubs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 2
    .param p1, "nanoAppHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .locals 2
    .param p1, "hubHandle"    # I
    .param p2, "app"    # Landroid/hardware/location/NanoApp;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubService;->loadNanoApp(ILandroid/hardware/location/NanoApp;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public loadNanoApp(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/ContextHubTransaction;
    .locals 4
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "appBinary"    # Landroid/hardware/location/NanoAppBinary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "Landroid/hardware/location/NanoAppBinary;",
            ")",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 388
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v0, "NanoAppBinary cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 393
    .local v0, "transaction":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/lang/Void;>;"
    invoke-direct {p0, v0}, Landroid/hardware/location/ContextHubManager;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 396
    .local v1, "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1, p2}, Landroid/hardware/location/IContextHubService;->loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    nop

    .line 401
    return-object v0

    .line 397
    :catch_0
    move-exception v2

    .line 398
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public queryNanoApps(Landroid/hardware/location/ContextHubInfo;)Landroid/hardware/location/ContextHubTransaction;
    .locals 4
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            ")",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;>;"
        }
    .end annotation

    .line 500
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 504
    .local v0, "transaction":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/util/List<Landroid/hardware/location/NanoAppState;>;>;"
    invoke-direct {p0, v0}, Landroid/hardware/location/ContextHubManager;->createQueryCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 507
    .local v1, "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/hardware/location/IContextHubService;->queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    nop

    .line 512
    return-object v0

    .line 508
    :catch_0
    move-exception v2

    .line 509
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public registerCallback(Landroid/hardware/location/ContextHubManager$Callback;)I
    .locals 1
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$Callback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 531
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/location/ContextHubManager;->registerCallback(Landroid/hardware/location/ContextHubManager$Callback;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public registerCallback(Landroid/hardware/location/ContextHubManager$Callback;Landroid/os/Handler;)I
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 565
    monitor-enter p0

    .line 566
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-eqz v0, :cond_0

    .line 567
    const-string v0, "ContextHubManager"

    const-string v1, "Max number of callbacks reached!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 570
    :cond_0
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    .line 571
    iput-object p2, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;

    .line 572
    monitor-exit p0

    .line 573
    const/4 v0, 0x0

    return v0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerCallback(Landroid/hardware/location/ContextHubManager$ICallback;)I
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$ICallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 540
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    if-eqz v0, :cond_0

    .line 541
    const-string v0, "ContextHubManager"

    const-string v1, "Max number of local callbacks reached!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v0, -0x1

    return v0

    .line 544
    :cond_0
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .locals 2
    .param p1, "hubHandle"    # I
    .param p2, "nanoAppHandle"    # I
    .param p3, "message"    # Landroid/hardware/location/ContextHubMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/location/IContextHubService;->sendMessage(IILandroid/hardware/location/ContextHubMessage;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unloadNanoApp(I)I
    .locals 2
    .param p1, "nanoAppHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->unloadNanoApp(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unloadNanoApp(Landroid/hardware/location/ContextHubInfo;J)Landroid/hardware/location/ContextHubTransaction;
    .locals 4
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "nanoAppId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "J)",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 417
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 421
    .local v0, "transaction":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/lang/Void;>;"
    invoke-direct {p0, v0}, Landroid/hardware/location/ContextHubManager;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 424
    .local v1, "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1, p2, p3}, Landroid/hardware/location/IContextHubService;->unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    nop

    .line 429
    return-object v0

    .line 425
    :catch_0
    move-exception v2

    .line 426
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public unregisterCallback(Landroid/hardware/location/ContextHubManager$Callback;)I
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$Callback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 699
    monitor-enter p0

    .line 700
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-eq p1, v0, :cond_0

    .line 701
    const-string v0, "ContextHubManager"

    const-string v1, "Cannot recognize callback!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 705
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    .line 706
    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;

    .line 707
    monitor-exit p0

    .line 708
    const/4 v0, 0x0

    return v0

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Landroid/hardware/location/ContextHubManager$ICallback;)I
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$ICallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 717
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    if-eq p1, v0, :cond_0

    .line 718
    const-string v0, "ContextHubManager"

    const-string v1, "Cannot recognize local callback!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 721
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 722
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 716
    .end local p1    # "callback":Landroid/hardware/location/ContextHubManager$ICallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/hardware/location/ContextHubManager;
    throw p1
.end method
