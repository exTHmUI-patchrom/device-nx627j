.class Landroid/telephony/mbms/InternalDownloadSessionCallback$3;
.super Ljava/lang/Object;
.source "InternalDownloadSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadSessionCallback;->onMiddlewareReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalDownloadSessionCallback;

    .line 81
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 86
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-static {v2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->access$000(Landroid/telephony/mbms/InternalDownloadSessionCallback;)Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;->onMiddlewareReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    nop

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
