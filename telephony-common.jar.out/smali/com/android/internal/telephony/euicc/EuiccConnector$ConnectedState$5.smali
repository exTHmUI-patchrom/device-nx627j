.class Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;
.super Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback$Stub;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

.field final synthetic val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    .line 743
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    invoke-direct {p0}, Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onComplete$0(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    .param p2, "result"    # Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;

    .line 749
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;

    .line 750
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;->onGetDefaultListComplete(Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V

    .line 751
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1500(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    .line 752
    return-void
.end method


# virtual methods
.method public onComplete(Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
    .locals 3
    .param p1, "result"    # Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;

    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    new-instance v2, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$fNoNRKwweNINlHKYo1LLy2Hd_RA;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$fNoNRKwweNINlHKYo1LLy2Hd_RA;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 753
    return-void
.end method
