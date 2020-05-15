.class Landroid/telephony/mbms/InternalDownloadProgressListener$1;
.super Ljava/lang/Object;
.source "InternalDownloadProgressListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadProgressListener;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalDownloadProgressListener;

.field final synthetic val$currentDecodedSize:I

.field final synthetic val$currentDownloadSize:I

.field final synthetic val$fileInfo:Landroid/telephony/mbms/FileInfo;

.field final synthetic val$fullDecodedSize:I

.field final synthetic val$fullDownloadSize:I

.field final synthetic val$request:Landroid/telephony/mbms/DownloadRequest;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalDownloadProgressListener;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalDownloadProgressListener;

    .line 46
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->this$0:Landroid/telephony/mbms/InternalDownloadProgressListener;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iput-object p3, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iput p4, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$currentDownloadSize:I

    iput p5, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fullDownloadSize:I

    iput p6, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$currentDecodedSize:I

    iput p7, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fullDecodedSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 51
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->this$0:Landroid/telephony/mbms/InternalDownloadProgressListener;

    invoke-static {v2}, Landroid/telephony/mbms/InternalDownloadProgressListener;->access$000(Landroid/telephony/mbms/InternalDownloadProgressListener;)Landroid/telephony/mbms/DownloadProgressListener;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iget-object v5, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iget v6, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$currentDownloadSize:I

    iget v7, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fullDownloadSize:I

    iget v8, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$currentDecodedSize:I

    iget v9, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fullDecodedSize:I

    invoke-virtual/range {v3 .. v9}, Landroid/telephony/mbms/DownloadProgressListener;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    nop

    .line 56
    return-void

    .line 54
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
