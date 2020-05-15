.class public Lcom/android/server/wifi/ScanDetail;
.super Ljava/lang/Object;
.source "ScanDetail.java"


# instance fields
.field private volatile mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

.field private final mScanResult:Landroid/net/wifi/ScanResult;

.field private mSeen:J


# direct methods
.method public constructor <init>(Landroid/net/wifi/ScanResult;Lcom/android/server/wifi/hotspot2/NetworkDetail;)V
    .locals 4
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    .line 77
    iput-object p1, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 78
    iput-object p2, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 81
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-wide v2, v2, Landroid/net/wifi/ScanResult;->seen:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    :goto_0
    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJJ)V
    .locals 16
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "seen"    # J

    move-object/from16 v0, p0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    .line 66
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 67
    new-instance v3, Landroid/net/wifi/ScanResult;

    const-wide/16 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v4, v3

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-wide/from16 v14, p6

    invoke-direct/range {v4 .. v15}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V

    iput-object v3, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 68
    move-wide/from16 v3, p8

    iput-wide v3, v0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    .line 69
    iget-object v5, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-wide v6, v0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iput-wide v6, v5, Landroid/net/wifi/ScanResult;->seen:J

    .line 70
    iget-object v5, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const/4 v6, 0x0

    iput v6, v5, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 71
    iget-object v5, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput v6, v5, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 72
    iget-object v5, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput v6, v5, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 73
    iget-object v5, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput-wide v1, v5, Landroid/net/wifi/ScanResult;->flags:J

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;)V
    .locals 15
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "bssid"    # Ljava/lang/String;
    .param p4, "caps"    # Ljava/lang/String;
    .param p5, "level"    # I
    .param p6, "frequency"    # I
    .param p7, "tsf"    # J
    .param p9, "informationElements"    # [Landroid/net/wifi/ScanResult$InformationElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Landroid/net/wifi/WifiSsid;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJ[",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p10, "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .line 44
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    .line 45
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 46
    new-instance v14, Landroid/net/wifi/ScanResult;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHESSID()J

    move-result-wide v5

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getOsuProviders()[B

    move-result-object v8

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p7

    invoke-direct/range {v2 .. v13}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V

    iput-object v14, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    .line 50
    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-wide v3, v0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iput-wide v3, v2, Landroid/net/wifi/ScanResult;->seen:J

    .line 51
    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelWidth()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 52
    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq0()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 53
    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq1()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 54
    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    move-object/from16 v3, p9

    iput-object v3, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 55
    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    move-object/from16 v4, p10

    iput-object v4, v2, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->is80211McResponderSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-wide/16 v5, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    .line 59
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInterworking()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-wide/16 v5, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    .line 62
    :cond_1
    return-void
.end method


# virtual methods
.method public getBSSIDString()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getScanResult()Landroid/net/wifi/ScanResult;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public getSeen()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    return-wide v0
.end method

.method public propagateANQPInfo(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->complete(Ljava/util/Map;)Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 94
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;

    .line 97
    .local v0, "fne":Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;->getNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;->getNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/anqp/I18Name;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 100
    :cond_1
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 101
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/anqp/VenueNameElement;

    .line 103
    .local v2, "vne":Lcom/android/server/wifi/hotspot2/anqp/VenueNameElement;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/anqp/VenueNameElement;->getNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 104
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/anqp/VenueNameElement;->getNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/anqp/I18Name;

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    .line 107
    .end local v2    # "vne":Lcom/android/server/wifi/hotspot2/anqp/VenueNameElement;
    :cond_2
    :goto_0
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 108
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;

    .line 109
    .local v2, "osuProviders":Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;
    if-eqz v2, :cond_3

    .line 110
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/wifi/AnqpInformationElement;

    iput-object v4, v3, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 111
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    new-instance v4, Landroid/net/wifi/AnqpInformationElement;

    const v5, 0x506f9a

    const/16 v6, 0x8

    .line 113
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->getPayload()[B

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    aput-object v4, v3, v1

    .line 115
    :cond_3
    return-void
.end method

.method public setSeen()J
    .locals 3

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    .line 159
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-wide v1, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iput-wide v1, v0, Landroid/net/wifi/ScanResult;->seen:J

    .line 160
    iget-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    return-wide v0
.end method

.method public toKeyString()Ljava/lang/String;
    .locals 6

    .line 137
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 138
    .local v0, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toKeyString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 141
    :cond_0
    const-string v1, "\'%s\':%012x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 143
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 141
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 166
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "\'%s\'/%012x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 168
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    .line 166
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v3, "\'%s\'/----"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
