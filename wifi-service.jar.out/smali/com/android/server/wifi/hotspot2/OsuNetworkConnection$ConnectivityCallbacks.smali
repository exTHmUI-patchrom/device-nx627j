.class Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "OsuNetworkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;
    .param p2, "x1"    # Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$1;

    .line 215
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;-><init>(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)V

    return-void
.end method


# virtual methods
.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 218
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$300(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "OsuNetworkConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLinkPropertiesChanged for network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isProvisioned?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p2}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    invoke-virtual {p2}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$400(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v0, p1}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$402(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;Landroid/net/Network;)Landroid/net/Network;

    .line 224
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$502(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;Z)Z

    .line 225
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$100(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$100(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;->onConnected(Landroid/net/Network;)V

    .line 229
    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 243
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$300(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "OsuNetworkConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$400(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Landroid/net/Network;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 247
    const-string v0, "OsuNetworkConnection"

    const-string v1, "Irrelevant network lost notification"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$100(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$100(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;->onDisconnected()V

    .line 253
    :cond_2
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$300(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "OsuNetworkConnection"

    const-string v1, "onUnvailable "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$100(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->access$100(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;->onTimeOut()V

    .line 239
    :cond_1
    return-void
.end method
