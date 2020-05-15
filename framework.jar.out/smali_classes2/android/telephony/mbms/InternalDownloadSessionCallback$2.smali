.class Landroid/telephony/mbms/InternalDownloadSessionCallback$2;
.super Ljava/lang/Object;
.source "InternalDownloadSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadSessionCallback;->onFileServicesUpdated(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

.field final synthetic val$services:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalDownloadSessionCallback;

    .line 62
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;->val$services:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 65
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 67
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-static {v2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->access$000(Landroid/telephony/mbms/InternalDownloadSessionCallback;)Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;->val$services:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;->onFileServicesUpdated(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    nop

    .line 71
    return-void

    .line 69
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
