.class public Lcom/android/server/wifi/p2p/WifiP2pNative;
.super Ljava/lang/Object;
.source "WifiP2pNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;,
        Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceAvailableListenerInternal;
    }
.end annotation


# static fields
.field private static final CONNECT_TO_SUPPLICANT_MAX_SAMPLES:I = 0x32

.field private static final CONNECT_TO_SUPPLICANT_SAMPLING_INTERVAL_MS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "WifiP2pNative"


# instance fields
.field private final mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

.field private mIWifiP2pIface:Landroid/hardware/wifi/V1_0/IWifiP2pIface;

.field private mInterfaceAvailableListener:Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceAvailableListenerInternal;

.field private mInterfaceDestroyedListener:Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;

.field private final mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0
    .param p1, "p2pIfaceHal"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;
    .param p2, "halDeviceManager"    # Lcom/android/server/wifi/HalDeviceManager;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    .line 105
    iput-object p2, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/p2p/WifiP2pNative;)Landroid/hardware/wifi/V1_0/IWifiP2pIface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pNative;

    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mIWifiP2pIface:Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/wifi/p2p/WifiP2pNative;Landroid/hardware/wifi/V1_0/IWifiP2pIface;)Landroid/hardware/wifi/V1_0/IWifiP2pIface;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pNative;
    .param p1, "x1"    # Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    .line 38
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mIWifiP2pIface:Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/p2p/WifiP2pNative;)Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pNative;

    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    return-object v0
.end method

.method public static synthetic lambda$registerInterfaceAvailableListener$0(Lcom/android/server/wifi/p2p/WifiP2pNative;Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 160
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/HalDeviceManager;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "WifiP2pNative"

    const-string v1, "Registering for interface available listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mInterfaceAvailableListener:Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceAvailableListenerInternal;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wifi/HalDeviceManager;->registerInterfaceAvailableForRequestListener(ILcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;Landroid/os/Handler;)V

    .line 165
    :cond_0
    return-void
.end method

.method private waitForSupplicantConnection()Z
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->isInitializationStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    .line 124
    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->initialize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    return v1

    .line 127
    :cond_0
    move v0, v1

    .line 128
    .local v0, "connectTries":I
    :goto_0
    add-int/lit8 v2, v0, 0x1

    .local v2, "connectTries":I
    const/16 v3, 0x32

    if-ge v0, v3, :cond_2

    .line 130
    .end local v0    # "connectTries":I
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->isInitializationComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_1
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_1
    goto :goto_2

    .line 135
    :catch_0
    move-exception v0

    goto :goto_1

    .line 127
    :goto_2
    move v0, v2

    goto :goto_0

    .line 138
    :cond_2
    return v1
.end method


# virtual methods
.method public closeSupplicantConnection()V
    .locals 0

    .line 146
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 0
    .param p1, "verbose"    # I

    .line 112
    return-void
.end method

.method public getGroupCapability(Ljava/lang/String;)I
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 630
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getGroupCapability(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNfcHandoverRequest()Ljava/lang/String;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getNfcHandoverRequest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNfcHandoverSelect()Ljava/lang/String;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getNfcHandoverSelect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getP2pClientList(I)Ljava/lang/String;
    .locals 1
    .param p1, "netId"    # I

    .line 745
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getClientList(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initiatorReportNfcHandover(Ljava/lang/String;)Z
    .locals 1
    .param p1, "selectMessage"    # Ljava/lang/String;

    .line 726
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->initiatorReportNfcHandover(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pCancelConnect()Z
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->cancelConnect()Z

    move-result v0

    return v0
.end method

.method public p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p2, "joinExistingGroup"    # Z

    .line 490
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->connect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pExtListen(ZII)Z
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "period"    # I
    .param p3, "interval"    # I

    .line 445
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->configureExtListen(ZII)Z

    move-result v0

    return v0
.end method

.method public p2pFind()Z
    .locals 1

    .line 405
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pNative;->p2pFind(I)Z

    move-result v0

    return v0
.end method

.method public p2pFind(I)Z
    .locals 1
    .param p1, "timeout"    # I

    .line 417
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->find(I)Z

    move-result v0

    return v0
.end method

.method public p2pFlush()Z
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->flush()Z

    move-result v0

    return v0
.end method

.method public p2pGetDeviceAddress()Ljava/lang/String;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 609
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGroupAdd(I)Z
    .locals 2
    .param p1, "netId"    # I

    .line 543
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->groupAdd(IZ)Z

    move-result v0

    return v0
.end method

.method public p2pGroupAdd(Z)Z
    .locals 1
    .param p1, "persistent"    # Z

    .line 530
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->groupAdd(Z)Z

    move-result v0

    return v0
.end method

.method public p2pGroupRemove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->groupRemove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z
    .locals 1
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .line 586
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->invite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pListNetworks(Landroid/net/wifi/p2p/WifiP2pGroupList;)Z
    .locals 1
    .param p1, "groups"    # Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 239
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->loadGroups(Landroid/net/wifi/p2p/WifiP2pGroupList;)Z

    move-result v0

    return v0
.end method

.method public p2pProvisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 518
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->provisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v0

    return v0
.end method

.method public p2pReinvoke(ILjava/lang/String;)Z
    .locals 1
    .param p1, "netId"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->reinvoke(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pReject(Ljava/lang/String;)Z
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->reject(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pServDiscCancelReq(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 687
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->cancelServiceDiscovery(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pServDiscReq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->requestServiceDiscovery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pServiceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 1
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 641
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->serviceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 1
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 652
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->serviceRemove(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public p2pServiceFlush()Z
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->serviceFlush()Z

    move-result v0

    return v0
.end method

.method public p2pSetChannel(II)Z
    .locals 1
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    .line 463
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setListenChannel(II)Z

    move-result v0

    return v0
.end method

.method public p2pStopFind()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->stopFind()Z

    move-result v0

    return v0
.end method

.method public registerInterfaceAvailableListener(Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 156
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceAvailableListenerInternal;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceAvailableListenerInternal;-><init>(Lcom/android/server/wifi/p2p/WifiP2pNative;Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mInterfaceAvailableListener:Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceAvailableListenerInternal;

    .line 159
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    new-instance v1, Lcom/android/server/wifi/p2p/-$$Lambda$WifiP2pNative$OugPqsliuKv73AxYwflB8JKX3Gg;

    invoke-direct {v1, p0, p2}, Lcom/android/server/wifi/p2p/-$$Lambda$WifiP2pNative$OugPqsliuKv73AxYwflB8JKX3Gg;-><init>(Lcom/android/server/wifi/p2p/WifiP2pNative;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wifi/HalDeviceManager;->registerStatusListener(Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V

    .line 166
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/HalDeviceManager;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mInterfaceAvailableListener:Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceAvailableListenerInternal;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/wifi/HalDeviceManager;->registerInterfaceAvailableForRequestListener(ILcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;Landroid/os/Handler;)V

    .line 170
    :cond_0
    return-void
.end method

.method public removeP2pNetwork(I)Z
    .locals 1
    .param p1, "netId"    # I

    .line 284
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->removeNetwork(I)Z

    move-result v0

    return v0
.end method

.method public responderReportNfcHandover(Ljava/lang/String;)Z
    .locals 1
    .param p1, "requestMessage"    # Ljava/lang/String;

    .line 735
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->responderReportNfcHandover(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveConfig()Z
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->saveConfig()Z

    move-result v0

    return v0
.end method

.method public setConfigMethods(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cfg"    # Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setWpsConfigMethods(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setWpsDeviceName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMiracastMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 699
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setMiracastMode(I)Z

    .line 700
    return-void
.end method

.method public setP2pClientList(ILjava/lang/String;)Z
    .locals 1
    .param p1, "netId"    # I
    .param p2, "list"    # Ljava/lang/String;

    .line 756
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setClientList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setP2pDeviceName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setWpsDeviceName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setP2pDeviceType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setWpsDeviceType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setP2pGroupIdle(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "time"    # I

    .line 341
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setGroupIdle(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setP2pPowerSave(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 353
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setPowerSave(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setP2pSsidPostfix(Ljava/lang/String;)Z
    .locals 1
    .param p1, "postfix"    # Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setSsidPostfix(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWfdDeviceInfo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hex"    # Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setWfdDeviceInfo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWfdEnable(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .line 363
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->enableWfd(Z)Z

    move-result v0

    return v0
.end method

.method public setWfdR2DeviceInfo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hex"    # Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setWfdR2DeviceInfo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWscVendorIe(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 395
    .local p1, "hex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setWscVendorIe(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public setupInterface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Ljava/lang/String;
    .locals 4
    .param p1, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 181
    const-string v0, "WifiP2pNative"

    const-string v1, "Setup P2P interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mIWifiP2pIface:Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    if-nez v0, :cond_4

    .line 183
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;-><init>(Lcom/android/server/wifi/p2p/WifiP2pNative;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mInterfaceDestroyedListener:Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;

    .line 184
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mInterfaceDestroyedListener:Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wifi/HalDeviceManager;->createP2pIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mIWifiP2pIface:Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    .line 185
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mIWifiP2pIface:Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 186
    const-string v0, "WifiP2pNative"

    const-string v2, "Failed to create P2p iface in HalDeviceManager"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-object v1

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pNative;->waitForSupplicantConnection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    const-string v0, "WifiP2pNative"

    const-string v2, "Failed to connect to supplicant"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pNative;->teardownInterface()V

    .line 192
    return-object v1

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mIWifiP2pIface:Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    invoke-static {v0}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "ifaceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    const-string v2, "WifiP2pNative"

    const-string v3, "Failed to get p2p iface name"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pNative;->teardownInterface()V

    .line 198
    return-object v1

    .line 200
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setupIface(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 201
    const-string v2, "WifiP2pNative"

    const-string v3, "Failed to setup P2p iface in supplicant"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pNative;->teardownInterface()V

    .line 203
    return-object v1

    .line 205
    :cond_3
    const-string v1, "WifiP2pNative"

    const-string v2, "P2P interface setup completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v0    # "ifaceName":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mIWifiP2pIface:Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    invoke-static {v0}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public teardownInterface()V
    .locals 3

    .line 214
    const-string v0, "WifiP2pNative"

    const-string v1, "Teardown P2P interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mIWifiP2pIface:Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mIWifiP2pIface:Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    invoke-static {v0}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "ifaceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mIWifiP2pIface:Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/HalDeviceManager;->removeIface(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    .line 218
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mInterfaceDestroyedListener:Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;->teardownAndInvalidate(Ljava/lang/String;)V

    .line 219
    const-string v1, "WifiP2pNative"

    const-string v2, "P2P interface teardown completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v0    # "ifaceName":Ljava/lang/String;
    :cond_0
    return-void
.end method
