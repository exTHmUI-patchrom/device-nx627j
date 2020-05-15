.class Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;
.super Ljava/lang/Object;
.source "PasspointProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/PasspointProvisioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisioningStateMachine"
.end annotation


# static fields
.field private static final INITIAL_STATE:I = 0x1

.field private static final OSU_AP_CONNECTED:I = 0x3

.field private static final OSU_PROVIDER_VERIFIED:I = 0x6

.field private static final OSU_SERVER_CONNECTED:I = 0x4

.field private static final OSU_SERVER_VALIDATED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ProvisioningStateMachine"

.field private static final WAITING_TO_CONNECT:I = 0x2


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

.field private mProvisioningCallback:Landroid/net/wifi/hotspot2/IProvisioningCallback;

.field private mServerUrl:Ljava/net/URL;

.field private mState:I

.field final synthetic this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    .line 116
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    return-void
.end method

.method private changeState(I)V
    .locals 3
    .param p1, "nextState"    # I

    .line 334
    iget v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    if-eq p1, v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    iput p1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    .line 340
    :cond_1
    return-void
.end method

.method private initiateServerConnection(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 285
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiating server connection in state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 289
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiating server connection aborted in invalid state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$100(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mServerUrl:Ljava/net/URL;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->connect(Ljava/net/URL;Landroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    invoke-direct {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->resetStateMachine(I)V

    .line 294
    return-void

    .line 296
    :cond_2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->changeState(I)V

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->invokeProvisioningCallback(II)V

    .line 299
    return-void
.end method

.method private invokeProvisioningCallback(II)V
    .locals 4
    .param p1, "callbackType"    # I
    .param p2, "status"    # I

    .line 316
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mProvisioningCallback:Landroid/net/wifi/hotspot2/IProvisioningCallback;

    if-nez v0, :cond_0

    .line 317
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provisioning callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not invoked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 322
    :cond_0
    if-nez p1, :cond_1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mProvisioningCallback:Landroid/net/wifi/hotspot2/IProvisioningCallback;

    invoke-interface {v0, p2}, Landroid/net/wifi/hotspot2/IProvisioningCallback;->onProvisioningStatus(I)V

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    goto :goto_1

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mProvisioningCallback:Landroid/net/wifi/hotspot2/IProvisioningCallback;

    invoke-interface {v0, p2}, Landroid/net/wifi/hotspot2/IProvisioningCallback;->onProvisioningFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    goto :goto_2

    .line 327
    :goto_1
    nop

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProvisioningStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception while posting callback type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private resetStateMachine(I)V
    .locals 3
    .param p1, "failureCode"    # I

    .line 343
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->invokeProvisioningCallback(II)V

    .line 344
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$300(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->setEventCallback(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;)V

    .line 345
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$300(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->disconnectIfNeeded()V

    .line 346
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$100(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->setEventCallback(Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;)V

    .line 347
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$100(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->cleanup()V

    .line 348
    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->changeState(I)V

    .line 349
    return-void
.end method

.method private validateProvider()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validating provider in state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$100(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->validateProvider(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 256
    invoke-direct {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->resetStateMachine(I)V

    .line 257
    return-void

    .line 259
    :cond_1
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->changeState(I)V

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->invokeProvisioningCallback(II)V

    .line 263
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleConnectedEvent(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 270
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected event received in state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 275
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection event unhandled in state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void

    .line 278
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->invokeProvisioningCallback(II)V

    .line 280
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->changeState(I)V

    .line 281
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->initiateServerConnection(Landroid/net/Network;)V

    .line 282
    return-void
.end method

.method public handleDisconnect()V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection failed in state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 309
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnect event unhandled in state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void

    .line 312
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->resetStateMachine(I)V

    .line 313
    return-void
.end method

.method public handleServerValidationFailure(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .line 214
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server Validation failure received in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$400(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 218
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected server validation callback for currentSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    .line 219
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$400(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 222
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 223
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server Validation Failure unhandled in mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 226
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->resetStateMachine(I)V

    .line 227
    return-void
.end method

.method public handleServerValidationSuccess(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .line 233
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server Validation Success received in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$400(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 237
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected server validation callback for currentSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    .line 238
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$400(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void

    .line 241
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 242
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server validation success event unhandled in state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void

    .line 245
    :cond_2
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->changeState(I)V

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->invokeProvisioningCallback(II)V

    .line 248
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->validateProvider()V

    .line 249
    return-void
.end method

.method public handleWifiDisabled()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi Disabled in state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 204
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi Disable unhandled in state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 207
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->resetStateMachine(I)V

    .line 208
    return-void
.end method

.method public start(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 136
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mHandler:Landroid/os/Handler;

    .line 137
    return-void
.end method

.method public startProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)V
    .locals 7
    .param p1, "provider"    # Landroid/net/wifi/hotspot2/OsuProvider;
    .param p2, "callback"    # Landroid/net/wifi/hotspot2/IProvisioningCallback;

    .line 153
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "ProvisioningStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startProvisioning received in state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const-string v0, "ProvisioningStateMachine"

    const-string v2, "State Machine needs to be reset before starting provisioning"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->resetStateMachine(I)V

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$100(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->canValidateServer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 163
    const-string v0, "ProvisioningStateMachine"

    const-string v1, "Provisioning is not possible"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mProvisioningCallback:Landroid/net/wifi/hotspot2/IProvisioningCallback;

    .line 165
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->resetStateMachine(I)V

    .line 166
    return-void

    .line 168
    :cond_3
    const/4 v0, 0x0

    .line 170
    .local v0, "serverUrl":Ljava/net/URL;
    const/4 v2, 0x2

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/OsuProvider;->getServerUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 176
    nop

    .line 177
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mServerUrl:Ljava/net/URL;

    .line 178
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mProvisioningCallback:Landroid/net/wifi/hotspot2/IProvisioningCallback;

    .line 179
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    .line 181
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$300(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$200(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->setEventCallback(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;)V

    .line 184
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$100(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    move-result-object v3

    new-instance v4, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;

    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$404(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;-><init>(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->setEventCallback(Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;)V

    .line 186
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$300(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/OsuProvider;->getOsuSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    .line 187
    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/OsuProvider;->getNetworkAccessIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->connect(Landroid/net/wifi/WifiSsid;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 188
    invoke-direct {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->resetStateMachine(I)V

    .line 189
    return-void

    .line 191
    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->invokeProvisioningCallback(II)V

    .line 193
    invoke-direct {p0, v2}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->changeState(I)V

    .line 194
    return-void

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v3, "ProvisioningStateMachine"

    const-string v4, "Invalid Server URL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->mProvisioningCallback:Landroid/net/wifi/hotspot2/IProvisioningCallback;

    .line 174
    invoke-direct {p0, v2}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->resetStateMachine(I)V

    .line 175
    return-void
.end method
