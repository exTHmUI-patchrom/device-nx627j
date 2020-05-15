.class public Landroid/telephony/mbms/InternalDownloadSessionCallback;
.super Landroid/telephony/mbms/IMbmsDownloadSessionCallback$Stub;
.source "InternalDownloadSessionCallback.java"


# instance fields
.field private final mAppCallback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mIsStopped:Z


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "appCallback"    # Landroid/telephony/mbms/MbmsDownloadSessionCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 32
    invoke-direct {p0}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback$Stub;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    .line 33
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    .line 34
    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 35
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/mbms/InternalDownloadSessionCallback;)Landroid/telephony/mbms/MbmsDownloadSessionCallback;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/mbms/InternalDownloadSessionCallback;

    .line 25
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    return-object v0
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 39
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    .line 40
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;-><init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public onFileServicesUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/FileServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/FileServiceInfo;>;"
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;

    invoke-direct {v1, p0, p1}, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;-><init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public onMiddlewareReady()V
    .locals 2

    .line 77
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    .line 78
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;-><init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public stop()V
    .locals 1

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    .line 96
    return-void
.end method
