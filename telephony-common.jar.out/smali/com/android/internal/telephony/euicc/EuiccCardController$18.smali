.class Lcom/android/internal/telephony/euicc/EuiccCardController$18;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;->cancelSession(Ljava/lang/String;Ljava/lang/String;[BILcom/android/internal/telephony/euicc/ICancelSessionCallback;)V
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

.field final synthetic val$callback:Lcom/android/internal/telephony/euicc/ICancelSessionCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ICancelSessionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/euicc/EuiccCardController;

    .line 902
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$18;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$18;->val$callback:Lcom/android/internal/telephony/euicc/ICancelSessionCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 915
    :try_start_0
    const-string v0, "cancelSession callback onException: "

    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$18;->val$callback:Lcom/android/internal/telephony/euicc/ICancelSessionCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$18;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$500(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/euicc/ICancelSessionCallback;->onComplete(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    goto :goto_0

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "cancelSession callback failure."

    invoke-static {v1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 920
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 902
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$18;->onResult([B)V

    return-void
.end method

.method public onResult([B)V
    .locals 2
    .param p1, "result"    # [B

    .line 906
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$18;->val$callback:Lcom/android/internal/telephony/euicc/ICancelSessionCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/euicc/ICancelSessionCallback;->onComplete(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    goto :goto_0

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "cancelSession callback failure."

    invoke-static {v1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 910
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
