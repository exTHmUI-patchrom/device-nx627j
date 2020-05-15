.class Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;
.super Landroid/os/Handler;
.source "FakeHidlConnectionInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FakeHidleConnection-WorkerHandler"


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 73
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    .line 74
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 75
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 79
    const-string v0, "FakeHidleConnection-WorkerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 247
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 248
    .local v0, "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/internal/Token;

    .line 249
    .local v1, "token":Lorg/codeaurora/internal/Token;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 250
    const-string v2, "FakeHidleConnection-WorkerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SIMULATE_QUERY_ENDC_STATUS: token = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    new-instance v3, Lorg/codeaurora/internal/Status;

    invoke-direct {v3, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onEndcStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .end local v0    # "slotId":I
    .end local v1    # "token":Lorg/codeaurora/internal/Token;
    goto/16 :goto_3

    .line 235
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 236
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/internal/Token;

    .line 237
    .restart local v1    # "token":Lorg/codeaurora/internal/Token;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 238
    const-string v2, "FakeHidleConnection-WorkerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SIMULATE_ENABLE_ENDC: token = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    new-instance v3, Lorg/codeaurora/internal/Status;

    invoke-direct {v3, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v2, v0, v1, v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onEnableEndc(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    .line 244
    .end local v0    # "slotId":I
    .end local v1    # "token":Lorg/codeaurora/internal/Token;
    :cond_0
    goto/16 :goto_3

    .line 221
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 222
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/internal/Token;

    .line 223
    .restart local v1    # "token":Lorg/codeaurora/internal/Token;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 224
    const-string v2, "FakeHidleConnection-WorkerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SIMULATE_QUERY_ICON_TYPE: token = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v2, Lorg/codeaurora/internal/NrIconType;

    invoke-direct {v2, v4}, Lorg/codeaurora/internal/NrIconType;-><init>(I)V

    .line 228
    .local v2, "nrIconType":Lorg/codeaurora/internal/NrIconType;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    new-instance v5, Lorg/codeaurora/internal/Status;

    invoke-direct {v5, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v3, v0, v1, v5, v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    .line 232
    .end local v0    # "slotId":I
    .end local v1    # "token":Lorg/codeaurora/internal/Token;
    .end local v2    # "nrIconType":Lorg/codeaurora/internal/NrIconType;
    :cond_1
    goto/16 :goto_3

    .line 207
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 208
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/internal/Token;

    .line 209
    .restart local v1    # "token":Lorg/codeaurora/internal/Token;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 210
    const-string v2, "FakeHidleConnection-WorkerHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SIMULATE_QUERY_CONFIG_TYPE: token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v2, Lorg/codeaurora/internal/NrConfigType;

    invoke-direct {v2, v3}, Lorg/codeaurora/internal/NrConfigType;-><init>(I)V

    .line 214
    .local v2, "nrConfigType":Lorg/codeaurora/internal/NrConfigType;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    new-instance v5, Lorg/codeaurora/internal/Status;

    invoke-direct {v5, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v3, v0, v1, v5, v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    .line 218
    .end local v0    # "slotId":I
    .end local v1    # "token":Lorg/codeaurora/internal/Token;
    .end local v2    # "nrConfigType":Lorg/codeaurora/internal/NrConfigType;
    :cond_2
    goto/16 :goto_3

    .line 189
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 190
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/internal/Token;

    .line 191
    .restart local v1    # "token":Lorg/codeaurora/internal/Token;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 192
    const-string v2, "FakeHidleConnection-WorkerHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SIMULATE_QUERY_UPPER_LAYER_IND_INFO: token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    new-instance v2, Lorg/codeaurora/internal/UpperLayerIndInfo;

    invoke-direct {v2, v4, v4}, Lorg/codeaurora/internal/UpperLayerIndInfo;-><init>(II)V

    goto :goto_0

    .line 197
    :cond_3
    new-instance v2, Lorg/codeaurora/internal/UpperLayerIndInfo;

    invoke-direct {v2, v3, v3}, Lorg/codeaurora/internal/UpperLayerIndInfo;-><init>(II)V

    .line 200
    .local v2, "upperLayerIndInfo":Lorg/codeaurora/internal/UpperLayerIndInfo;
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    new-instance v5, Lorg/codeaurora/internal/Status;

    invoke-direct {v5, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v3, v0, v1, v5, v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    .line 204
    .end local v0    # "slotId":I
    .end local v1    # "token":Lorg/codeaurora/internal/Token;
    .end local v2    # "upperLayerIndInfo":Lorg/codeaurora/internal/UpperLayerIndInfo;
    :cond_4
    goto/16 :goto_3

    .line 177
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 178
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/internal/Token;

    .line 179
    .restart local v1    # "token":Lorg/codeaurora/internal/Token;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 180
    const-string v3, "FakeHidleConnection-WorkerHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SIMULATE_QUERY_SIGNAL_STRENGTH: token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v2, Lorg/codeaurora/internal/SignalStrength;

    invoke-direct {v2}, Lorg/codeaurora/internal/SignalStrength;-><init>()V

    nop

    .line 182
    .local v2, "ss":Lorg/codeaurora/internal/SignalStrength;
    :cond_5
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    new-instance v5, Lorg/codeaurora/internal/Status;

    invoke-direct {v5, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v3, v0, v1, v5, v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    .line 186
    .end local v0    # "slotId":I
    .end local v1    # "token":Lorg/codeaurora/internal/Token;
    .end local v2    # "ss":Lorg/codeaurora/internal/SignalStrength;
    :cond_6
    goto/16 :goto_3

    .line 161
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 162
    .restart local v0    # "slotId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/internal/Token;

    .line 163
    .local v2, "token":Lorg/codeaurora/internal/Token;
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 164
    const-string v5, "FakeHidleConnection-WorkerHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_SIMULATE_QUERY_BEARER_ALLOCATION: token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 166
    new-instance v3, Lorg/codeaurora/internal/BearerAllocationStatus;

    invoke-direct {v3, v1}, Lorg/codeaurora/internal/BearerAllocationStatus;-><init>(I)V

    .line 168
    move-object v1, v3

    goto :goto_1

    :cond_7
    new-instance v1, Lorg/codeaurora/internal/BearerAllocationStatus;

    invoke-direct {v1, v3}, Lorg/codeaurora/internal/BearerAllocationStatus;-><init>(I)V

    .line 170
    .local v1, "bearerAllocationStatus":Lorg/codeaurora/internal/BearerAllocationStatus;
    :goto_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    new-instance v5, Lorg/codeaurora/internal/Status;

    invoke-direct {v5, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v3, v0, v2, v5, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    .line 174
    .end local v0    # "slotId":I
    .end local v1    # "bearerAllocationStatus":Lorg/codeaurora/internal/BearerAllocationStatus;
    .end local v2    # "token":Lorg/codeaurora/internal/Token;
    :cond_8
    goto/16 :goto_3

    .line 147
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 148
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/internal/Token;

    .line 149
    .local v1, "token":Lorg/codeaurora/internal/Token;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 150
    const-string v2, "FakeHidleConnection-WorkerHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SIMULATE_QUERY_NRDC_PARAM: token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 152
    new-instance v2, Lorg/codeaurora/internal/DcParam;

    invoke-direct {v2, v4, v4}, Lorg/codeaurora/internal/DcParam;-><init>(II)V

    goto :goto_2

    .line 153
    :cond_9
    new-instance v2, Lorg/codeaurora/internal/DcParam;

    invoke-direct {v2, v3, v3}, Lorg/codeaurora/internal/DcParam;-><init>(II)V

    .line 154
    .local v2, "dcParam":Lorg/codeaurora/internal/DcParam;
    :goto_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    new-instance v5, Lorg/codeaurora/internal/Status;

    invoke-direct {v5, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v3, v0, v1, v5, v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    .line 158
    .end local v0    # "slotId":I
    .end local v1    # "token":Lorg/codeaurora/internal/Token;
    .end local v2    # "dcParam":Lorg/codeaurora/internal/DcParam;
    :cond_a
    goto/16 :goto_3

    .line 136
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 137
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/internal/Token;

    .line 138
    .restart local v1    # "token":Lorg/codeaurora/internal/Token;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 139
    const-string v2, "FakeHidleConnection-WorkerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SIMULATE_QUERY_5G_STATUS: token = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    new-instance v3, Lorg/codeaurora/internal/Status;

    invoke-direct {v3, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    .line 141
    invoke-static {v4}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Z

    move-result v4

    .line 140
    invoke-interface {v2, v0, v1, v3, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 144
    .end local v0    # "slotId":I
    .end local v1    # "token":Lorg/codeaurora/internal/Token;
    :cond_b
    goto/16 :goto_3

    .line 110
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 111
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/internal/Token;

    .line 112
    .restart local v1    # "token":Lorg/codeaurora/internal/Token;
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 113
    const-string v5, "FakeHidleConnection-WorkerHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_SIMULATE_5G_DISABLED: token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v5

    new-instance v6, Lorg/codeaurora/internal/Status;

    invoke-direct {v6, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v5, v0, v1, v6, v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 116
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v6

    new-instance v7, Lorg/codeaurora/internal/Status;

    invoke-direct {v7, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v8, Lorg/codeaurora/internal/DcParam;

    invoke-direct {v8, v3, v3}, Lorg/codeaurora/internal/DcParam;-><init>(II)V

    invoke-interface {v5, v0, v6, v7, v8}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    .line 118
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v6

    new-instance v7, Lorg/codeaurora/internal/Status;

    invoke-direct {v7, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v8, Lorg/codeaurora/internal/UpperLayerIndInfo;

    invoke-direct {v8, v3, v3}, Lorg/codeaurora/internal/UpperLayerIndInfo;-><init>(II)V

    invoke-interface {v5, v0, v6, v7, v8}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    .line 121
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v6

    new-instance v7, Lorg/codeaurora/internal/Status;

    invoke-direct {v7, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v8, Lorg/codeaurora/internal/BearerAllocationStatus;

    invoke-direct {v8, v3}, Lorg/codeaurora/internal/BearerAllocationStatus;-><init>(I)V

    invoke-interface {v5, v0, v6, v7, v8}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    .line 123
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v6

    new-instance v7, Lorg/codeaurora/internal/Status;

    invoke-direct {v7, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v5, v0, v6, v7, v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    .line 124
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v5

    new-instance v6, Lorg/codeaurora/internal/Status;

    invoke-direct {v6, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v7, Lorg/codeaurora/internal/NrIconType;

    invoke-direct {v7, v3}, Lorg/codeaurora/internal/NrIconType;-><init>(I)V

    invoke-interface {v2, v0, v5, v6, v7}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    .line 127
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v5

    new-instance v6, Lorg/codeaurora/internal/Status;

    invoke-direct {v6, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v2, v0, v5, v6, v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 129
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$202(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;Z)Z

    goto/16 :goto_3

    .line 82
    .end local v0    # "slotId":I
    .end local v1    # "token":Lorg/codeaurora/internal/Token;
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 83
    .restart local v0    # "slotId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/internal/Token;

    .line 84
    .local v2, "token":Lorg/codeaurora/internal/Token;
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 85
    const-string v5, "FakeHidleConnection-WorkerHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_SIMULATE_5G_ENABLED: token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v5

    new-instance v6, Lorg/codeaurora/internal/Status;

    invoke-direct {v6, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v5, v0, v2, v6, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 88
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v6

    new-instance v7, Lorg/codeaurora/internal/Status;

    invoke-direct {v7, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v8, Lorg/codeaurora/internal/DcParam;

    invoke-direct {v8, v4, v4}, Lorg/codeaurora/internal/DcParam;-><init>(II)V

    invoke-interface {v5, v0, v6, v7, v8}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    .line 90
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v6

    new-instance v7, Lorg/codeaurora/internal/Status;

    invoke-direct {v7, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v8, Lorg/codeaurora/internal/UpperLayerIndInfo;

    invoke-direct {v8, v4, v4}, Lorg/codeaurora/internal/UpperLayerIndInfo;-><init>(II)V

    invoke-interface {v5, v0, v6, v7, v8}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    .line 93
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v6

    new-instance v7, Lorg/codeaurora/internal/Status;

    invoke-direct {v7, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v8, Lorg/codeaurora/internal/BearerAllocationStatus;

    invoke-direct {v8, v1}, Lorg/codeaurora/internal/BearerAllocationStatus;-><init>(I)V

    invoke-interface {v5, v0, v6, v7, v8}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    .line 95
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v5

    new-instance v6, Lorg/codeaurora/internal/Status;

    invoke-direct {v6, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v7, Lorg/codeaurora/internal/SignalStrength;

    invoke-direct {v7}, Lorg/codeaurora/internal/SignalStrength;-><init>()V

    invoke-interface {v1, v0, v5, v6, v7}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    .line 97
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v5

    new-instance v6, Lorg/codeaurora/internal/Status;

    invoke-direct {v6, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v7, Lorg/codeaurora/internal/NrConfigType;

    invoke-direct {v7, v3}, Lorg/codeaurora/internal/NrConfigType;-><init>(I)V

    invoke-interface {v1, v0, v5, v6, v7}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    .line 99
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v5, Lorg/codeaurora/internal/Status;

    invoke-direct {v5, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v6, Lorg/codeaurora/internal/NrIconType;

    invoke-direct {v6, v4}, Lorg/codeaurora/internal/NrIconType;-><init>(I)V

    invoke-interface {v1, v0, v3, v5, v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    .line 102
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v5, Lorg/codeaurora/internal/Status;

    invoke-direct {v5, v4}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v1, v0, v3, v5, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 104
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$202(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;Z)Z

    .line 258
    .end local v0    # "slotId":I
    .end local v2    # "token":Lorg/codeaurora/internal/Token;
    :cond_c
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
