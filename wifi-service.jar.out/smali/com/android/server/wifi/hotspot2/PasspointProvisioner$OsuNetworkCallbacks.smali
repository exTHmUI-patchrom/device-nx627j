.class Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;
.super Ljava/lang/Object;
.source "PasspointProvisioner.java"

# interfaces
.implements Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/PasspointProvisioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OsuNetworkCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    .line 357
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 361
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "PasspointProvisioner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    if-nez p1, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$500(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->handleDisconnect()V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$500(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->handleConnectedEvent(Landroid/net/Network;)V

    .line 369
    :goto_0
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const-string v0, "PasspointProvisioner"

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$500(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->handleDisconnect()V

    .line 377
    return-void
.end method

.method public onTimeOut()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const-string v0, "PasspointProvisioner"

    const-string v1, "Timed out waiting for connection to OSU AP"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$500(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->handleDisconnect()V

    .line 385
    return-void
.end method

.method public onWifiDisabled()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "PasspointProvisioner"

    const-string v1, "onWifiDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$500(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->handleWifiDisabled()V

    .line 400
    return-void
.end method

.method public onWifiEnabled()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const-string v0, "PasspointProvisioner"

    const-string v1, "onWifiEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    return-void
.end method
