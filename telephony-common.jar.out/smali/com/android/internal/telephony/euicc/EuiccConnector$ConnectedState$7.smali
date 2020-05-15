.class Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;
.super Landroid/service/euicc/IDeleteSubscriptionCallback$Stub;
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

    .line 774
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    invoke-direct {p0}, Landroid/service/euicc/IDeleteSubscriptionCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onComplete$0(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    .param p2, "result"    # I

    .line 778
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;

    .line 779
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;->onDeleteComplete(I)V

    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1500(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    .line 781
    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3
    .param p1, "result"    # I

    .line 777
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    new-instance v2, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$7$-Ogvr7PIASwQa0kQAqAyfdEKAG4;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$7$-Ogvr7PIASwQa0kQAqAyfdEKAG4;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 782
    return-void
.end method
