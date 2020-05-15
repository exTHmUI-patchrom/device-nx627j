.class Lcom/android/server/wifi/WifiStateMachine$RoamingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoamingState"
.end annotation


# instance fields
.field mAssociated:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 5696
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .line 5700
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5701
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RoamingState Enter mScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 5702
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5701
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5706
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    .line 5707
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Roam Watchdog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, v2, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5708
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x2005e

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v3, v3, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 5710
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->mAssociated:Z

    .line 5711
    return-void
.end method

.method public exit()V
    .locals 2

    .line 5841
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "WifiStateMachine: Leaving Roaming state"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5842
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 5714
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->access$1800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 5716
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 5834
    return v1

    .line 5737
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/StateChangeResult;

    .line 5738
    .local v0, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    sget-object v3, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v1, v3, :cond_0

    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    sget-object v3, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v1, v3, :cond_0

    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    sget-object v3, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v3, :cond_2

    .line 5741
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5742
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE_CHANGE_EVENT in roaming state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5743
    invoke-virtual {v0}, Lcom/android/server/wifi/StateChangeResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5742
    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5745
    :cond_1
    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 5746
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5747
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5900(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 5748
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 5751
    :cond_2
    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    sget-object v3, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v3, :cond_9

    .line 5753
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->mAssociated:Z

    .line 5754
    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 5755
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, v0, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1202(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 5820
    .end local v0    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5822
    .local v0, "bssid":Ljava/lang/String;
    const-string v1, ""

    .line 5823
    .local v1, "target":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    .line 5824
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NETWORK_DISCONNECTION_EVENT in roaming state BSSID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5828
    .end local v1    # "target":Ljava/lang/String;
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5829
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5900(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 5830
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 5774
    .end local v0    # "bssid":Ljava/lang/String;
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->mAssociated:Z

    if-eqz v0, :cond_5

    .line 5775
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5776
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "roaming and Network connection established"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5778
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5779
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$8002(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 5780
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/ExtendedWifiInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$8000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 5781
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/ExtendedWifiInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setNetworkId(I)V

    .line 5782
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 5787
    .local v0, "reasonCode":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$8000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->trackBssid(Ljava/lang/String;ZILandroid/net/wifi/WifiConfiguration;)Z

    .line 5789
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$8000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5792
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, v2, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 5802
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "RoamingCompleted"

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->clearTargetBssid(Ljava/lang/String;)Z

    .line 5812
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 5813
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$10100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 5814
    .end local v0    # "reasonCode":I
    goto/16 :goto_0

    .line 5815
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, -0x5

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2302(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5817
    goto :goto_0

    .line 5725
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5726
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "Roaming and CS doesnt want the network -> ignore"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5728
    :cond_6
    return v2

    .line 5718
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5719
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_7

    .line 5720
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiDiagnostics;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/BaseWifiDiagnostics;->captureBugReportData(I)V

    .line 5723
    :cond_7
    return v1

    .line 5760
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_9

    .line 5761
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "roaming watchdog! -> disconnect"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5762
    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->endConnectionEvent(II)V

    .line 5765
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$11408(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 5766
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$5900(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 5767
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/16 v1, 0xf

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(II)V

    .line 5769
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$2900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->disconnect(Ljava/lang/String;)Z

    .line 5770
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 5836
    :cond_9
    :goto_0
    return v2

    :sswitch_data_0
    .sparse-switch
        0x2005e -> :sswitch_5
        0x2008b -> :sswitch_4
        0x20090 -> :sswitch_3
        0x24003 -> :sswitch_2
        0x24004 -> :sswitch_1
        0x24006 -> :sswitch_0
    .end sparse-switch
.end method
