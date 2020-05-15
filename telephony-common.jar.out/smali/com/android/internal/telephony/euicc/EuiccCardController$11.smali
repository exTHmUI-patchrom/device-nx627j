.class Lcom/android/internal/telephony/euicc/EuiccCardController$11;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;->getRulesAuthTable(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "Landroid/telephony/euicc/EuiccRulesAuthTable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

.field final synthetic val$callback:Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/euicc/EuiccCardController;

    .line 623
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$11;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$11;->val$callback:Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 636
    :try_start_0
    const-string v0, "getRulesAuthTable callback onException: "

    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$11;->val$callback:Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$11;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$500(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;->onComplete(ILandroid/telephony/euicc/EuiccRulesAuthTable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "getRulesAuthTable callback failure."

    invoke-static {v1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onResult(Landroid/telephony/euicc/EuiccRulesAuthTable;)V
    .locals 2
    .param p1, "result"    # Landroid/telephony/euicc/EuiccRulesAuthTable;

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$11;->val$callback:Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;->onComplete(ILandroid/telephony/euicc/EuiccRulesAuthTable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "getRulesAuthTable callback failure."

    invoke-static {v1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 631
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 623
    check-cast p1, Landroid/telephony/euicc/EuiccRulesAuthTable;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$11;->onResult(Landroid/telephony/euicc/EuiccRulesAuthTable;)V

    return-void
.end method
