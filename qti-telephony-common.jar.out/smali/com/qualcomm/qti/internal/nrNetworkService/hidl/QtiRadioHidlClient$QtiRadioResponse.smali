.class public Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;
.super Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;
.source "QtiRadioHidlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QtiRadioResponse"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "QtiRadioResponse"


# instance fields
.field mSlotId:I

.field final synthetic this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p2, "slotId"    # I

    .line 99
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;-><init>()V

    .line 100
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput p2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->mSlotId:I

    .line 102
    return-void
.end method


# virtual methods
.method public getAtrResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "qtiResponseInfo"    # Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    .param p2, "atr"    # Ljava/lang/String;

    .line 343
    const-string v0, "QtiRadioResponse"

    const-string v1, "getAtrResponse: NOP!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method public on5gConfigInfoResponse(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "configType"    # I

    .line 247
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gConfigInfoResponse: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ConfigType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/internal/Token;

    .line 252
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$700(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/NrConfigType;

    move-result-object v1

    .line 254
    .local v1, "nrConfigType":Lorg/codeaurora/internal/NrConfigType;
    const-string v2, "QtiRadioResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on5gConfigInfoResponse:  NrConfigType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->mSlotId:I

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/Status;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    .line 257
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .end local v0    # "token":Lorg/codeaurora/internal/Token;
    .end local v1    # "nrConfigType":Lorg/codeaurora/internal/NrConfigType;
    goto :goto_0

    .line 259
    :cond_0
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gConfigInfoResponse: No previous request found for serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void
.end method

.method public on5gStatusResponse(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "enabled"    # I

    .line 160
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gStatusResponse: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/internal/Token;

    .line 165
    .local v0, "token":Lorg/codeaurora/internal/Token;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 167
    .local v1, "isEnabled":Z
    :goto_0
    const-string v2, "QtiRadioResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on5gStatusResponse: enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->mSlotId:I

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/Status;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 170
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v0    # "token":Lorg/codeaurora/internal/Token;
    .end local v1    # "isEnabled":Z
    goto :goto_1

    .line 172
    :cond_1
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gStatusResponse: No previous request found for serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_1
    return-void
.end method

.method public onDisable5gResponse(III)V
    .locals 6
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "status"    # I

    .line 124
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisable5gResponse: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/internal/Token;

    .line 129
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Z

    move-result v1

    .line 130
    .local v1, "enabled":Z
    const-string v2, "QtiRadioResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisable5gResponse: enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->mSlotId:I

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/Status;

    move-result-object v4

    xor-int/lit8 v5, v1, 0x1

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 133
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .end local v0    # "token":Lorg/codeaurora/internal/Token;
    .end local v1    # "enabled":Z
    goto :goto_0

    .line 135
    :cond_0
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisable5gResponse: No previous request found for serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-void
.end method

.method public onEnable5gOnlyResponse(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "status"    # I

    .line 142
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnable5gOnlyResponse: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/internal/Token;

    .line 147
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Z

    move-result v1

    .line 148
    .local v1, "enabled":Z
    const-string v2, "QtiRadioResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEnable5gOnlyResponse: enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->mSlotId:I

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/Status;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 151
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .end local v0    # "token":Lorg/codeaurora/internal/Token;
    .end local v1    # "enabled":Z
    goto :goto_0

    .line 153
    :cond_0
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnable5gOnlyResponse: No previous request found for serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void
.end method

.method public onEnable5gResponse(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "status"    # I

    .line 106
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnable5gResponse: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/internal/Token;

    .line 110
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Z

    move-result v1

    .line 111
    .local v1, "enabled":Z
    const-string v2, "QtiRadioResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEnable5gResponse: enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->mSlotId:I

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/Status;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 115
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v0    # "token":Lorg/codeaurora/internal/Token;
    .end local v1    # "enabled":Z
    goto :goto_0

    .line 117
    :cond_0
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnable5gResponse: No previous request found for serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void
.end method

.method public onEnableEndcResponse(III)V
    .locals 4
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "status"    # I

    .line 308
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnableEndcResponse: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/internal/Token;

    .line 312
    .local v0, "token":Lorg/codeaurora/internal/Token;
    const-string v1, "QtiRadioResponse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnableEndcResponse: status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->mSlotId:I

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v3, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/Status;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onEnableEndc(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    .line 315
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .end local v0    # "token":Lorg/codeaurora/internal/Token;
    goto :goto_0

    .line 317
    :cond_0
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnableEndcResponse: No previous request found for serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    return-void
.end method

.method public onEndcStatusResponse(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "enabled"    # I

    .line 324
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEndcStatusResponse: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/internal/Token;

    .line 329
    .local v0, "token":Lorg/codeaurora/internal/Token;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 331
    .local v1, "isEnabled":Z
    :goto_0
    const-string v2, "QtiRadioResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEndcStatusResponse: enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->mSlotId:I

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/Status;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onEndcStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 334
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .end local v0    # "token":Lorg/codeaurora/internal/Token;
    .end local v1    # "isEnabled":Z
    goto :goto_1

    .line 336
    :cond_1
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEndcStatusResponse: No previous request found for serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_1
    return-void
.end method

.method public onNrBearerAllocationResponse(III)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "bearerStatus"    # I

    .line 218
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrBearerAllocationResponse: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bearerStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->onNrBearerAllocationResponse_2_1(III)V

    .line 221
    return-void
.end method

.method public onNrBearerAllocationResponse_2_1(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "bearerStatus"    # I

    .line 198
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrBearerAllocationResponse: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bearerStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/internal/Token;

    .line 203
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$500(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/BearerAllocationStatus;

    move-result-object v1

    .line 205
    .local v1, "bStatus":Lorg/codeaurora/internal/BearerAllocationStatus;
    const-string v2, "QtiRadioResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNrBearerAllocationResponse:  allocated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->mSlotId:I

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/Status;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    .line 209
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .end local v0    # "token":Lorg/codeaurora/internal/Token;
    .end local v1    # "bStatus":Lorg/codeaurora/internal/BearerAllocationStatus;
    goto :goto_0

    .line 211
    :cond_0
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrBearerAllocationResponse: No previous request found for serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    return-void
.end method

.method public onNrDcParamResponse(IILvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "dcParam"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    .line 180
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrDcParamResponse: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dcParam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/internal/Token;

    .line 185
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$400(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)Lorg/codeaurora/internal/DcParam;

    move-result-object v1

    .line 186
    .local v1, "aidlDcParam":Lorg/codeaurora/internal/DcParam;
    const-string v2, "QtiRadioResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNrDcParamResponse:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->mSlotId:I

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/Status;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    .line 189
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v0    # "token":Lorg/codeaurora/internal/Token;
    .end local v1    # "aidlDcParam":Lorg/codeaurora/internal/DcParam;
    goto :goto_0

    .line 191
    :cond_0
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrDcParamResponse: No previous request found for serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return-void
.end method

.method public onNrIconTypeResponse(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "iconType"    # I

    .line 267
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrIconTypeResponse: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " iconType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/internal/Token;

    .line 272
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$800(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/NrIconType;

    move-result-object v1

    .line 274
    .local v1, "nrIconType":Lorg/codeaurora/internal/NrIconType;
    const-string v2, "QtiRadioResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNrIconTypeResponse:  NrIconType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->mSlotId:I

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/Status;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    .line 277
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .end local v0    # "token":Lorg/codeaurora/internal/Token;
    .end local v1    # "nrIconType":Lorg/codeaurora/internal/NrIconType;
    goto :goto_0

    .line 279
    :cond_0
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrIconTypeResponse: No previous request found for serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    return-void
.end method

.method public onSignalStrengthResponse(IILvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "signalStrength"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    .line 288
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthResponse: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " signalStrength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/internal/Token;

    .line 293
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)Lorg/codeaurora/internal/SignalStrength;

    move-result-object v1

    .line 295
    .local v1, "aidlSignalStrength":Lorg/codeaurora/internal/SignalStrength;
    const-string v2, "QtiRadioResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSignalStrengthResponse:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->mSlotId:I

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/Status;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    .line 299
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .end local v0    # "token":Lorg/codeaurora/internal/Token;
    .end local v1    # "aidlSignalStrength":Lorg/codeaurora/internal/SignalStrength;
    goto :goto_0

    .line 301
    :cond_0
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthResponse: No previous request found for serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_0
    return-void
.end method

.method public onUpperLayerIndInfoResponse(IILvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "uliInfo"    # Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;

    .line 227
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpperLayerIndInfoResponse: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " UpperLayerIndInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/internal/Token;

    .line 232
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$600(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)Lorg/codeaurora/internal/UpperLayerIndInfo;

    move-result-object v1

    .line 234
    .local v1, "upperLayerInfo":Lorg/codeaurora/internal/UpperLayerIndInfo;
    const-string v2, "QtiRadioResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpperLayerIndInfoResponse:  upperLayerInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->mSlotId:I

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/Status;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    .line 237
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .end local v0    # "token":Lorg/codeaurora/internal/Token;
    .end local v1    # "upperLayerInfo":Lorg/codeaurora/internal/UpperLayerIndInfo;
    goto :goto_0

    .line 239
    :cond_0
    const-string v0, "QtiRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpperLayerIndInfoResponse: No previous request found for serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return-void
.end method

.method public sendCdmaSmsResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 2
    .param p1, "qtiResponseInfo"    # Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .line 349
    const-string v0, "QtiRadioResponse"

    const-string v1, "sendCdmaSmsResponse: NOP!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void
.end method
