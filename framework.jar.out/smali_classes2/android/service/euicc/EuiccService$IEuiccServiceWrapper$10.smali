.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->switchToSubscription(ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/ISwitchToSubscriptionCallback;

.field final synthetic val$forceDeactivateSim:Z

.field final synthetic val$iccid:Ljava/lang/String;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    .line 559
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$iccid:Ljava/lang/String;

    iput-boolean p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$forceDeactivateSim:Z

    iput-object p5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$callback:Landroid/service/euicc/ISwitchToSubscriptionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 562
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$slotId:I

    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$iccid:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$forceDeactivateSim:Z

    .line 563
    invoke-virtual {v0, v1, v2, v3}, Landroid/service/euicc/EuiccService;->onSwitchToSubscription(ILjava/lang/String;Z)I

    move-result v0

    .line 566
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$callback:Landroid/service/euicc/ISwitchToSubscriptionCallback;

    invoke-interface {v1, v0}, Landroid/service/euicc/ISwitchToSubscriptionCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    goto :goto_0

    .line 567
    :catch_0
    move-exception v1

    .line 570
    :goto_0
    return-void
.end method
