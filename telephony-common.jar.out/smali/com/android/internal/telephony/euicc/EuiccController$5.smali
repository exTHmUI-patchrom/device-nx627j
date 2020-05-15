.class Lcom/android/internal/telephony/euicc/EuiccController$5;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(JILjava/lang/String;ZLjava/lang/String;Landroid/app/PendingIntent;)V
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

.field final synthetic val$subscriptionId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/lang/String;JILandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/euicc/EuiccController;

    .line 774
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callingPackage:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callingToken:J

    iput p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$subscriptionId:I

    iput-object p6, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEuiccServiceUnavailable()V
    .locals 4

    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callbackIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 806
    return-void
.end method

.method public onSwitchComplete(I)V
    .locals 10
    .param p1, "result"    # I

    .line 777
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 779
    .local v0, "extrasIntent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 793
    const/4 v1, 0x2

    .line 794
    .local v1, "resultCode":I
    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 781
    .end local v1    # "resultCode":I
    :pswitch_0
    const/4 v1, 0x0

    .line 782
    .restart local v1    # "resultCode":I
    goto :goto_0

    .line 784
    .end local v1    # "resultCode":I
    :pswitch_1
    const/4 v7, 0x1

    .line 785
    .local v7, "resultCode":I
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    const-string v3, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callingPackage:Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v8, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callingToken:J

    iget v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$subscriptionId:I

    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callingPackage:Ljava/lang/String;

    .line 789
    invoke-static {v8, v9, v2, v6}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forSwitchDeactivateSim(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    .line 785
    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/EuiccOperation;)V

    .line 791
    nop

    .line 800
    move v1, v7

    .end local v7    # "resultCode":I
    .restart local v1    # "resultCode":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 801
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
