.class Landroid/telephony/mbms/InternalDownloadSessionCallback$1;
.super Ljava/lang/Object;
.source "InternalDownloadSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadSessionCallback;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

.field final synthetic val$errorCode:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalDownloadSessionCallback;

    .line 43
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    iput p2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->val$errorCode:I

    iput-object p3, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 48
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-static {v2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->access$000(Landroid/telephony/mbms/InternalDownloadSessionCallback;)Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    move-result-object v2

    iget v3, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->val$errorCode:I

    iget-object v4, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    nop

    .line 52
    return-void

    .line 50
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
