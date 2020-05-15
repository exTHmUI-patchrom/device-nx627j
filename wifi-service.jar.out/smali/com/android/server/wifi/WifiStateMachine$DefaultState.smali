.class Lcom/android/server/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 3602
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .line 3606
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->access$1800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 3608
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1

    const/4 v5, -0x5

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    const/16 v6, -0x14

    packed-switch v0, :pswitch_data_8

    packed-switch v0, :pswitch_data_9

    packed-switch v0, :pswitch_data_a

    packed-switch v0, :pswitch_data_b

    packed-switch v0, :pswitch_data_c

    packed-switch v0, :pswitch_data_d

    packed-switch v0, :pswitch_data_e

    packed-switch v0, :pswitch_data_f

    packed-switch v0, :pswitch_data_10

    packed-switch v0, :pswitch_data_11

    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 3919
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! unhandled message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3765
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x25016

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3767
    goto/16 :goto_1

    .line 3761
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x25012

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3763
    goto/16 :goto_1

    .line 3758
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Lcom/android/server/wifi/NetworkUpdateResult;

    .line 3759
    goto/16 :goto_1

    .line 3755
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$2500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Z)Z

    .line 3756
    goto/16 :goto_1

    .line 3751
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x25002

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3753
    goto/16 :goto_1

    .line 3785
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_MIRACAST_MODE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3786
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->saveMiracastMode(I)V

    .line 3787
    goto/16 :goto_1

    .line 3799
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1, v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3800
    goto/16 :goto_1

    .line 3884
    :sswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiDiagnostics;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 3885
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3884
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/wifi/BaseWifiDiagnostics;->reportConnectionEvent(JB)V

    .line 3886
    goto/16 :goto_1

    .line 3888
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, p1, v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 3810
    :sswitch_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 3811
    goto/16 :goto_1

    .line 3866
    :sswitch_a
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, -0x4

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2302(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 3867
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 3868
    goto/16 :goto_1

    .line 3741
    :sswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x4

    if-ne v0, v4, :cond_2

    .line 3742
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v4, :cond_1

    .line 3743
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3745
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$2800(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 3747
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2800(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    .line 3749
    goto/16 :goto_1

    .line 3680
    :sswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_3

    .line 3681
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2800(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 3683
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$2800(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    .line 3685
    goto/16 :goto_1

    .line 3670
    :sswitch_d
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 3671
    goto/16 :goto_1

    .line 3644
    :sswitch_e
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_4

    move v3, v4

    nop

    :cond_4
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 3646
    goto/16 :goto_1

    .line 3634
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 3635
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 3636
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3610
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 3611
    .restart local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 3612
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_5

    .line 3613
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x11001

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2000(Lcom/android/server/wifi/WifiStateMachine;I)Z

    .line 3617
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    if-ne v1, v4, :cond_14

    .line 3621
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20083

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 3626
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiP2pService connection failure, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3629
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "got HALF_CONNECTED for unknown channel"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3631
    goto/16 :goto_1

    .line 3908
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_11
    const-string v0, "WifiStateMachine"

    const-string v1, "Error! empty message encountered"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    goto/16 :goto_1

    .line 3781
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_7

    move v3, v4

    nop

    :cond_7
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 3782
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2300d

    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 3783
    goto/16 :goto_1

    .line 3777
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    .line 3778
    .local v0, "info":Landroid/net/NetworkInfo;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3779
    goto/16 :goto_1

    .line 3903
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$2302(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 3904
    goto/16 :goto_1

    .line 3900
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "Supplicant Not Started!!"

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 3901
    goto/16 :goto_1

    .line 3896
    :goto_0
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3897
    goto/16 :goto_1

    .line 3915
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3916
    goto/16 :goto_1

    .line 3912
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, p1, Landroid/os/Message;->what:I

    check-cast v1, Ljava/util/List;

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 3913
    goto/16 :goto_1

    .line 3873
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$2900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->readPacketFilter(Ljava/lang/String;)[B

    move-result-object v0

    .line 3874
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/ip/IpClient;->readPacketFilterComplete([B)V

    .line 3875
    goto/16 :goto_1

    .line 3841
    .end local v0    # "data":[B
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->handleUserStop(I)V

    .line 3842
    goto/16 :goto_1

    .line 3838
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->handleUserUnlock(I)V

    .line 3839
    goto/16 :goto_1

    .line 3829
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 3830
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->handleUserSwitch(I)Ljava/util/Set;

    move-result-object v0

    .line 3831
    .local v0, "removedNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 3832
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3834
    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20049

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 3877
    .end local v0    # "removedNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3878
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$2900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 3880
    :cond_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$2900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets(Ljava/lang/String;)Z

    .line 3882
    goto/16 :goto_1

    .line 3870
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$2900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->installPacketFilter(Ljava/lang/String;[B)Z

    .line 3871
    goto/16 :goto_1

    .line 3826
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$2302(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 3827
    goto/16 :goto_1

    .line 3823
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$2302(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 3824
    goto/16 :goto_1

    .line 3818
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_1

    .line 3813
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_1

    .line 3790
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V

    .line 3791
    goto/16 :goto_1

    .line 3804
    :pswitch_12
    :sswitch_12
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$2302(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 3805
    goto/16 :goto_1

    .line 3687
    :pswitch_13
    const-string v0, "WifiStateMachine"

    const-string v1, "=qcdbg= WifiStateMachine - handle CMD_INITIALIZE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$2900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->initialize()Z

    move-result v0

    .line 3689
    .local v0, "ok":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 3690
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiInjector;->getWifiServiceHandlerThread()Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 3689
    invoke-virtual {v1, v3}, Lcom/android/server/wifi/hotspot2/PasspointManager;->initializeProvisioner(Landroid/os/Looper;)V

    .line 3691
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_a

    move v2, v4

    nop

    :cond_a
    invoke-static {v1, p1, v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3692
    goto/16 :goto_1

    .line 3695
    .end local v0    # "ok":Z
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3100(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 3696
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->loadFromStore()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3697
    const-string v0, "WifiStateMachine"

    const-string v1, "Failed to load from config store"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    .line 3700
    goto/16 :goto_1

    .line 3796
    :pswitch_15
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 3797
    goto/16 :goto_1

    .line 3862
    :pswitch_16
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/PasspointManager;->getProviderConfigs()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 3863
    goto/16 :goto_1

    .line 3857
    :pswitch_17
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointManager;->removeProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3858
    move v2, v4

    nop

    :cond_c
    move v0, v2

    .line 3859
    .local v0, "removeResult":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, p1, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3860
    goto/16 :goto_1

    .line 3851
    .end local v0    # "removeResult":I
    :pswitch_18
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wifi/hotspot2/PasspointManager;->addOrUpdateProvider(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3853
    move v2, v4

    nop

    :cond_d
    move v0, v2

    .line 3854
    .local v0, "addResult":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, p1, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3855
    goto/16 :goto_1

    .line 3848
    .end local v0    # "addResult":I
    :pswitch_19
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 3849
    goto/16 :goto_1

    .line 3793
    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 3794
    goto/16 :goto_1

    .line 3807
    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 3808
    goto/16 :goto_1

    .line 3702
    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_e

    move v3, v4

    nop

    :cond_e
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 3703
    goto/16 :goto_1

    .line 3677
    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_f

    move v3, v4

    nop

    :cond_f
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 3678
    goto/16 :goto_1

    .line 3734
    :pswitch_1e
    :sswitch_13
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$2302(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 3735
    goto/16 :goto_1

    .line 3739
    :pswitch_1f
    goto/16 :goto_1

    .line 3774
    :pswitch_20
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 3775
    goto/16 :goto_1

    .line 3673
    :pswitch_21
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 3674
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworksWithPasswords()Ljava/util/List;

    move-result-object v2

    .line 3673
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 3675
    goto/16 :goto_1

    .line 3769
    :pswitch_22
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$2900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet(Ljava/lang/String;)I

    move-result v0

    .line 3770
    .local v0, "featureSet":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, p1, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3771
    goto :goto_1

    .line 3648
    .end local v0    # "featureSet":I
    :pswitch_23
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v4, :cond_10

    move v3, v4

    nop

    :cond_10
    move v0, v3

    .line 3649
    .local v0, "disableOthers":Z
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3650
    .local v3, "netId":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v5, v3, v0, v6}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(IZI)Z

    move-result v5

    .line 3652
    .local v5, "ok":Z
    if-nez v5, :cond_11

    .line 3653
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2302(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 3655
    :cond_11
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->what:I

    if-eqz v5, :cond_12

    move v2, v4

    nop

    :cond_12
    invoke-static {v1, p1, v6, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3656
    goto :goto_1

    .line 3667
    .end local v0    # "disableOthers":Z
    .end local v3    # "netId":I
    .end local v5    # "ok":Z
    :pswitch_24
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Z)Z

    .line 3668
    goto :goto_1

    .line 3658
    :pswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3659
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 3660
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v2

    .line 3661
    .local v2, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_13

    .line 3662
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2302(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 3664
    :cond_13
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v5

    invoke-static {v1, p1, v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3665
    nop

    .line 3922
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_14
    :goto_1
    return v4

    :pswitch_data_0
    .packed-switch 0x20034
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2003d
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20048
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20052
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2005e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1e
        :pswitch_1b
        :pswitch_1e
        :pswitch_1a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x20068
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x20085
        :pswitch_1e
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2008a
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x200a0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x200ca
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x200cd
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x200dc
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x2012d
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_1e
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x2300b
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x24003
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x24006
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x2400f
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x30003
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0x11000 -> :sswitch_10
        0x11004 -> :sswitch_f
        0x2001f -> :sswitch_e
        0x2003b -> :sswitch_d
        0x2004d -> :sswitch_c
        0x20056 -> :sswitch_b
        0x20059 -> :sswitch_13
        0x20065 -> :sswitch_a
        0x20070 -> :sswitch_13
        0x20083 -> :sswitch_13
        0x20093 -> :sswitch_13
        0x20095 -> :sswitch_12
        0x20098 -> :sswitch_9
        0x200a8 -> :sswitch_8
        0x200fc -> :sswitch_7
        0x200fe -> :sswitch_6
        0x2300e -> :sswitch_5
        0x2402b -> :sswitch_13
        0x2403f -> :sswitch_13
        0x24065 -> :sswitch_13
        0x25001 -> :sswitch_4
        0x25004 -> :sswitch_3
        0x25007 -> :sswitch_2
        0x25011 -> :sswitch_1
        0x25014 -> :sswitch_0
        0x30006 -> :sswitch_13
    .end sparse-switch
.end method
