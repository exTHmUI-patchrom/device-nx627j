.class Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;
.super Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback$Stub;
.source "SupplicantP2pIfaceCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SupplicantVendorP2pIfaceCallback "


# instance fields
.field private final mInterface:Ljava/lang/String;

.field private final mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/wifi/p2p/WifiP2pMonitor;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "monitor"    # Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    .line 576
    invoke-direct {p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback$Stub;-><init>()V

    .line 577
    iput-object p1, p0, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->mInterface:Ljava/lang/String;

    .line 578
    iput-object p2, p0, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    .line 579
    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 583
    const-string v0, "SupplicantVendorP2pIfaceCallback "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void
.end method

.method private parseAttribute(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .line 653
    .local p1, "ip":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private parseInteger(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .line 657
    .local p1, "ip":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onR2DeviceFound([B[B[BLjava/lang/String;SBI[B[B)V
    .locals 17
    .param p1, "srcAddress"    # [B
    .param p2, "p2pDeviceAddress"    # [B
    .param p3, "primaryDeviceType"    # [B
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "configMethods"    # S
    .param p6, "deviceCapabilities"    # B
    .param p7, "groupCapabilities"    # I
    .param p8, "wfdDeviceInfo"    # [B
    .param p9, "wfdR2DeviceInfo"    # [B

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    .line 610
    move-object/from16 v5, p9

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    move-object v6, v0

    .line 611
    .local v6, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iput-object v3, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 613
    if-nez v3, :cond_0

    .line 614
    const-string v0, "SupplicantVendorP2pIfaceCallback "

    const-string v7, "Missing device name."

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void

    .line 619
    :cond_0
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 623
    nop

    .line 626
    :try_start_1
    new-instance v0, Ljava/lang/String;

    array-length v7, v2

    const/4 v8, 0x0

    invoke-static {v2, v8, v7}, Llibcore/util/HexEncoding;->encode([BII)[C

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    iput-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 631
    nop

    .line 633
    move/from16 v7, p6

    iput v7, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 634
    move/from16 v9, p7

    iput v9, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 635
    move/from16 v10, p5

    iput v10, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 636
    const/4 v0, 0x3

    iput v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 638
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v4, :cond_1

    array-length v13, v4

    const/4 v14, 0x6

    if-lt v13, v14, :cond_1

    .line 639
    new-instance v13, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    aget-byte v14, v4, v8

    shl-int/lit8 v14, v14, 0x8

    aget-byte v15, v4, v12

    add-int/2addr v14, v15

    aget-byte v15, v4, v11

    shl-int/lit8 v15, v15, 0x8

    aget-byte v0, v4, v0

    add-int/2addr v15, v0

    const/4 v0, 0x4

    aget-byte v0, v4, v0

    shl-int/lit8 v0, v0, 0x8

    const/16 v16, 0x5

    aget-byte v16, v4, v16

    add-int v0, v0, v16

    invoke-direct {v13, v14, v15, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(III)V

    iput-object v13, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 644
    :cond_1
    if-eqz v5, :cond_2

    array-length v0, v5

    if-lt v0, v11, :cond_2

    .line 645
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    aget-byte v8, v5, v8

    shl-int/lit8 v8, v8, 0x8

    aget-byte v11, v5, v12

    add-int/2addr v8, v11

    invoke-virtual {v0, v8}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdR2Device(I)V

    .line 648
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "R2 Device discovered on "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "R2 Info:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 649
    iget-object v0, v1, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v8, v1, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v8, v6}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pDeviceFound(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 650
    return-void

    .line 628
    :catch_0
    move-exception v0

    move/from16 v10, p5

    move/from16 v7, p6

    move/from16 v9, p7

    .line 629
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "SupplicantVendorP2pIfaceCallback "

    const-string v11, "Could not encode device primary type."

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    return-void

    .line 620
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move/from16 v10, p5

    move/from16 v7, p6

    move/from16 v9, p7

    .line 621
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v8, "SupplicantVendorP2pIfaceCallback "

    const-string v11, "Could not decode device address."

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    return-void
.end method

.method public onVendorExtensionFound(Ljava/util/ArrayList;B)V
    .locals 11
    .param p2, "type"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;B)V"
        }
    .end annotation

    .line 670
    .local p1, "infoAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Printing received array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, "miceFound":Z
    if-nez p2, :cond_5

    .line 673
    new-instance v1, Landroid/net/wifi/p2p/WifiWscVendorInfo;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiWscVendorInfo;-><init>()V

    .line 674
    .local v1, "info":Landroid/net/wifi/p2p/WifiWscVendorInfo;
    const/4 v2, 0x0

    .line 675
    .local v2, "length":I
    const/4 v3, 0x0

    .line 676
    .local v3, "attribute":I
    const/4 v4, 0x6

    new-array v5, v4, [B

    .line 677
    .local v5, "macByteArray":[B
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_0

    .line 678
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v5, v7

    .line 677
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 680
    .end local v7    # "i":I
    :cond_0
    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mP2pMacAddress:Ljava/lang/String;

    .line 681
    const/4 v4, 0x6

    .line 682
    .local v4, "pos":I
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    if-nez v7, :cond_3

    add-int/lit8 v7, v4, 0x1

    .line 683
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    add-int/lit8 v7, v4, 0x2

    .line 684
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    const/16 v9, 0x37

    if-ne v7, v9, :cond_3

    .line 686
    const-string v7, "WSC Vendor extension found"

    invoke-static {v7}, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 687
    add-int/lit8 v4, v4, 0x3

    .line 690
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 691
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p1, v4, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->parseAttribute(Ljava/util/List;)I

    move-result v3

    .line 692
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "printing parseAttribute return value"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 693
    add-int/lit8 v4, v4, 0x2

    .line 694
    packed-switch v3, :pswitch_data_0

    .line 734
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p1, v4, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->parseAttribute(Ljava/util/List;)I

    move-result v2

    .line 735
    add-int/lit8 v7, v2, 0x2

    add-int/2addr v4, v7

    .line 736
    goto :goto_1

    .line 722
    :pswitch_0
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p1, v4, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->parseAttribute(Ljava/util/List;)I

    move-result v2

    .line 723
    add-int/lit8 v4, v4, 0x2

    .line 724
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [B

    .line 725
    .local v7, "byteArray1":[B
    move v9, v6

    .local v9, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 726
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    aput-byte v10, v7, v9

    .line 725
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 728
    .end local v9    # "i":I
    :cond_1
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v9}, Landroid/net/wifi/p2p/WifiWscVendorInfo;->setIpAddress(Ljava/lang/String;)V

    .line 729
    add-int/2addr v4, v2

    .line 730
    const/4 v0, 0x1

    .line 731
    goto :goto_1

    .line 716
    .end local v7    # "byteArray1":[B
    :pswitch_1
    add-int/lit8 v7, v4, 0x4

    invoke-virtual {p1, v4, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->parseInteger(Ljava/util/List;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/net/wifi/p2p/WifiWscVendorInfo;->setConnectionPreference(I)V

    .line 717
    add-int/lit8 v4, v4, 0x6

    .line 718
    const/4 v0, 0x1

    .line 719
    goto :goto_1

    .line 704
    :pswitch_2
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p1, v4, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->parseAttribute(Ljava/util/List;)I

    move-result v2

    .line 705
    add-int/lit8 v4, v4, 0x2

    .line 706
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [B

    .line 707
    .local v7, "byteArray":[B
    move v9, v6

    .restart local v9    # "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 708
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    aput-byte v10, v7, v9

    .line 707
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 710
    .end local v9    # "i":I
    :cond_2
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v9}, Landroid/net/wifi/p2p/WifiWscVendorInfo;->setHostName(Ljava/lang/String;)V

    .line 711
    add-int/2addr v4, v2

    .line 712
    const/4 v0, 0x1

    .line 713
    goto/16 :goto_1

    .line 696
    .end local v7    # "byteArray":[B
    :pswitch_3
    add-int/lit8 v4, v4, 0x2

    .line 697
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-virtual {v1, v7}, Landroid/net/wifi/p2p/WifiWscVendorInfo;->setCapability(B)V

    .line 698
    add-int/2addr v4, v8

    .line 699
    const/4 v0, 0x1

    .line 700
    goto/16 :goto_1

    .line 742
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WSC Device discovered Info : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 743
    if-eqz v0, :cond_4

    .line 744
    iget-object v6, p0, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastWSCVendorIEFound(Ljava/lang/String;Landroid/net/wifi/p2p/WifiWscVendorInfo;)V

    .line 745
    .end local v1    # "info":Landroid/net/wifi/p2p/WifiWscVendorInfo;
    .end local v2    # "length":I
    .end local v3    # "attribute":I
    .end local v4    # "pos":I
    .end local v5    # "macByteArray":[B
    :cond_4
    goto :goto_4

    .line 747
    :cond_5
    const-string v1, "Unsupported vendor info"

    invoke-static {v1}, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 749
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2001
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
