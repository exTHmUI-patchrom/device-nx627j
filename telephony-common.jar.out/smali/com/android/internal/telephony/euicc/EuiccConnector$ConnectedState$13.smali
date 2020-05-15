.class Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;
.super Landroid/service/euicc/IOtaStatusChangedCallback$Stub;
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

    .line 862
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    invoke-direct {p0}, Landroid/service/euicc/IOtaStatusChangedCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onOtaStatusChanged$0(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V
    .locals 1
    .param p0, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    .param p1, "status"    # I

    .line 868
    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;

    .line 869
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;->onOtaStatusChanged(I)V

    .line 870
    return-void
.end method

.method public static synthetic lambda$onOtaStatusChanged$1(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    .param p2, "status"    # I

    .line 873
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;

    .line 874
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;->onOtaStatusChanged(I)V

    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1500(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    .line 876
    return-void
.end method


# virtual methods
.method public onOtaStatusChanged(I)V
    .locals 4
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 866
    const/4 v0, 0x6

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v1, v1, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    new-instance v3, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$13$5nh8TOHvAdIIa_S3V0gwsRICKC4;

    invoke-direct {v3, v2, p1}, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$13$5nh8TOHvAdIIa_S3V0gwsRICKC4;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 872
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v1, v1, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    new-instance v3, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$13$REfW_lBcrAssQONSKwOlO3PX83k;

    invoke-direct {v3, p0, v2, p1}, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$13$REfW_lBcrAssQONSKwOlO3PX83k;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 878
    :goto_0
    return-void
.end method
