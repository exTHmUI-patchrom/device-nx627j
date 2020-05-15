.class Lcom/android/server/wifi/WifiServiceImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V
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

    .line 643
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 646
    const-string v0, "wifi_state"

    const/16 v1, 0xb

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 648
    .local v0, "currState":I
    const-string v2, "previous_wifi_state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 650
    .local v1, "prevState":I
    const-string v2, "wifi_ap_error_code"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 652
    .local v8, "errorCode":I
    const-string v2, "wifi_ap_interface_name"

    .line 653
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 654
    .local v9, "ifaceName":Ljava/lang/String;
    const-string v2, "wifi_ap_mode"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 656
    .local v10, "mode":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    move v3, v0

    move v4, v1

    move v5, v8

    move-object v6, v9

    move v7, v10

    invoke-static/range {v2 .. v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$1200(Lcom/android/server/wifi/WifiServiceImpl;IIILjava/lang/String;I)V

    .line 657
    return-void
.end method
