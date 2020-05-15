.class Lcom/android/internal/telephony/euicc/EuiccCardController$19;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;->listNotifications(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IListNotificationsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "[",
        "Landroid/telephony/euicc/EuiccNotification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

.field final synthetic val$callback:Lcom/android/internal/telephony/euicc/IListNotificationsCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IListNotificationsCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/euicc/EuiccCardController;

    .line 942
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$19;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$19;->val$callback:Lcom/android/internal/telephony/euicc/IListNotificationsCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 955
    :try_start_0
    const-string v0, "listNotifications callback onException: "

    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 956
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$19;->val$callback:Lcom/android/internal/telephony/euicc/IListNotificationsCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$19;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$500(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/euicc/IListNotificationsCallback;->onComplete(I[Landroid/telephony/euicc/EuiccNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    goto :goto_0

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "listNotifications callback failure."

    invoke-static {v1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 960
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 942
    check-cast p1, [Landroid/telephony/euicc/EuiccNotification;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$19;->onResult([Landroid/telephony/euicc/EuiccNotification;)V

    return-void
.end method

.method public onResult([Landroid/telephony/euicc/EuiccNotification;)V
    .locals 2
    .param p1, "result"    # [Landroid/telephony/euicc/EuiccNotification;

    .line 946
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$19;->val$callback:Lcom/android/internal/telephony/euicc/IListNotificationsCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/euicc/IListNotificationsCallback;->onComplete(I[Landroid/telephony/euicc/EuiccNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    goto :goto_0

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "listNotifications callback failure."

    invoke-static {v1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 950
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
