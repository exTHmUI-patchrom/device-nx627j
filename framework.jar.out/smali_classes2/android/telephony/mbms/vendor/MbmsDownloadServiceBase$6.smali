.class Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;
.super Ljava/lang/Object;
.source "MbmsDownloadServiceBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

.field final synthetic val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

.field final synthetic val$listener:Landroid/telephony/mbms/IDownloadProgressListener;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;ILandroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    .line 392
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iput p2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->val$uid:I

    iput-object p3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    iput-object p4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->val$listener:Landroid/telephony/mbms/IDownloadProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 395
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->val$uid:I

    iget-object v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    invoke-virtual {v2}, Landroid/telephony/mbms/DownloadRequest;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 396
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    invoke-static {v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->access$200(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->val$listener:Landroid/telephony/mbms/IDownloadProgressListener;

    invoke-interface {v1}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    invoke-static {v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->access$100(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->val$listener:Landroid/telephony/mbms/IDownloadProgressListener;

    invoke-interface {v1}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    return-void
.end method
