.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IDownloadSubscriptionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IDownloadSubscriptionCallback;

.field final synthetic val$forceDeactivateSim:Z

.field final synthetic val$slotId:I

.field final synthetic val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

.field final synthetic val$switchAfterDownload:Z


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IDownloadSubscriptionCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    .line 406
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iput-boolean p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$switchAfterDownload:Z

    iput-boolean p5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$forceDeactivateSim:Z

    iput-object p6, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$callback:Landroid/service/euicc/IDownloadSubscriptionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 409
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$slotId:I

    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$switchAfterDownload:Z

    iget-boolean v4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$forceDeactivateSim:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/service/euicc/EuiccService;->onDownloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZ)I

    move-result v0

    .line 412
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$callback:Landroid/service/euicc/IDownloadSubscriptionCallback;

    invoke-interface {v1, v0}, Landroid/service/euicc/IDownloadSubscriptionCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    goto :goto_0

    .line 413
    :catch_0
    move-exception v1

    .line 416
    :goto_0
    return-void
.end method
