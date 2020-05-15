.class Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;
.super Lcom/android/internal/util/State;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;
    .param p2, "x1"    # Lcom/android/internal/telephony/euicc/EuiccConnector$1;

    .line 646
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1300(Lcom/android/internal/telephony/euicc/EuiccConnector;I)V

    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const/4 v1, 0x3

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessageDelayed(IJ)V

    .line 651
    return-void
.end method

.method public exit()V
    .locals 2

    .line 906
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1600(Lcom/android/internal/telephony/euicc/EuiccConnector;I)V

    .line 910
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1700(Lcom/android/internal/telephony/euicc/EuiccConnector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    .line 911
    .local v1, "callback":Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    invoke-interface {v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;->onEuiccServiceUnavailable()V

    .line 912
    .end local v1    # "callback":Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    goto :goto_0

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1700(Lcom/android/internal/telephony/euicc/EuiccConnector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 914
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .line 655
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1102(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/service/euicc/IEuiccService;)Landroid/service/euicc/IEuiccService;

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, v2, Lcom/android/internal/telephony/euicc/EuiccConnector;->mDisconnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 658
    return v1

    .line 659
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 660
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1200(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, v2, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 662
    return v1

    .line 663
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 664
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 665
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 666
    return v1

    .line 667
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$800(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 668
    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$900(Landroid/os/Message;)Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    move-result-object v0

    .line 669
    .local v0, "callback":Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1400(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    .line 671
    const/4 v2, -0x1

    .line 673
    .local v2, "slotId":I
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 883
    const-string v3, "EuiccConnector"

    goto/16 :goto_1

    .line 861
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v3, v2, v4}, Landroid/service/euicc/IEuiccService;->startOtaIfNecessary(ILandroid/service/euicc/IOtaStatusChangedCallback;)V

    .line 880
    goto/16 :goto_0

    .line 847
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v3, v2, v4}, Landroid/service/euicc/IEuiccService;->getOtaStatus(ILandroid/service/euicc/IGetOtaStatusCallback;)V

    .line 858
    goto/16 :goto_0

    .line 833
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$11;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$11;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v3, v2, v4}, Landroid/service/euicc/IEuiccService;->retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V

    .line 844
    goto/16 :goto_0

    .line 819
    :pswitch_3
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$10;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$10;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v3, v2, v4}, Landroid/service/euicc/IEuiccService;->eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    .line 830
    goto/16 :goto_0

    .line 803
    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;

    .line 804
    .local v3, "request":Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;
    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v4

    iget-object v5, v3, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;->mIccid:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;->mNickname:Ljava/lang/String;

    new-instance v7, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$9;

    invoke-direct {v7, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$9;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v4, v2, v5, v6, v7}, Landroid/service/euicc/IEuiccService;->updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V

    .line 816
    goto/16 :goto_0

    .line 787
    .end local v3    # "request":Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;
    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;

    .line 788
    .local v3, "request":Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;
    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v4

    iget-object v5, v3, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mIccid:Ljava/lang/String;

    iget-boolean v6, v3, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mForceDeactivateSim:Z

    new-instance v7, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$8;

    invoke-direct {v7, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$8;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v4, v2, v5, v6, v7}, Landroid/service/euicc/IEuiccService;->switchToSubscription(ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V

    .line 800
    goto/16 :goto_0

    .line 772
    .end local v3    # "request":Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;
    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;

    .line 773
    .local v3, "request":Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;
    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v4

    iget-object v5, v3, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;->mIccid:Ljava/lang/String;

    new-instance v6, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;

    invoke-direct {v6, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v4, v2, v5, v6}, Landroid/service/euicc/IEuiccService;->deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V

    .line 784
    goto/16 :goto_0

    .line 758
    .end local v3    # "request":Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;
    :pswitch_7
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v3, v2, v4}, Landroid/service/euicc/IEuiccService;->getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V

    .line 769
    goto :goto_0

    .line 740
    :pswitch_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;

    .line 741
    .local v3, "request":Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;
    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v4

    iget-boolean v5, v3, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;->mForceDeactivateSim:Z

    new-instance v6, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;

    invoke-direct {v6, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v4, v2, v5, v6}, Landroid/service/euicc/IEuiccService;->getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V

    .line 755
    goto :goto_0

    .line 725
    .end local v3    # "request":Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;
    :pswitch_9
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v3, v2, v4}, Landroid/service/euicc/IEuiccService;->getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V

    .line 737
    goto :goto_0

    .line 707
    :pswitch_a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;

    move-object v9, v3

    .line 708
    .local v9, "request":Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v3

    iget-object v5, v9, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v6, v9, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mSwitchAfterDownload:Z

    iget-boolean v7, v9, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mForceDeactivateSim:Z

    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;

    invoke-direct {v8, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    move v4, v2

    invoke-interface/range {v3 .. v8}, Landroid/service/euicc/IEuiccService;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IDownloadSubscriptionCallback;)V

    .line 722
    goto :goto_0

    .line 689
    .end local v9    # "request":Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;
    :pswitch_b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;

    .line 690
    .local v3, "request":Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;
    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v4

    iget-object v5, v3, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v6, v3, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mForceDeactivateSim:Z

    new-instance v7, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;

    invoke-direct {v7, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v4, v2, v5, v6, v7}, Landroid/service/euicc/IEuiccService;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V

    .line 704
    goto :goto_0

    .line 675
    .end local v3    # "request":Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;
    :pswitch_c
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v3, v2, v4}, Landroid/service/euicc/IEuiccService;->getEid(ILandroid/service/euicc/IGetEidCallback;)V

    .line 686
    nop

    .line 896
    :goto_0
    goto :goto_2

    .line 883
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unimplemented eUICC command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-interface {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;->onEuiccServiceUnavailable()V

    .line 885
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1500(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    return v1

    .line 889
    :catch_0
    move-exception v3

    .line 893
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "EuiccConnector"

    const-string v5, "Exception making binder call to EuiccService"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    invoke-interface {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;->onEuiccServiceUnavailable()V

    .line 895
    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1500(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    .line 898
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return v1

    .line 901
    .end local v0    # "callback":Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    .end local v2    # "slotId":I
    :cond_3
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
