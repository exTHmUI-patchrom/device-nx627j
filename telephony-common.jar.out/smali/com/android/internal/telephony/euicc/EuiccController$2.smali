.class Lcom/android/internal/telephony/euicc/EuiccController$2;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(JLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccController;

.field final synthetic val$callbackIntent:Landroid/app/PendingIntent;

.field final synthetic val$callingPackage:Ljava/lang/String;

.field final synthetic val$callingToken:J

.field final synthetic val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

.field final synthetic val$switchAfterDownload:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/telephony/euicc/DownloadableSubscription;ZLandroid/app/PendingIntent;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/euicc/EuiccController;

    .line 438
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iput-boolean p3, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingToken:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(I)V
    .locals 11
    .param p1, "result"    # I

    .line 441
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 443
    .local v0, "extrasIntent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 488
    const/4 v1, 0x2

    .line 489
    .local v1, "resultCode":I
    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 445
    .end local v1    # "resultCode":I
    :pswitch_0
    const/4 v1, 0x0

    .line 448
    .restart local v1    # "resultCode":I
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    .line 449
    invoke-static {v2}, Lcom/android/internal/telephony/euicc/EuiccController;->access$200(Lcom/android/internal/telephony/euicc/EuiccController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "euicc_provisioned"

    const/4 v4, 0x1

    .line 448
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 452
    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION"

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 455
    iget-boolean v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    if-nez v2, :cond_1

    .line 458
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->refreshSubscriptionsAndSendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 460
    return-void

    .line 464
    .end local v1    # "resultCode":I
    :pswitch_1
    const/4 v7, 0x1

    .line 465
    .local v7, "resultCode":I
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    const-string v3, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v8, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingToken:J

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v6, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    iget-object v10, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    .line 469
    invoke-static {v8, v9, v2, v6, v10}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    .line 465
    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/EuiccOperation;)V

    .line 472
    nop

    .line 495
    .end local v7    # "resultCode":I
    .restart local v1    # "resultCode":I
    :goto_0
    move v1, v7

    goto :goto_1

    .line 474
    .end local v1    # "resultCode":I
    :pswitch_2
    const/4 v7, 0x1

    .line 475
    .restart local v7    # "resultCode":I
    const/4 v1, 0x0

    .line 476
    .local v1, "retried":Z
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {v2}, Landroid/telephony/euicc/DownloadableSubscription;->getConfirmationCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 477
    const/4 v1, 0x1

    .line 479
    .end local v1    # "retried":Z
    .local v8, "retried":Z
    :cond_0
    move v8, v1

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    const-string v3, "android.service.euicc.action.RESOLVE_CONFIRMATION_CODE"

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingToken:J

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v9, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    iget-object v10, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    .line 483
    invoke-static {v5, v6, v2, v9, v10}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadConfirmationCode(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    .line 479
    move-object v2, v0

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/EuiccOperation;)V

    .line 486
    goto :goto_0

    .line 495
    .end local v7    # "resultCode":I
    .end local v8    # "retried":Z
    .local v1, "resultCode":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 496
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onEuiccServiceUnavailable()V
    .locals 4

    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 501
    return-void
.end method
