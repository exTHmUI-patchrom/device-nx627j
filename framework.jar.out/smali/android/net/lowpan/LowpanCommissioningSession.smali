.class public Landroid/net/lowpan/LowpanCommissioningSession;
.super Ljava/lang/Object;
.source "LowpanCommissioningSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;,
        Landroid/net/lowpan/LowpanCommissioningSession$Callback;
    }
.end annotation


# instance fields
.field private final mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

.field private final mBinder:Landroid/net/lowpan/ILowpanInterface;

.field private mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

.field private mHandler:Landroid/os/Handler;

.field private final mInternalCallback:Landroid/net/lowpan/ILowpanInterfaceListener;

.field private volatile mIsClosed:Z

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanBeaconInfo;Landroid/os/Looper;)V
    .locals 2
    .param p1, "binder"    # Landroid/net/lowpan/ILowpanInterface;
    .param p2, "beaconInfo"    # Landroid/net/lowpan/LowpanBeaconInfo;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;-><init>(Landroid/net/lowpan/LowpanCommissioningSession;Landroid/net/lowpan/LowpanCommissioningSession$1;)V

    iput-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mInternalCallback:Landroid/net/lowpan/ILowpanInterfaceListener;

    .line 43
    iput-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    .line 115
    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 116
    iput-object p2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    .line 117
    iput-object p3, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    .line 119
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    .line 126
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mInternalCallback:Landroid/net/lowpan/ILowpanInterfaceListener;

    invoke-interface {v0, v1}, Landroid/net/lowpan/ILowpanInterface;->addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .line 131
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static synthetic access$100(Landroid/net/lowpan/LowpanCommissioningSession;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/lowpan/LowpanCommissioningSession;

    .line 36
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    return v0
.end method

.method static synthetic access$200(Landroid/net/lowpan/LowpanCommissioningSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/lowpan/LowpanCommissioningSession;

    .line 36
    invoke-direct {p0}, Landroid/net/lowpan/LowpanCommissioningSession;->lockedCleanup()V

    return-void
.end method

.method static synthetic access$300(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/net/lowpan/LowpanCommissioningSession;

    .line 36
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/net/lowpan/LowpanCommissioningSession;

    .line 36
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    return-object v0
.end method

.method public static synthetic lambda$lockedCleanup$0(Landroid/net/lowpan/LowpanCommissioningSession;)V
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    invoke-virtual {v0}, Landroid/net/lowpan/LowpanCommissioningSession$Callback;->onClosed()V

    return-void
.end method

.method private lockedCleanup()V
    .locals 2

    .line 136
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    if-nez v0, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mInternalCallback:Landroid/net/lowpan/ILowpanInterfaceListener;

    invoke-interface {v0, v1}, Landroid/net/lowpan/ILowpanInterface;->removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 140
    .end local v0    # "x":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 147
    :goto_0
    nop

    .line 149
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$$Lambda$LowpanCommissioningSession$jqpl-iUq-e7YuWqkG33P8PNe7Ag;

    invoke-direct {v1, p0}, Landroid/net/lowpan/-$$Lambda$LowpanCommissioningSession$jqpl-iUq-e7YuWqkG33P8PNe7Ag;-><init>(Landroid/net/lowpan/LowpanCommissioningSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    .line 156
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 207
    :try_start_0
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 209
    :try_start_1
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->closeCommissioningSession()V

    .line 211
    invoke-direct {p0}, Landroid/net/lowpan/LowpanCommissioningSession;->lockedCleanup()V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "x":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    .end local v0    # "x":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 220
    :goto_0
    nop

    .line 222
    :cond_0
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/net/lowpan/LowpanCommissioningSession;
    throw v0
.end method

.method public getBeaconInfo()Landroid/net/lowpan/LowpanBeaconInfo;
    .locals 1

    .line 161
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    return-object v0
.end method

.method public sendToCommissioner([B)V
    .locals 2
    .param p1, "packet"    # [B

    .line 166
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    if-nez v0, :cond_0

    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->sendToCommissioner([B)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 170
    .end local v0    # "x":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 177
    :goto_0
    nop

    .line 179
    :cond_0
    return-void
.end method

.method public declared-synchronized setCallback(Landroid/net/lowpan/LowpanCommissioningSession$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "cb"    # Landroid/net/lowpan/LowpanCommissioningSession$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 183
    :try_start_0
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    if-nez v0, :cond_2

    .line 194
    if-eqz p2, :cond_0

    .line 195
    iput-object p2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 199
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    .line 201
    :goto_0
    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_2
    monitor-exit p0

    return-void

    .line 182
    .end local p1    # "cb":Landroid/net/lowpan/LowpanCommissioningSession$Callback;
    .end local p2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/net/lowpan/LowpanCommissioningSession;
    throw p1
.end method
