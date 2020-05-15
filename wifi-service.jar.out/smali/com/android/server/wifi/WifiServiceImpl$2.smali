.class Lcom/android/server/wifi/WifiServiceImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 506
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 509
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    const-string v1, "newState"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SupplicantState;

    .line 512
    .local v1, "state":Landroid/net/wifi/SupplicantState;
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl;->isCurrentStaShareThisAp()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_0

    .line 513
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$700(Lcom/android/server/wifi/WifiServiceImpl;)V

    goto :goto_0

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$800(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_1

    .line 515
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$700(Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 517
    .end local v1    # "state":Landroid/net/wifi/SupplicantState;
    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 518
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 519
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$800(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 520
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$700(Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 523
    .end local v1    # "state":I
    :cond_3
    :goto_1
    return-void
.end method
