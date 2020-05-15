.class Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetMetadataCommandCallback"
.end annotation


# instance fields
.field protected final mCallbackIntent:Landroid/app/PendingIntent;

.field protected final mCallingPackage:Ljava/lang/String;

.field protected final mCallingToken:J

.field protected final mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/euicc/EuiccController;
    .param p2, "callingToken"    # J
    .param p4, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 253
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingToken:J

    .line 255
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 256
    iput-object p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    .line 257
    iput-object p6, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    .line 258
    return-void
.end method


# virtual methods
.method protected getOperationForDeactivateSim()Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 4

    .line 297
    iget-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingToken:J

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forGetMetadataDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v0

    return-object v0
.end method

.method public onEuiccServiceUnavailable()V
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 294
    return-void
.end method

.method public onGetMetadataComplete(Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V
    .locals 8
    .param p1, "result"    # Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v0, "extrasIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getResult()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 281
    const/4 v1, 0x2

    .line 282
    .local v1, "resultCode":I
    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    .line 284
    invoke-virtual {p1}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getResult()I

    move-result v3

    .line 282
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 267
    .end local v1    # "resultCode":I
    :pswitch_0
    const/4 v1, 0x0

    .line 268
    .restart local v1    # "resultCode":I
    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION"

    .line 270
    invoke-virtual {p1}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getDownloadableSubscription()Landroid/telephony/euicc/DownloadableSubscription;

    move-result-object v3

    .line 268
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 271
    goto :goto_0

    .line 273
    .end local v1    # "resultCode":I
    :pswitch_1
    const/4 v7, 0x1

    .line 274
    .local v7, "resultCode":I
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    const-string v3, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    const/4 v5, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->getOperationForDeactivateSim()Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    .line 274
    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/EuiccOperation;)V

    .line 279
    nop

    .line 288
    move v1, v7

    .end local v7    # "resultCode":I
    .restart local v1    # "resultCode":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 289
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
