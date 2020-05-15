.class Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$1;
.super Landroid/content/BroadcastReceiver;
.source "OsuNetworkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->init(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    .line 102
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$1;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 109
    .local v1, "state":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$1;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$000(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$1;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$002(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;Z)Z

    .line 111
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$1;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$100(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$1;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$100(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;->onWifiDisabled()V

    .line 113
    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$1;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$000(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$1;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v3, v2}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$002(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;Z)Z

    .line 115
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$1;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$100(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$1;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$100(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;->onWifiEnabled()V

    .line 118
    .end local v1    # "state":I
    :cond_1
    return-void
.end method
