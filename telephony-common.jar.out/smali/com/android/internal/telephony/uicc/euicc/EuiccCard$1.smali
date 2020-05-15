.class Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loadEidAndNotifyRegistrants()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    .line 156
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->access$000(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)Landroid/os/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->access$000(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)Landroid/os/RegistrantList;

    move-result-object v0

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->access$102(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->access$202(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    const-string v0, "EuiccCard"

    const-string v1, "Failed loading eid"

    invoke-static {v0, v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 156
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->access$000(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)Landroid/os/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->access$000(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)Landroid/os/RegistrantList;

    move-result-object v0

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 162
    :cond_0
    return-void
.end method
