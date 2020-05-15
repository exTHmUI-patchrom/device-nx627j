.class Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetDefaultListCommandCallback"
.end annotation


# instance fields
.field final mCallbackIntent:Landroid/app/PendingIntent;

.field final mCallingPackage:Ljava/lang/String;

.field final mCallingToken:J

.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccController;JLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/euicc/EuiccController;
    .param p2, "callingToken"    # J
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 565
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingToken:J

    .line 567
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingPackage:Ljava/lang/String;

    .line 568
    iput-object p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    .line 569
    return-void
.end method


# virtual methods
.method public onEuiccServiceUnavailable()V
    .locals 4

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 608
    return-void
.end method

.method public onGetDefaultListComplete(Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
    .locals 10
    .param p1, "result"    # Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;

    .line 573
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 575
    .local v0, "extrasIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->getResult()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 595
    const/4 v1, 0x2

    .line 596
    .local v1, "resultCode":I
    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    .line 598
    invoke-virtual {p1}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->getResult()I

    move-result v3

    .line 596
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 577
    .end local v1    # "resultCode":I
    :pswitch_0
    const/4 v1, 0x0

    .line 578
    .restart local v1    # "resultCode":I
    invoke-virtual {p1}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->getDownloadableSubscriptions()Ljava/util/List;

    move-result-object v2

    .line 579
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/euicc/DownloadableSubscription;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 580
    const-string v3, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS"

    .line 582
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/telephony/euicc/DownloadableSubscription;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    .line 580
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 586
    .end local v1    # "resultCode":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/euicc/DownloadableSubscription;>;"
    :pswitch_1
    const/4 v7, 0x1

    .line 587
    .local v7, "resultCode":I
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    const-string v3, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingPackage:Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v8, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingToken:J

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingPackage:Ljava/lang/String;

    .line 591
    invoke-static {v8, v9, v2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forGetDefaultListDeactivateSim(JLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    .line 587
    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/EuiccOperation;)V

    .line 593
    nop

    .line 602
    move v1, v7

    .end local v7    # "resultCode":I
    .restart local v1    # "resultCode":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 603
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
