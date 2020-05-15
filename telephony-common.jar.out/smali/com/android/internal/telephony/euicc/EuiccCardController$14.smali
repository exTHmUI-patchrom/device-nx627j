.class Lcom/android/internal/telephony/euicc/EuiccCardController$14;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccInfo2(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

.field final synthetic val$callback:Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/euicc/EuiccCardController;

    .line 740
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$14;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$14;->val$callback:Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 753
    :try_start_0
    const-string v0, "getEuiccInfo2 callback onException: "

    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$14;->val$callback:Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$14;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$500(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;->onComplete(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    goto :goto_0

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "getEuiccInfo2 callback failure."

    invoke-static {v1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 758
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 740
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$14;->onResult([B)V

    return-void
.end method

.method public onResult([B)V
    .locals 2
    .param p1, "result"    # [B

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$14;->val$callback:Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;->onComplete(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    goto :goto_0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "getEuiccInfo2 callback failure."

    invoke-static {v1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 748
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
