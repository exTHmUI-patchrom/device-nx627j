.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 680
    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v10, p0

    .line 683
    move-object/from16 v11, p1

    iget v0, v11, Landroid/os/Message;->what:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_8

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_7

    .line 877
    :pswitch_0
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 878
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.def"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 880
    :try_start_0
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->access$1200(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 883
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 884
    nop

    .line 885
    goto/16 :goto_7

    .line 882
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 883
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 1095
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 1097
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.hC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1099
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1100
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0}, Landroid/telecom/ConnectionService;->access$3000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1102
    .end local v0    # "callId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1103
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1104
    nop

    .line 1105
    goto/16 :goto_7

    .line 1102
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1103
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 811
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 812
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.haF"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 815
    :try_start_2
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 816
    .local v0, "id":Ljava/lang/String;
    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/ConnectionRequest;

    move-object v9, v3

    .line 817
    .local v9, "request":Landroid/telecom/ConnectionRequest;
    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v12, v3

    .line 818
    .local v12, "reason":I
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 819
    const-string v3, "Enqueueing pre-init request %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v10, v3, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 820
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v13

    new-instance v14, Landroid/telecom/ConnectionService$2$4;

    const-string v3, "H.CS.haF.pICR"

    const/4 v4, 0x0

    move-object v1, v14

    move-object v2, v10

    move-object v5, v0

    move-object v6, v9

    move v7, v12

    invoke-direct/range {v1 .. v7}, Landroid/telecom/ConnectionService$2$4;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V

    .line 829
    invoke-virtual {v14}, Landroid/telecom/ConnectionService$2$4;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 820
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 831
    :cond_0
    const-string v3, "createConnectionFailed %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v10, v3, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 832
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v9, v12}, Landroid/telecom/ConnectionService;->access$800(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 835
    .end local v0    # "id":Ljava/lang/String;
    .end local v9    # "request":Landroid/telecom/ConnectionRequest;
    .end local v12    # "reason":I
    :goto_0
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 836
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 837
    nop

    .line 838
    goto/16 :goto_7

    .line 835
    :catchall_2
    move-exception v0

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 836
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 1165
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->onConnectionServiceFocusGained()V

    .line 1166
    goto/16 :goto_7

    .line 1168
    :pswitch_4
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->onConnectionServiceFocusLost()V

    .line 1169
    goto/16 :goto_7

    .line 751
    :pswitch_5
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 752
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v4, "H.CS.crCoC"

    invoke-static {v0, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 755
    :try_start_3
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 756
    .restart local v0    # "id":Ljava/lang/String;
    iget-object v4, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 757
    const-string v4, "Enqueueing pre-init request %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v10, v4, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/telecom/ConnectionService$2$2;

    const-string v4, "H.CS.crCoC.pICR"

    const/4 v5, 0x0

    invoke-direct {v2, v10, v4, v5, v0}, Landroid/telecom/ConnectionService$2$2;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    invoke-virtual {v2}, Landroid/telecom/ConnectionService$2$2;->prepare()Ljava/lang/Runnable;

    move-result-object v2

    .line 758
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 769
    :cond_1
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0}, Landroid/telecom/ConnectionService;->access$600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 772
    .end local v0    # "id":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 773
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 774
    nop

    .line 775
    goto/16 :goto_7

    .line 772
    :catchall_3
    move-exception v0

    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 773
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 1150
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 1152
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.rTRUR"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1154
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1155
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Connection$RttTextStream;

    .line 1157
    .local v2, "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->access$3400(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1159
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1160
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1161
    nop

    .line 1162
    goto/16 :goto_7

    .line 1159
    :catchall_4
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1160
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 1137
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 1139
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.-RTT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1141
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1142
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0}, Landroid/telecom/ConnectionService;->access$3300(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1144
    .end local v0    # "callId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1145
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1146
    nop

    .line 1147
    goto/16 :goto_7

    .line 1144
    :catchall_5
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1145
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 1122
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_8
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 1124
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.+RTT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1126
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1127
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Connection$RttTextStream;

    .line 1129
    .restart local v2    # "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->access$3200(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1131
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1132
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1133
    nop

    .line 1134
    goto/16 :goto_7

    .line 1131
    :catchall_6
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1132
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 778
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_9
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 779
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.crCoF"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 782
    :try_start_7
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 783
    .local v0, "id":Ljava/lang/String;
    iget-object v3, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/ConnectionRequest;

    move-object v12, v3

    .line 784
    .local v12, "request":Landroid/telecom/ConnectionRequest;
    iget v3, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v3, v2, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    move v13, v3

    .line 785
    .local v13, "isIncoming":Z
    iget-object v3, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    move-object v14, v3

    .line 787
    .local v14, "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 788
    const-string v3, "Enqueueing pre-init request %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v10, v3, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v15

    new-instance v8, Landroid/telecom/ConnectionService$2$3;

    const-string v3, "H.CS.crCoF.pICR"

    const/4 v4, 0x0

    move-object v1, v8

    move-object v2, v10

    move-object v5, v14

    move-object v6, v0

    move-object v7, v12

    move-object v11, v8

    move v8, v13

    invoke-direct/range {v1 .. v8}, Landroid/telecom/ConnectionService$2$3;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    .line 798
    invoke-virtual {v11}, Landroid/telecom/ConnectionService$2$3;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 789
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 800
    :cond_3
    const-string v3, "createConnectionFailed %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v10, v3, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v14, v0, v12, v13}, Landroid/telecom/ConnectionService;->access$700(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 805
    .end local v0    # "id":Ljava/lang/String;
    .end local v12    # "request":Landroid/telecom/ConnectionRequest;
    .end local v13    # "isIncoming":Z
    .end local v14    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    :goto_3
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 806
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 807
    nop

    .line 808
    nop

    .line 1173
    move-object/from16 v11, p1

    goto/16 :goto_7

    .line 805
    :catchall_7
    move-exception v0

    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 806
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 1108
    .end local v9    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    move-object/from16 v11, p1

    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 1110
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.oEC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1112
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1113
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1114
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->access$3100(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 1116
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "extras":Landroid/os/Bundle;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1117
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1118
    nop

    .line 1119
    goto/16 :goto_7

    .line 1116
    :catchall_8
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1117
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 1080
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_b
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 1082
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_9
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sCE"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1084
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1085
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1086
    .local v2, "event":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1087
    .local v3, "extras":Landroid/os/Bundle;
    iget-object v4, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4, v0, v2, v3}, Landroid/telecom/ConnectionService;->access$2900(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 1089
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "event":Ljava/lang/String;
    .end local v3    # "extras":Landroid/os/Bundle;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1090
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1091
    nop

    .line 1092
    goto/16 :goto_7

    .line 1089
    :catchall_9
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1090
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 1068
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 1070
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_a
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.pEC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1072
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$2800(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 1074
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1075
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1076
    nop

    .line 1077
    goto/16 :goto_7

    .line 1074
    :catchall_a
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1075
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 922
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_d
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 923
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.s"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 925
    :try_start_b
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$1600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 927
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 928
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 929
    nop

    .line 930
    goto/16 :goto_7

    .line 927
    :catchall_b
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 928
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 899
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_e
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 900
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.rWM"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 903
    :try_start_c
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->access$1400(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 905
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 906
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 907
    nop

    .line 908
    goto/16 :goto_7

    .line 905
    :catchall_c
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 906
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 1042
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_f
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 1044
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_d
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1046
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$2600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 1048
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1049
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1050
    nop

    .line 1051
    goto/16 :goto_7

    .line 1048
    :catchall_d
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1049
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 1030
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_10
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 1032
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_e
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.mC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1034
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$2500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 1036
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1037
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1038
    nop

    .line 1039
    goto/16 :goto_7

    .line 1036
    :catchall_e
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1037
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 863
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_11
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 864
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.anV"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 867
    :try_start_f
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 868
    .restart local v0    # "callId":Ljava/lang/String;
    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 869
    .local v2, "videoState":I
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->access$1100(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 871
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "videoState":I
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 872
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 873
    nop

    .line 874
    goto/16 :goto_7

    .line 871
    :catchall_f
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 872
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 699
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_12
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 701
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_10
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.rCSA"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 703
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 705
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 706
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 707
    nop

    .line 708
    goto/16 :goto_7

    .line 705
    :catchall_10
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 706
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 1054
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_13
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v3, v0

    .line 1056
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_11
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v4, "H.CS.oPDC"

    invoke-static {v0, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1058
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1059
    .restart local v0    # "callId":Ljava/lang/String;
    iget v4, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v4, v2, :cond_4

    move v1, v2

    nop

    .line 1060
    .local v1, "proceed":Z
    :cond_4
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->access$2700(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 1062
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "proceed":Z
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1063
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1064
    nop

    .line 1065
    goto/16 :goto_7

    .line 1062
    :catchall_11
    move-exception v0

    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1063
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 1018
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_14
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 1020
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_12
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sFC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1022
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$2400(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 1024
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1025
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1026
    nop

    .line 1027
    goto/16 :goto_7

    .line 1024
    :catchall_12
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1025
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 1004
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_15
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 1006
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_13
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.c"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1008
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1009
    .local v0, "callId1":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1010
    .local v2, "callId2":Ljava/lang/String;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->access$2300(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 1012
    .end local v0    # "callId1":Ljava/lang/String;
    .end local v2    # "callId2":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1013
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1014
    nop

    .line 1015
    goto/16 :goto_7

    .line 1012
    :catchall_13
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1013
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 981
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_16
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 983
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_14
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sDT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 985
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$2100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 987
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 988
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 989
    nop

    .line 990
    goto/16 :goto_7

    .line 987
    :catchall_14
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 988
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 969
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_17
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 971
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_15
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.pDT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 973
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->access$2000(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 975
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 976
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 977
    nop

    .line 978
    goto/16 :goto_7

    .line 975
    :catchall_15
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 976
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 955
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_18
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 956
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.cASC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 959
    :try_start_16
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 960
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/CallAudioState;

    .line 961
    .local v2, "audioState":Landroid/telecom/CallAudioState;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    new-instance v4, Landroid/telecom/CallAudioState;

    invoke-direct {v4, v2}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    invoke-static {v3, v0, v4}, Landroid/telecom/ConnectionService;->access$1900(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    .line 963
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "audioState":Landroid/telecom/CallAudioState;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 964
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 965
    nop

    .line 966
    goto/16 :goto_7

    .line 963
    :catchall_16
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 964
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 944
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_19
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 945
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.u"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 947
    :try_start_17
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$1800(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    .line 949
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 950
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 951
    nop

    .line 952
    goto/16 :goto_7

    .line 949
    :catchall_17
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 950
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 933
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1a
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 934
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.r"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 936
    :try_start_18
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$1700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    .line 938
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 939
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 940
    nop

    .line 941
    goto/16 :goto_7

    .line 938
    :catchall_18
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 939
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 911
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1b
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 912
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.d"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 914
    :try_start_19
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$1500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    .line 916
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 917
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 918
    nop

    .line 919
    goto/16 :goto_7

    .line 916
    :catchall_19
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 917
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 888
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 889
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.r"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 891
    :try_start_1a
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$1300(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    .line 893
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 894
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 895
    nop

    .line 896
    goto/16 :goto_7

    .line 893
    :catchall_1a
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 894
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 852
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1d
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 853
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.an"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 855
    :try_start_1b
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$1000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    .line 857
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 858
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 859
    nop

    .line 860
    goto/16 :goto_7

    .line 857
    :catchall_1b
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 858
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 841
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1e
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 842
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.ab"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 844
    :try_start_1c
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    .line 846
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 847
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 848
    nop

    .line 849
    goto/16 :goto_7

    .line 846
    :catchall_1c
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 847
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 711
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1f
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    .line 712
    .local v12, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.crCo"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 714
    :try_start_1d
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    .line 716
    .local v5, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 717
    .local v0, "id":Ljava/lang/String;
    iget-object v3, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Landroid/telecom/ConnectionRequest;

    .line 718
    .local v7, "request":Landroid/telecom/ConnectionRequest;
    iget v3, v12, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v3, v2, :cond_5

    move v8, v2

    goto :goto_4

    :cond_5
    move v8, v1

    .line 719
    .local v8, "isIncoming":Z
    :goto_4
    iget v3, v12, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v3, v2, :cond_6

    move v9, v2

    goto :goto_5

    :cond_6
    move v9, v1

    .line 720
    .local v9, "isUnknown":Z
    :goto_5
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 721
    const-string v3, "Enqueueing pre-init request %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v10, v3, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v13

    new-instance v14, Landroid/telecom/ConnectionService$2$1;

    const-string v3, "H.CS.crCo.pICR"

    const/4 v4, 0x0

    move-object v1, v14

    move-object v2, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v9}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    .line 735
    invoke-virtual {v14}, Landroid/telecom/ConnectionService$2$1;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 722
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 737
    :cond_7
    iget-object v13, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object v14, v5

    move-object v15, v0

    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-static/range {v13 .. v18}, Landroid/telecom/ConnectionService;->access$400(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    .line 745
    .end local v0    # "id":Ljava/lang/String;
    .end local v5    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v7    # "request":Landroid/telecom/ConnectionRequest;
    .end local v8    # "isIncoming":Z
    .end local v9    # "isUnknown":Z
    :goto_6
    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 746
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 747
    nop

    .line 748
    goto :goto_7

    .line 745
    :catchall_1d
    move-exception v0

    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 746
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 685
    .end local v12    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_20
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 687
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1e
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 688
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.aCSA"

    invoke-static {v2, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 690
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 691
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->access$200(Landroid/telecom/ConnectionService;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1e

    .line 693
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 694
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 695
    nop

    .line 696
    goto :goto_7

    .line 693
    :catchall_1e
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 694
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 993
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_8
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    .line 995
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1f
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 996
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 997
    .local v2, "participant":Ljava/lang/String;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->access$2200(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    .line 999
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "participant":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1000
    nop

    .line 1001
    nop

    .line 1173
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_7
    return-void

    .line 999
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
