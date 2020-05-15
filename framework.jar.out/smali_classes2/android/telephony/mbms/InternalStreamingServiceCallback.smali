.class public Landroid/telephony/mbms/InternalStreamingServiceCallback;
.super Landroid/telephony/mbms/IStreamingServiceCallback$Stub;
.source "InternalStreamingServiceCallback.java"


# instance fields
.field private final mAppCallback:Landroid/telephony/mbms/StreamingServiceCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mIsStopped:Z


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/StreamingServiceCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "appCallback"    # Landroid/telephony/mbms/StreamingServiceCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 31
    invoke-direct {p0}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    .line 32
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mAppCallback:Landroid/telephony/mbms/StreamingServiceCallback;

    .line 33
    iput-object p2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 34
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/mbms/InternalStreamingServiceCallback;)Landroid/telephony/mbms/StreamingServiceCallback;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .line 25
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mAppCallback:Landroid/telephony/mbms/StreamingServiceCallback;

    return-object v0
.end method


# virtual methods
.method public onBroadcastSignalStrengthUpdated(I)V
    .locals 2
    .param p1, "signalStrength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    .line 96
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;

    invoke-direct {v1, p0, p1}, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    .line 39
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback$1;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public onMediaDescriptionUpdated()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    .line 77
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback$3;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/InternalStreamingServiceCallback$3;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public onStreamMethodUpdated(I)V
    .locals 2
    .param p1, "methodType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    .line 115
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;

    invoke-direct {v1, p0, p1}, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public onStreamStateUpdated(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    .line 58
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method public stop()V
    .locals 1

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    .line 133
    return-void
.end method
