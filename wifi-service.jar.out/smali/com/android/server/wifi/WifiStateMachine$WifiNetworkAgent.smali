.class Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiNetworkAgent"
.end annotation


# instance fields
.field private mLastNetworkStatus:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V
    .locals 10
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "ni"    # Landroid/net/NetworkInfo;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "lp"    # Landroid/net/LinkProperties;
    .param p8, "score"    # I
    .param p9, "misc"    # Landroid/net/NetworkMisc;

    move-object v9, p0

    .line 5111
    move-object v0, p1

    iput-object v0, v9, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 5112
    move-object v0, v9

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    .line 5114
    const/4 v0, -0x1

    iput v0, v9, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->mLastNetworkStatus:I

    .line 5113
    return-void
.end method


# virtual methods
.method protected networkStatus(ILjava/lang/String;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;

    .line 5128
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eq p0, v0, :cond_0

    return-void

    .line 5129
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->mLastNetworkStatus:I

    if-ne p1, v0, :cond_1

    return-void

    .line 5130
    :cond_1
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->mLastNetworkStatus:I

    .line 5131
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    .line 5132
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNetworkAgent -> Wifi networkStatus invalid, score="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 5134
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/ExtendedWifiInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wifi/ExtendedWifiInfo;->score:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5133
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    .line 5136
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->unwantedNetwork(I)V

    goto :goto_0

    .line 5137
    :cond_3
    if-ne p1, v1, :cond_5

    .line 5138
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiNetworkAgent -> Wifi networkStatus valid, score= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 5140
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/ExtendedWifiInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wifi/ExtendedWifiInfo;->score:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5139
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    .line 5142
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(I)V

    .line 5143
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->doNetworkStatus(I)V

    .line 5145
    :cond_5
    :goto_0
    return-void
.end method

.method protected preventAutomaticReconnect()V
    .locals 2

    .line 5208
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eq p0, v0, :cond_0

    return-void

    .line 5209
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->unwantedNetwork(I)V

    .line 5210
    return-void
.end method

.method protected saveAcceptUnvalidated(Z)V
    .locals 2
    .param p1, "accept"    # Z

    .line 5149
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eq p0, v0, :cond_0

    return-void

    .line 5150
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20099

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 5151
    return-void
.end method

.method protected setSignalStrengthThresholds([I)V
    .locals 8
    .param p1, "thresholds"    # [I

    .line 5177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received signal strength thresholds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    .line 5178
    array-length v0, p1

    const v1, 0x200a3

    if-nez v0, :cond_0

    .line 5179
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 5180
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/ExtendedWifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/ExtendedWifiInfo;->getRssi()I

    move-result v2

    .line 5179
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 5181
    return-void

    .line 5183
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 5184
    .local v0, "rssiVals":[I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    const/16 v3, -0x80

    aput v3, v0, v2

    .line 5185
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    const/16 v4, 0x7f

    aput v4, v0, v2

    .line 5186
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 5187
    array-length v2, v0

    new-array v2, v2, [B

    .line 5188
    .local v2, "rssiRange":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_2

    .line 5189
    aget v6, v0, v5

    .line 5190
    .local v6, "val":I
    if-gt v6, v4, :cond_1

    if-lt v6, v3, :cond_1

    .line 5191
    int-to-byte v7, v6

    aput-byte v7, v2, v5

    .line 5188
    .end local v6    # "val":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5193
    .restart local v6    # "val":I
    :cond_1
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal value "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for RSSI thresholds: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5194
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5193
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5195
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 5196
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/ExtendedWifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/ExtendedWifiInfo;->getRssi()I

    move-result v4

    .line 5195
    invoke-virtual {v3, v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 5197
    return-void

    .line 5201
    .end local v5    # "i":I
    .end local v6    # "val":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8902(Lcom/android/server/wifi/WifiStateMachine;[B)[B

    .line 5202
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x200a2

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 5203
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/ExtendedWifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/ExtendedWifiInfo;->getRssi()I

    move-result v4

    .line 5202
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 5204
    return-void
.end method

.method protected startPacketKeepalive(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 5155
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const v4, 0x200a0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 5157
    return-void
.end method

.method protected stopPacketKeepalive(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 5161
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const v4, 0x200a1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 5163
    return-void
.end method

.method protected unwanted()V
    .locals 2

    .line 5119
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eq p0, v0, :cond_0

    return-void

    .line 5120
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiNetworkAgent -> Wifi unwanted score "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/ExtendedWifiInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wifi/ExtendedWifiInfo;->score:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    .line 5123
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->unwantedNetwork(I)V

    .line 5124
    return-void
.end method
