.class Landroid/telephony/mbms/InternalDownloadStatusListener$1;
.super Ljava/lang/Object;
.source "InternalDownloadStatusListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadStatusListener;->onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalDownloadStatusListener;

.field final synthetic val$fileInfo:Landroid/telephony/mbms/FileInfo;

.field final synthetic val$request:Landroid/telephony/mbms/DownloadRequest;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalDownloadStatusListener;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalDownloadStatusListener;

    .line 45
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->this$0:Landroid/telephony/mbms/InternalDownloadStatusListener;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iput-object p3, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iput p4, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 50
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->this$0:Landroid/telephony/mbms/InternalDownloadStatusListener;

    invoke-static {v2}, Landroid/telephony/mbms/InternalDownloadStatusListener;->access$000(Landroid/telephony/mbms/InternalDownloadStatusListener;)Landroid/telephony/mbms/DownloadStatusListener;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iget-object v4, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iget v5, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$status:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/telephony/mbms/DownloadStatusListener;->onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    nop

    .line 54
    return-void

    .line 52
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
