.class public Lcom/android/server/wifi/util/ScanResultUtil;
.super Ljava/lang/Object;
.source "ScanResultUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNetworkFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 168
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 169
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/util/ScanResultUtil;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 170
    invoke-static {p0, v0}, Lcom/android/server/wifi/util/ScanResultUtil;->setAllowedKeyManagementFromScanResult(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)V

    .line 171
    return-object v0
.end method

.method public static createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ssid"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpScanResults(Ljava/io/PrintWriter;Ljava/util/List;J)V
    .locals 17
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "nowMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;J)V"
        }
    .end annotation

    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    move-object/from16 v0, p0

    .line 214
    if-eqz p1, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 215
    const-string v1, "    BSSID              Frequency      RSSI           Age(sec)     SSID                                 Flags"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 218
    .local v2, "r":Landroid/net/wifi/ScanResult;
    iget-wide v3, v2, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 220
    .local v3, "timeStampMs":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gtz v5, :cond_0

    .line 221
    const-string v5, "___?___"

    .local v5, "age":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 222
    .end local v5    # "age":Ljava/lang/String;
    :cond_0
    cmp-long v5, p2, v3

    if-gez v5, :cond_1

    .line 223
    const-string v5, "  0.000"

    goto :goto_1

    .line 224
    :cond_1
    const-wide/32 v8, 0xf4240

    sub-long v8, p2, v8

    cmp-long v5, v3, v8

    if-gez v5, :cond_2

    .line 225
    const-string v5, ">1000.0"

    goto :goto_1

    .line 227
    :cond_2
    const-string v5, "%3.3f"

    new-array v8, v6, [Ljava/lang/Object;

    sub-long v9, p2, v3

    long-to-double v9, v9

    const-wide v11, 0x408f400000000000L    # 1000.0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 229
    .restart local v5    # "age":Ljava/lang/String;
    :goto_2
    iget-object v8, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v8, :cond_3

    const-string v8, ""

    goto :goto_3

    :cond_3
    iget-object v8, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 230
    .local v8, "ssid":Ljava/lang/String;
    :goto_3
    const-string v9, ""

    .line 231
    .local v9, "rssiInfo":Ljava/lang/String;
    iget-object v10, v2, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v6, :cond_4

    .line 232
    const-string v10, "%5d(%1d:%3d)       "

    new-array v12, v11, [Ljava/lang/Object;

    iget v11, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v12, v7

    iget-object v11, v2, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v11, v11, v7

    iget v11, v11, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    .line 233
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v12, v6

    iget-object v11, v2, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v11, v11, v7

    iget v11, v11, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v6, 0x2

    aput-object v11, v12, v6

    .line 232
    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 234
    :cond_4
    const/4 v6, 0x2

    iget-object v10, v2, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v10

    if-ne v10, v6, :cond_5

    .line 235
    const-string v6, "%5d(%1d:%3d/%1d:%3d)"

    const/4 v10, 0x5

    new-array v11, v10, [Ljava/lang/Object;

    iget v10, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v7

    iget-object v10, v2, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v10, v10, v7

    iget v10, v10, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    .line 236
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v11, v12

    iget-object v10, v2, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v10, v10, v7

    iget v10, v10, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v14, 0x2

    aput-object v10, v11, v14

    iget-object v10, v2, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v10, v10, v12

    iget v10, v10, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    .line 237
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x3

    aput-object v10, v11, v15

    iget-object v10, v2, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v10, v10, v12

    iget v10, v10, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x4

    aput-object v10, v11, v13

    .line 235
    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 239
    :cond_5
    const/4 v12, 0x1

    const-string v6, "%9d         "

    new-array v10, v12, [Ljava/lang/Object;

    iget v11, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 241
    :goto_4
    const-string v6, "  %17s  %9d  %18s   %7s    %-32s  %s\n"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v11, v10, v7

    iget v11, v2, Landroid/net/wifi/ScanResult;->frequency:I

    .line 243
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v11, 0x2

    aput-object v9, v10, v11

    const/4 v11, 0x3

    aput-object v5, v10, v11

    const-string v11, "%1.32s"

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v8, v12, v7

    .line 246
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x4

    aput-object v7, v10, v11

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const/4 v11, 0x5

    aput-object v7, v10, v11

    .line 241
    invoke-virtual {v0, v6, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 248
    .end local v2    # "r":Landroid/net/wifi/ScanResult;
    .end local v3    # "timeStampMs":J
    .end local v5    # "age":Ljava/lang/String;
    .end local v8    # "ssid":Ljava/lang/String;
    .end local v9    # "rssiInfo":Ljava/lang/String;
    goto/16 :goto_0

    .line 250
    :cond_6
    return-void
.end method

.method public static isScanResultForDppNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 120
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "DPP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 80
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isScanResultForEapSuiteBNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 88
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "SUITE_B_192"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isScanResultForFilsSha256Network(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 104
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FILS-SHA256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isScanResultForFilsSha384Network(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 112
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FILS-SHA384"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isScanResultForOpenNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 1
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 146
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWapiPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWapiCertNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForDppNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForEapSuiteBNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0
.end method

.method public static isScanResultForOweNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 128
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "OWE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 54
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 137
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "SAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isScanResultForWapiCertNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 71
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isScanResultForWapiPskNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 63
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 96
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static setAllowedKeyManagementFromScanResult(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 180
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 183
    :cond_0
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWapiPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 185
    :cond_1
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWapiCertNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 188
    :cond_2
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 190
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 191
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForFilsSha256Network(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 193
    :cond_3
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForFilsSha384Network(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 194
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 195
    :cond_4
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 196
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 197
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 198
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 199
    :cond_5
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForDppNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 200
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 201
    :cond_6
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForOweNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 202
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 203
    :cond_7
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 204
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 206
    :cond_8
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 208
    :cond_9
    :goto_0
    return-void
.end method

.method public static toScanDetail(Landroid/net/wifi/ScanResult;)Lcom/android/server/wifi/ScanDetail;
    .locals 5
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 44
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    iget v4, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Ljava/lang/String;[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;I)V

    .line 46
    .local v0, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    new-instance v1, Lcom/android/server/wifi/ScanDetail;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wifi/ScanDetail;-><init>(Landroid/net/wifi/ScanResult;Lcom/android/server/wifi/hotspot2/NetworkDetail;)V

    return-object v1
.end method
