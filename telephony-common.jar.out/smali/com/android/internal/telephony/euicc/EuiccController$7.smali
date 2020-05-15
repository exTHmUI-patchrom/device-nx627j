.class Lcom/android/internal/telephony/euicc/EuiccController$7;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$EraseCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->eraseSubscriptions(Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccController;

.field final synthetic val$callbackIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/euicc/EuiccController;

    .line 865
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$7;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$7;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEraseComplete(I)V
    .locals 4
    .param p1, "result"    # I

    .line 868
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 870
    .local v0, "extrasIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 877
    const/4 v1, 0x2

    .line 878
    .local v1, "resultCode":I
    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 884
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$7;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$7;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 885
    return-void

    .line 872
    .end local v1    # "resultCode":I
    :cond_0
    const/4 v1, 0x0

    .line 873
    .restart local v1    # "resultCode":I
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$7;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$7;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->refreshSubscriptionsAndSendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 875
    return-void
.end method

.method public onEuiccServiceUnavailable()V
    .locals 4

    .line 889
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$7;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$7;->val$callbackIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 890
    return-void
.end method
