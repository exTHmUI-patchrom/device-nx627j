.class public Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;
.super Ljava/lang/Object;
.source "PasspointProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/PasspointProvisioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OsuServerCallbacks"
.end annotation


# instance fields
.field private final mSessionId:I

.field final synthetic this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/hotspot2/PasspointProvisioner;
    .param p2, "sessionId"    # I

    .line 409
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput p2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;->mSessionId:I

    .line 411
    return-void
.end method

.method public static synthetic lambda$onServerValidationStatus$0(Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 432
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$500(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->handleServerValidationSuccess(I)V

    .line 433
    return-void
.end method

.method public static synthetic lambda$onServerValidationStatus$1(Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 436
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$500(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->handleServerValidationFailure(I)V

    .line 437
    return-void
.end method


# virtual methods
.method public getSessionId()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;->mSessionId:I

    return v0
.end method

.method public onServerValidationStatus(IZ)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "succeeded"    # Z

    .line 427
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const-string v0, "PasspointProvisioner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSU Server Validation status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    if-eqz p2, :cond_1

    .line 431
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$500(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$OsuServerCallbacks$gVhGhQxrUva4Q4E9wm9P4Zz5wGA;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$OsuServerCallbacks$gVhGhQxrUva4Q4E9wm9P4Zz5wGA;-><init>(Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;->this$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->access$500(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$OsuServerCallbacks$cVFwoTSKLIu6K3tbngy62AfqCUA;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$OsuServerCallbacks$cVFwoTSKLIu6K3tbngy62AfqCUA;-><init>(Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    :goto_0
    return-void
.end method
