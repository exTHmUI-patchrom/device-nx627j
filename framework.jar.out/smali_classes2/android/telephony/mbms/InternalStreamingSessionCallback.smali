.class public Landroid/telephony/mbms/InternalStreamingSessionCallback;
.super Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;
.source "InternalStreamingSessionCallback.java"


# instance fields
.field private final mAppCallback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mIsStopped:Z


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/MbmsStreamingSessionCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "appCallback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 32
    invoke-direct {p0}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    .line 33
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    .line 34
    iput-object p2, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 35
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/mbms/InternalStreamingSessionCallback;)Landroid/telephony/mbms/MbmsStreamingSessionCallback;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/mbms/InternalStreamingSessionCallback;

    .line 26
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    return-object v0
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    .line 40
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingSessionCallback$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/mbms/InternalStreamingSessionCallback$1;-><init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public onMiddlewareReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    .line 79
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;-><init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public onStreamingServicesUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/StreamingServiceInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/StreamingServiceInfo;>;"
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    .line 60
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingSessionCallback$2;

    invoke-direct {v1, p0, p1}, Landroid/telephony/mbms/InternalStreamingSessionCallback$2;-><init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public stop()V
    .locals 1

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    .line 97
    return-void
.end method
