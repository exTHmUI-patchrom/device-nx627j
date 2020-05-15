.class public Landroid/telephony/mbms/InternalDownloadStatusListener;
.super Landroid/telephony/mbms/IDownloadStatusListener$Stub;
.source "InternalDownloadStatusListener.java"


# instance fields
.field private final mAppListener:Landroid/telephony/mbms/DownloadStatusListener;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mIsStopped:Z


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/DownloadStatusListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "appCallback"    # Landroid/telephony/mbms/DownloadStatusListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 33
    invoke-direct {p0}, Landroid/telephony/mbms/IDownloadStatusListener$Stub;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mIsStopped:Z

    .line 34
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mAppListener:Landroid/telephony/mbms/DownloadStatusListener;

    .line 35
    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 36
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/mbms/InternalDownloadStatusListener;)Landroid/telephony/mbms/DownloadStatusListener;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/mbms/InternalDownloadStatusListener;

    .line 28
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mAppListener:Landroid/telephony/mbms/DownloadStatusListener;

    return-object v0
.end method


# virtual methods
.method public onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .locals 2
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mIsStopped:Z

    if-eqz v0, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalDownloadStatusListener$1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/telephony/mbms/InternalDownloadStatusListener$1;-><init>(Landroid/telephony/mbms/InternalDownloadStatusListener;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public stop()V
    .locals 1

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mIsStopped:Z

    .line 60
    return-void
.end method
