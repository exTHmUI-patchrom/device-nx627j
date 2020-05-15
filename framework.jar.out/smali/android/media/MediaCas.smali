.class public final Landroid/media/MediaCas;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCas$OpenSessionCallback;,
        Landroid/media/MediaCas$EventListener;,
        Landroid/media/MediaCas$Session;,
        Landroid/media/MediaCas$PluginDescriptor;,
        Landroid/media/MediaCas$EventHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCas"

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/hardware/cas/V1_0/IMediaCasService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBinder:Landroid/hardware/cas/V1_0/ICasListener$Stub;

.field private mEventHandler:Landroid/media/MediaCas$EventHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mICas:Landroid/hardware/cas/V1_0/ICas;

.field private mListener:Landroid/media/MediaCas$EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Landroid/media/MediaCas$1;

    invoke-direct {v0}, Landroid/media/MediaCas$1;-><init>()V

    sput-object v0, Landroid/media/MediaCas;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "CA_system_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Landroid/media/MediaCas$2;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$2;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/V1_0/ICasListener$Stub;

    .line 365
    :try_start_0
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/V1_0/ICasListener$Stub;

    invoke-interface {v0, p1, v1}, Landroid/hardware/cas/V1_0/IMediaCasService;->createPlugin(ILandroid/hardware/cas/V1_0/ICasListener;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    new-instance v0, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported CA_system_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MediaCas"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create plugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v0, :cond_1

    .line 375
    :goto_0
    return-void

    .line 371
    :cond_1
    new-instance v0, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported CA_system_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :goto_1
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-nez v1, :cond_2

    .line 371
    new-instance v0, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported CA_system_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    throw v0
.end method

.method static synthetic access$000(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaCas;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 95
    invoke-direct {p0, p1}, Landroid/media/MediaCas;->toBytes(Ljava/util/ArrayList;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaCas;

    .line 95
    iget-object v0, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaCas;

    .line 95
    iget-object v0, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaCas;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaCas;

    .line 95
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    return-void
.end method

.method static synthetic access$400(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaCas;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaCas;

    .line 95
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/MediaCas;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaCas;

    .line 95
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    return-void
.end method

.method private cleanupAndRethrowIllegalState()V
    .locals 1

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static enumeratePlugins()[Landroid/media/MediaCas$PluginDescriptor;
    .locals 7

    .line 335
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v0

    .line 337
    .local v0, "service":Landroid/hardware/cas/V1_0/IMediaCasService;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 339
    nop

    .line 340
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/cas/V1_0/IMediaCasService;->enumeratePlugins()Ljava/util/ArrayList;

    move-result-object v2

    .line 341
    .local v2, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 342
    return-object v1

    .line 344
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/media/MediaCas$PluginDescriptor;

    .line 345
    .local v3, "results":[Landroid/media/MediaCas$PluginDescriptor;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 346
    new-instance v5, Landroid/media/MediaCas$PluginDescriptor;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;

    invoke-direct {v5, v6}, Landroid/media/MediaCas$PluginDescriptor;-><init>(Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;)V

    aput-object v5, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 348
    .end local v4    # "i":I
    :cond_1
    return-object v3

    .line 349
    .end local v2    # "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;>;"
    .end local v3    # "results":[Landroid/media/MediaCas$PluginDescriptor;
    :catch_0
    move-exception v2

    .line 352
    :cond_2
    return-object v1
.end method

.method static getService()Landroid/hardware/cas/V1_0/IMediaCasService;
    .locals 1

    .line 114
    sget-object v0, Landroid/media/MediaCas;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/cas/V1_0/IMediaCasService;

    return-object v0
.end method

.method public static isSystemIdSupported(I)Z
    .locals 2
    .param p0, "CA_system_id"    # I

    .line 318
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v0

    .line 320
    .local v0, "service":Landroid/hardware/cas/V1_0/IMediaCasService;
    if-eqz v0, :cond_0

    .line 322
    :try_start_0
    invoke-interface {v0, p0}, Landroid/hardware/cas/V1_0/IMediaCasService;->isSystemIdSupported(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 323
    :catch_0
    move-exception v1

    .line 326
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private toByteArray([B)Ljava/util/ArrayList;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 201
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private toByteArray([BII)Ljava/util/ArrayList;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .local v0, "byteArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 192
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private toBytes(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 205
    .local p1, "byteArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 206
    .local v0, "data":[B
    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [B

    .line 208
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 209
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private validateInternalStates()V
    .locals 1

    .line 118
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v0, :cond_0

    .line 121
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 592
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v0, :cond_0

    .line 594
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v1}, Landroid/hardware/cas/V1_0/ICas;->release()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 597
    :catchall_0
    move-exception v1

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    throw v1

    .line 595
    :catch_0
    move-exception v1

    .line 597
    :goto_0
    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    .line 598
    nop

    .line 600
    :cond_0
    return-void
.end method

.method createFromSessionId(Ljava/util/ArrayList;)Landroid/media/MediaCas$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/media/MediaCas$Session;"
        }
    .end annotation

    .line 304
    .local p1, "sessionId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    new-instance v0, Landroid/media/MediaCas$Session;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaCas$Session;-><init>(Landroid/media/MediaCas;Ljava/util/ArrayList;)V

    return-object v0

    .line 305
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .line 604
    invoke-virtual {p0}, Landroid/media/MediaCas;->close()V

    .line 605
    return-void
.end method

.method getBinder()Landroid/os/IHwBinder;
    .locals 1

    .line 378
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 380
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v0}, Landroid/hardware/cas/V1_0/ICas;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    return-object v0
.end method

.method public openSession()Landroid/media/MediaCas$Session;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 471
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 474
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/MediaCas$OpenSessionCallback;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaCas$OpenSessionCallback;-><init>(Landroid/media/MediaCas;Landroid/media/MediaCas$1;)V

    .line 475
    .local v1, "cb":Landroid/media/MediaCas$OpenSessionCallback;
    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v2, v1}, Landroid/hardware/cas/V1_0/ICas;->openSession(Landroid/hardware/cas/V1_0/ICas$openSessionCallback;)V

    .line 476
    iget v2, v1, Landroid/media/MediaCas$OpenSessionCallback;->mStatus:I

    invoke-static {v2}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .line 477
    iget-object v2, v1, Landroid/media/MediaCas$OpenSessionCallback;->mSession:Landroid/media/MediaCas$Session;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 478
    .end local v1    # "cb":Landroid/media/MediaCas$OpenSessionCallback;
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 481
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public processEmm([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 519
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/MediaCas;->processEmm([BII)V

    .line 520
    return-void
.end method

.method public processEmm([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 497
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 500
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    .line 501
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->processEmm(Ljava/util/ArrayList;)I

    move-result v0

    .line 500
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 505
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public provision(Ljava/lang/String;)V
    .locals 1
    .param p1, "provisionString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 558
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 561
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    .line 562
    invoke-interface {v0, p1}, Landroid/hardware/cas/V1_0/ICas;->provision(Ljava/lang/String;)I

    move-result v0

    .line 561
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 566
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public refreshEntitlements(I[B)V
    .locals 2
    .param p1, "refreshType"    # I
    .param p2, "refreshData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 580
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 583
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    .line 584
    invoke-direct {p0, p2}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/cas/V1_0/ICas;->refreshEntitlements(ILjava/util/ArrayList;)I

    move-result v0

    .line 583
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    goto :goto_0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 588
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public sendEvent(II[B)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "arg"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 536
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 539
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    .line 540
    invoke-direct {p0, p3}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/hardware/cas/V1_0/ICas;->sendEvent(IILjava/util/ArrayList;)I

    move-result v0

    .line 539
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    goto :goto_0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 544
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setEventListener(Landroid/media/MediaCas$EventListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/MediaCas$EventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 410
    iput-object p1, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    .line 412
    iget-object v0, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 413
    iput-object v1, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    .line 414
    return-void

    .line 417
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    :cond_1
    move-object v0, v1

    .line 418
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_4

    .line 419
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_4

    .line 420
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_4

    .line 421
    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 422
    :cond_2
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MediaCasEventThread"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    .line 424
    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 426
    :cond_3
    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 428
    :cond_4
    new-instance v1, Landroid/media/MediaCas$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaCas$EventHandler;-><init>(Landroid/media/MediaCas;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    .line 429
    return-void
.end method

.method public setPrivateData([B)V
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 441
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 444
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    const/4 v1, 0x0

    array-length v2, p1

    .line 445
    invoke-direct {p0, p1, v1, v2}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->setPrivateData(Ljava/util/ArrayList;)I

    move-result v0

    .line 444
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 449
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
