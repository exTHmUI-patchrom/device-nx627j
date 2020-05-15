.class public final Landroid/media/midi/MidiDeviceServer;
.super Ljava/lang/Object;
.source "MidiDeviceServer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDeviceServer$OutputPortClient;,
        Landroid/media/midi/MidiDeviceServer$InputPortClient;,
        Landroid/media/midi/MidiDeviceServer$PortClient;,
        Landroid/media/midi/MidiDeviceServer$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MidiDeviceServer"


# instance fields
.field private final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mInputPortClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/midi/MidiInputPort;",
            "Landroid/media/midi/MidiDeviceServer$PortClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputPortCount:I

.field private final mInputPortFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

.field private final mInputPortOpen:[Z

.field private final mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

.field private final mInputPortReceivers:[Landroid/media/midi/MidiReceiver;

.field private final mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/midi/MidiInputPort;",
            ">;"
        }
    .end annotation
.end field

.field private mIsClosed:Z

.field private final mMidiManager:Landroid/media/midi/IMidiManager;

.field private final mOutputPortCount:I

.field private mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

.field private final mOutputPortOpenCount:[I

.field private final mPortClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/media/midi/MidiDeviceServer$PortClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mServer:Landroid/media/midi/IMidiDeviceServer;


# direct methods
.method constructor <init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;ILandroid/media/midi/MidiDeviceServer$Callback;)V
    .locals 4
    .param p1, "midiManager"    # Landroid/media/midi/IMidiManager;
    .param p2, "inputPortReceivers"    # [Landroid/media/midi/MidiReceiver;
    .param p3, "numOutputPorts"    # I
    .param p4, "callback"    # Landroid/media/midi/MidiDeviceServer$Callback;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortClients:Ljava/util/HashMap;

    .line 184
    new-instance v0, Landroid/media/midi/MidiDeviceServer$1;

    invoke-direct {v0, p0}, Landroid/media/midi/MidiDeviceServer$1;-><init>(Landroid/media/midi/MidiDeviceServer;)V

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 356
    new-instance v0, Landroid/media/midi/MidiDeviceServer$2;

    invoke-direct {v0, p0}, Landroid/media/midi/MidiDeviceServer$2;-><init>(Landroid/media/midi/MidiDeviceServer;)V

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    .line 337
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer;->mMidiManager:Landroid/media/midi/IMidiManager;

    .line 338
    iput-object p2, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortReceivers:[Landroid/media/midi/MidiReceiver;

    .line 339
    array-length v0, p2

    iput v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    .line 340
    iput p3, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    .line 341
    iput-object p4, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    .line 343
    iget v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    new-array v0, v0, [Landroid/media/midi/MidiOutputPort;

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    .line 345
    new-array v0, p3, [Lcom/android/internal/midi/MidiDispatcher;

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 347
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    new-instance v2, Lcom/android/internal/midi/MidiDispatcher;

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/midi/MidiDispatcher;-><init>(Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;)V

    aput-object v2, v1, v0

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOpen:[Z

    .line 351
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortOpenCount:[I

    .line 353
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method constructor <init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiDeviceServer$Callback;)V
    .locals 1
    .param p1, "midiManager"    # Landroid/media/midi/IMidiManager;
    .param p2, "inputPortReceivers"    # [Landroid/media/midi/MidiReceiver;
    .param p3, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p4, "callback"    # Landroid/media/midi/MidiDeviceServer$Callback;

    .line 373
    invoke-virtual {p3}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/media/midi/MidiDeviceServer;-><init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;ILandroid/media/midi/MidiDeviceServer$Callback;)V

    .line 374
    iput-object p3, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 375
    return-void
.end method

.method static synthetic access$000(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .line 45
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/midi/MidiDeviceServer;)[Z
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .line 45
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOpen:[Z

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .line 45
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/midi/MidiDeviceServer;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .line 45
    iget v0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    return v0
.end method

.method static synthetic access$1200(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .line 45
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .line 45
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/midi/MidiDeviceServer;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .line 45
    invoke-direct {p0}, Landroid/media/midi/MidiDeviceServer;->updateDeviceStatus()V

    return-void
.end method

.method static synthetic access$300(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .line 45
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/midi/MidiDeviceServer;)[I
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .line 45
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortOpenCount:[I

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .line 45
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .line 45
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method static synthetic access$602(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceInfo;
    .locals 0
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;
    .param p1, "x1"    # Landroid/media/midi/MidiDeviceInfo;

    .line 45
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object p1
.end method

.method static synthetic access$700(Landroid/media/midi/MidiDeviceServer;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .line 45
    iget v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    return v0
.end method

.method static synthetic access$800()[Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-static {}, Landroid/media/midi/MidiDeviceServer;->createSeqPacketSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiReceiver;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .line 45
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortReceivers:[Landroid/media/midi/MidiReceiver;

    return-object v0
.end method

.method private static createSeqPacketSocketPair()[Ljava/io/FileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    :try_start_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 175
    .local v0, "fd0":Ljava/io/FileDescriptor;
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 176
    .local v1, "fd1":Ljava/io/FileDescriptor;
    sget v2, Landroid/system/OsConstants;->AF_UNIX:I

    sget v3, Landroid/system/OsConstants;->SOCK_SEQPACKET:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 177
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/FileDescriptor;

    aput-object v0, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 178
    .end local v0    # "fd0":Ljava/io/FileDescriptor;
    .end local v1    # "fd1":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private updateDeviceStatus()V
    .locals 6

    .line 387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 389
    .local v0, "identityToken":J
    new-instance v2, Landroid/media/midi/MidiDeviceStatus;

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOpen:[Z

    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortOpenCount:[I

    invoke-direct {v2, v3, v4, v5}, Landroid/media/midi/MidiDeviceStatus;-><init>(Landroid/media/midi/MidiDeviceInfo;[Z[I)V

    .line 391
    .local v2, "status":Landroid/media/midi/MidiDeviceStatus;
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    if-eqz v3, :cond_0

    .line 392
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    invoke-interface {v3, p0, v2}, Landroid/media/midi/MidiDeviceServer$Callback;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V

    .line 395
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mMidiManager:Landroid/media/midi/IMidiManager;

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v3, v4, v2}, Landroid/media/midi/IMidiManager;->setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    goto :goto_1

    .line 399
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 396
    :catch_0
    move-exception v3

    .line 397
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "MidiDeviceServer"

    const-string v5, "RemoteException in updateDeviceStatus"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 401
    :goto_1
    return-void

    .line 399
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 382
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v0

    .line 406
    :try_start_0
    iget-boolean v1, p0, Landroid/media/midi/MidiDeviceServer;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 407
    :cond_0
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 409
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    if-ge v1, v2, :cond_2

    .line 410
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    aget-object v2, v2, v1

    .line 411
    .local v2, "outputPort":Landroid/media/midi/MidiOutputPort;
    if-eqz v2, :cond_1

    .line 412
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 413
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 409
    .end local v2    # "outputPort":Landroid/media/midi/MidiOutputPort;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/midi/MidiInputPort;

    .line 417
    .local v2, "inputPort":Landroid/media/midi/MidiInputPort;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 418
    .end local v2    # "inputPort":Landroid/media/midi/MidiInputPort;
    goto :goto_1

    .line 419
    :cond_3
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :try_start_1
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mMidiManager:Landroid/media/midi/IMidiManager;

    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v1, v2}, Landroid/media/midi/IMidiManager;->unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    goto :goto_2

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "MidiDeviceServer"

    const-string v3, "RemoteException in unregisterDeviceServer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/midi/MidiDeviceServer;->mIsClosed:Z

    .line 426
    monitor-exit v0

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 432
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 436
    :cond_0
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 439
    nop

    .line 440
    return-void

    .line 438
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getBinderInterface()Landroid/media/midi/IMidiDeviceServer;
    .locals 1

    .line 378
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    return-object v0
.end method

.method public getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;
    .locals 4

    .line 448
    iget v0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    new-array v0, v0, [Landroid/media/midi/MidiReceiver;

    .line 449
    .local v0, "receivers":[Landroid/media/midi/MidiReceiver;
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    iget v2, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    return-object v0
.end method
