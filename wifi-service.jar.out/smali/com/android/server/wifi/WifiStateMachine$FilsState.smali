.class Lcom/android/server/wifi/WifiStateMachine$FilsState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilsState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 6224
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 6228
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6229
    const-string v0, "WifiStateMachine"

    const-string v1, "Filsstate enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6231
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 6232
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpClient;

    invoke-static {}, Landroid/net/ip/IpClient;->buildProvisioningConfiguration()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    move-result-object v0

    .line 6233
    invoke-virtual {v0}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->withPreDhcpAction()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 6234
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->getApfCapabilities(Ljava/lang/String;)Landroid/net/apf/ApfCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    move-result-object v0

    .line 6235
    invoke-virtual {v0}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v0

    .line 6236
    .local v0, "prov":Landroid/net/ip/IpClient$ProvisioningConfiguration;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mRapidCommit:Z

    .line 6237
    iput-boolean v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mDiscoverSent:Z

    .line 6238
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/ip/IpClient;->startProvisioning(Landroid/net/ip/IpClient$ProvisioningConfiguration;)V

    .line 6239
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6240
    return-void
.end method

.method public exit()V
    .locals 0

    .line 6340
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 6244
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->access$1800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 6246
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 6333
    return v2

    .line 6251
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/IpClient;->completedPreDhcpAction()V

    .line 6252
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->buildDiscoverWithRapidCommitPacket()V

    .line 6254
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    .line 6256
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$2900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wifi/WifiNative;->connectToNetwork(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6257
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(ILandroid/net/wifi/WifiConfiguration;)V

    .line 6258
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/Clock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6502(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 6259
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$6302(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 6260
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_2

    .line 6262
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to connect to FILS network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6263
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v5, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 6266
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x25002

    invoke-static {v0, p1, v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 6268
    goto/16 :goto_2

    .line 6320
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 6321
    goto/16 :goto_2

    .line 6248
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->handlePreFilsDhcpSetup()V

    .line 6249
    goto/16 :goto_2

    .line 6272
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    .line 6317
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$11200(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6318
    return v2

    .line 6274
    :goto_0
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6275
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network connection established with FILS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$6700(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6276
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6277
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8002(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6278
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 6285
    .local v0, "reasonCode":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 6286
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_4

    .line 6287
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/ExtendedWifiInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ExtendedWifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 6288
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/ExtendedWifiInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ExtendedWifiInfo;->setNetworkId(I)V

    .line 6293
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->trackBssid(Ljava/lang/String;ZILandroid/net/wifi/WifiConfiguration;)Z

    .line 6296
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v3, :cond_3

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 6298
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    .line 6297
    invoke-static {v3}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimEapMethod(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6299
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 6300
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->getEapAnonymousIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6301
    .local v3, "anonymousIdentity":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 6302
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_1

    .line 6304
    :cond_2
    const-string v4, "WifiStateMachine"

    const-string v5, "Failed to get updated anonymous identity from supplicant, reset it in WifiConfiguration."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6306
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 6308
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-virtual {v4, v2, v5}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    .line 6310
    .end local v3    # "anonymousIdentity":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6311
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 6329
    .end local v0    # "reasonCode":I
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$11200(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6330
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 6331
    goto :goto_2

    .line 6323
    :sswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 6324
    goto :goto_2

    .line 6326
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 6327
    nop

    .line 6335
    :cond_4
    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        0x2008a -> :sswitch_8
        0x200c8 -> :sswitch_7
        0x200c9 -> :sswitch_6
        0x24003 -> :sswitch_5
        0x24007 -> :sswitch_4
        0x2402b -> :sswitch_4
        0x2403f -> :sswitch_3
        0x30003 -> :sswitch_2
        0x30004 -> :sswitch_1
        0x30006 -> :sswitch_0
    .end sparse-switch
.end method
