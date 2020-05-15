.class Lcom/android/server/wifi/WifiController$EcmState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EcmState"
.end annotation


# instance fields
.field private mEcmEntryCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .line 651
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private decrementCountAndReturnToAppropriateState()V
    .locals 3

    .line 714
    const/4 v0, 0x0

    .line 716
    .local v0, "exitEcm":Z
    iget v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    if-nez v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v2, "mEcmEntryCount is 0; exiting Ecm"

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->access$4300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 718
    const/4 v0, 0x1

    goto :goto_0

    .line 719
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    if-nez v1, :cond_1

    .line 720
    const/4 v0, 0x1

    .line 723
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 724
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 725
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$1700(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 726
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1800(Lcom/android/server/wifi/WifiController;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 727
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$1900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 729
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 732
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 659
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->stopSoftAPMode()V

    .line 660
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    .line 661
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$4100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$3100(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/FrameworkFacade;->getConfigWiFiDisableInECBM(Landroid/content/Context;)Z

    move-result v0

    .line 662
    .local v0, "configWiFiDisableInECBM":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiController msg getConfigWiFiDisableInECBM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->access$4200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 664
    if-eqz v0, :cond_0

    .line 665
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->shutdownWifi()V

    .line 666
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->clearANQPCache()V

    .line 668
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    .line 669
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 678
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const v2, 0x2600e

    if-ne v0, v2, :cond_2

    .line 679
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 681
    iget v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    goto :goto_0

    .line 682
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 684
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$EcmState;->decrementCountAndReturnToAppropriateState()V

    .line 686
    :cond_1
    :goto_0
    return v1

    .line 687
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x26001

    if-ne v0, v2, :cond_5

    .line 689
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_3

    .line 691
    iget v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    goto :goto_1

    .line 692
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_4

    .line 694
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$EcmState;->decrementCountAndReturnToAppropriateState()V

    .line 696
    :cond_4
    :goto_1
    return v1

    .line 697
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x26011

    if-eq v0, v2, :cond_a

    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x26013

    if-ne v0, v2, :cond_6

    goto :goto_3

    .line 701
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x2600f

    if-eq v0, v2, :cond_9

    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x26015

    if-eq v0, v2, :cond_9

    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x26014

    if-ne v0, v2, :cond_7

    goto :goto_2

    .line 705
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x2600a

    if-ne v0, v2, :cond_8

    .line 707
    return v1

    .line 709
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 704
    :cond_9
    :goto_2
    return v1

    .line 700
    :cond_a
    :goto_3
    return v1
.end method
