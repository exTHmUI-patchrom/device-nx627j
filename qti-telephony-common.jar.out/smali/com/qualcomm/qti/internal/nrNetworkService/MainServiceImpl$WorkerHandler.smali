.class Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;
.super Landroid/os/Handler;
.source "MainServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainServiceImplHandler: "


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 76
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    .line 77
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 82
    const-string v0, "MainServiceImplHandler: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 153
    :pswitch_1
    const-string v0, "MainServiceImplHandler: "

    const-string v1, "EVENT_ON_ENDC_STATUS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 155
    .local v0, "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 156
    .local v1, "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$800(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 157
    goto/16 :goto_0

    .line 145
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_2
    const-string v0, "MainServiceImplHandler: "

    const-string v1, "EVENT_ON_ENABLE_ENDC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 147
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 148
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    invoke-static {v2, v0, v3, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$700(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    .line 149
    goto/16 :goto_0

    .line 136
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_3
    const-string v0, "MainServiceImplHandler: "

    const-string v1, "EVENT_ON_NR_ICON_TYPE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 138
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 139
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/NrIconType;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$600(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    .line 141
    goto/16 :goto_0

    .line 127
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_4
    const-string v0, "MainServiceImplHandler: "

    const-string v1, "EVENT_ON_5G_CONFIG_INFO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 129
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 130
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/NrConfigType;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$500(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    .line 132
    goto/16 :goto_0

    .line 118
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_5
    const-string v0, "MainServiceImplHandler: "

    const-string v1, "EVENT_ON_UPPER_LAYER_INDICATION_INFO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 120
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 121
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/UpperLayerIndInfo;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$400(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    .line 123
    goto :goto_0

    .line 111
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_6
    const-string v0, "MainServiceImplHandler: "

    const-string v1, "EVENT_ON_NR_DUAL_CONNECTIVITY_CHANGE_IND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 113
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 114
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/DcParam;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    .line 115
    goto :goto_0

    .line 102
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_7
    const-string v0, "MainServiceImplHandler: "

    const-string v1, "EVENT_ON_5G_SIGNAL_STRENGTH_CHANGE_IND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 104
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 105
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/SignalStrength;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    .line 107
    goto :goto_0

    .line 94
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_8
    const-string v0, "MainServiceImplHandler: "

    const-string v1, "EVENT_ON_5G_ENABLE_STATUS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 96
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 97
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 98
    goto :goto_0

    .line 85
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_9
    const-string v0, "MainServiceImplHandler: "

    const-string v1, "EVENT_ON_BEARER_ALLOCATION_CHANGE_IND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 87
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 88
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/BearerAllocationStatus;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    .line 90
    nop

    .line 160
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
