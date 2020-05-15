.class Lcom/android/server/wifi/WifiBackupDataV1Parser;
.super Ljava/lang/Object;
.source "WifiBackupDataV1Parser.java"

# interfaces
.implements Lcom/android/server/wifi/WifiBackupDataParser;


# static fields
.field private static final HIGHEST_SUPPORTED_MINOR_VERSION:I = 0x0

.field private static final IP_CONFIGURATION_MINOR_V0_SUPPORTED_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiBackupDataV1Parser"

.field private static final WIFI_CONFIGURATION_MINOR_V0_SUPPORTED_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 96
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "ConfigKey"

    const-string v2, "SSID"

    const-string v3, "BSSID"

    const-string v4, "PreSharedKey"

    const-string v5, "WEPKeys"

    const-string v6, "WEPTxKeyIndex"

    const-string v7, "HiddenSSID"

    const-string v8, "RequirePMF"

    const-string v9, "AllowedKeyMgmt"

    const-string v10, "AllowedProtocols"

    const-string v11, "AllowedAuthAlgos"

    const-string v12, "AllowedGroupCiphers"

    const-string v13, "AllowedPairwiseCiphers"

    const-string v14, "Shared"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/wifi/WifiBackupDataV1Parser;->WIFI_CONFIGURATION_MINOR_V0_SUPPORTED_TAGS:Ljava/util/Set;

    .line 115
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "IpAssignment"

    const-string v2, "LinkAddress"

    const-string v3, "LinkPrefixLength"

    const-string v4, "GatewayAddress"

    const-string v5, "DNSServers"

    const-string v6, "ProxySettings"

    const-string v7, "ProxyHost"

    const-string v8, "ProxyPort"

    const-string v9, "ProxyExclusionList"

    const-string v10, "ProxyPac"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/wifi/WifiBackupDataV1Parser;->IP_CONFIGURATION_MINOR_V0_SUPPORTED_TAGS:Ljava/util/Set;

    .line 115
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearAnyKnownIssuesInParsedConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 216
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 220
    invoke-virtual {v2}, Ljava/util/BitSet;->length()I

    move-result v2

    .line 218
    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->clear(II)V

    .line 223
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    sget-object v1, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 225
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 227
    invoke-virtual {v2}, Ljava/util/BitSet;->length()I

    move-result v2

    .line 225
    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->clear(II)V

    .line 230
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    sget-object v1, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 232
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 234
    invoke-virtual {v2}, Ljava/util/BitSet;->length()I

    move-result v2

    .line 232
    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->clear(II)V

    .line 237
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    sget-object v1, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_3

    .line 239
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 241
    invoke-virtual {v2}, Ljava/util/BitSet;->length()I

    move-result v2

    .line 239
    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->clear(II)V

    .line 244
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    sget-object v1, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 246
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 248
    invoke-virtual {v2}, Ljava/util/BitSet;->length()I

    move-result v2

    .line 246
    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->clear(II)V

    .line 251
    :cond_4
    return-void
.end method

.method private static getSupportedIpConfigurationTags(I)Ljava/util/Set;
    .locals 3
    .param p0, "minorVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 568
    if-eqz p0, :cond_0

    .line 571
    const-string v0, "WifiBackupDataV1Parser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid minorVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 569
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiBackupDataV1Parser;->IP_CONFIGURATION_MINOR_V0_SUPPORTED_TAGS:Ljava/util/Set;

    return-object v0
.end method

.method private static getSupportedWifiConfigurationTags(I)Ljava/util/Set;
    .locals 3
    .param p0, "minorVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 357
    if-eqz p0, :cond_0

    .line 360
    const-string v0, "WifiBackupDataV1Parser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid minorVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 358
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiBackupDataV1Parser;->WIFI_CONFIGURATION_MINOR_V0_SUPPORTED_TAGS:Ljava/util/Set;

    return-object v0
.end method

.method private static parseIpConfigurationFromXml(Lorg/xmlpull/v1/XmlPullParser;II)Landroid/net/IpConfiguration;
    .locals 25
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .param p2, "minorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    invoke-static/range {p2 .. p2}, Lcom/android/server/wifi/WifiBackupDataV1Parser;->getSupportedIpConfigurationTags(I)Ljava/util/Set;

    move-result-object v0

    .line 403
    .local v0, "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 404
    .local v1, "ipAssignmentString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 405
    .local v2, "linkAddressString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 406
    .local v3, "linkPrefixLength":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 407
    .local v4, "gatewayAddressString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 408
    .local v5, "dnsServerAddressesString":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 409
    .local v6, "proxySettingsString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 410
    .local v7, "proxyHost":Ljava/lang/String;
    const/4 v8, -0x1

    .line 411
    .local v8, "proxyPort":I
    const/4 v9, 0x0

    .line 412
    .local v9, "proxyExclusionList":Ljava/lang/String;
    const/4 v10, 0x0

    .line 415
    .local v10, "proxyPacFile":Ljava/lang/String;
    :goto_0
    invoke-static/range {p0 .. p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v11

    const/4 v13, 0x0

    if-nez v11, :cond_3

    .line 416
    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/String;

    .line 417
    .local v14, "valueName":[Ljava/lang/String;
    move-object/from16 v15, p0

    invoke-static {v15, v14}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 418
    .local v16, "value":Ljava/lang/Object;
    aget-object v11, v14, v13

    .line 419
    .local v11, "tagName":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 424
    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 425
    const-string v12, "WifiBackupDataV1Parser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string v0, "Unsupported tag + \""

    .end local v0    # "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v18, "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" found in <IpConfiguration> section, ignoring."

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    nop

    .line 412
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v14    # "valueName":[Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/Object;
    .end local v18    # "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v0, v18

    goto :goto_0

    .line 434
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v14    # "valueName":[Ljava/lang/String;
    .restart local v16    # "value":Ljava/lang/Object;
    :cond_0
    move-object/from16 v18, v0

    .end local v0    # "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "ProxySettings"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v12, 0x5

    goto :goto_3

    :sswitch_1
    const-string v0, "ProxyExclusionList"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v12, 0x8

    goto :goto_3

    :sswitch_2
    const-string v0, "ProxyPort"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v12, 0x7

    goto :goto_3

    :sswitch_3
    const-string v0, "ProxyHost"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v12, 0x6

    goto :goto_3

    :sswitch_4
    const-string v0, "GatewayAddress"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v12, 0x3

    goto :goto_3

    :sswitch_5
    const-string v0, "IpAssignment"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v12, v13

    goto :goto_3

    :sswitch_6
    const-string v0, "ProxyPac"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v12, 0x9

    goto :goto_3

    :sswitch_7
    const-string v0, "LinkPrefixLength"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v12, 0x2

    goto :goto_3

    :sswitch_8
    const-string v0, "LinkAddress"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v12, 0x1

    goto :goto_3

    :sswitch_9
    const-string v0, "DNSServers"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v12, 0x4

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v12, -0x1

    :goto_3
    packed-switch v12, :pswitch_data_0

    .line 467
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v11

    const-string v11, "Unknown value name found: "

    .end local v11    # "tagName":Ljava/lang/String;
    .local v19, "tagName":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v14, v13

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    .end local v19    # "tagName":Ljava/lang/String;
    .restart local v11    # "tagName":Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    .line 464
    .end local v10    # "proxyPacFile":Ljava/lang/String;
    .local v0, "proxyPacFile":Ljava/lang/String;
    nop

    .line 470
    move-object v10, v0

    goto :goto_4

    .line 460
    .end local v0    # "proxyPacFile":Ljava/lang/String;
    .restart local v10    # "proxyPacFile":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    .line 461
    .end local v9    # "proxyExclusionList":Ljava/lang/String;
    .local v0, "proxyExclusionList":Ljava/lang/String;
    nop

    .line 470
    move-object v9, v0

    goto :goto_4

    .line 457
    .end local v0    # "proxyExclusionList":Ljava/lang/String;
    .restart local v9    # "proxyExclusionList":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 458
    .end local v8    # "proxyPort":I
    .local v0, "proxyPort":I
    nop

    .line 470
    move v8, v0

    goto :goto_4

    .line 454
    .end local v0    # "proxyPort":I
    .restart local v8    # "proxyPort":I
    :pswitch_3
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    .line 455
    .end local v7    # "proxyHost":Ljava/lang/String;
    .local v0, "proxyHost":Ljava/lang/String;
    nop

    .line 470
    move-object v7, v0

    goto :goto_4

    .line 451
    .end local v0    # "proxyHost":Ljava/lang/String;
    .restart local v7    # "proxyHost":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    .line 452
    .end local v6    # "proxySettingsString":Ljava/lang/String;
    .local v0, "proxySettingsString":Ljava/lang/String;
    nop

    .line 470
    move-object v6, v0

    goto :goto_4

    .line 448
    .end local v0    # "proxySettingsString":Ljava/lang/String;
    .restart local v6    # "proxySettingsString":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, v16

    check-cast v0, [Ljava/lang/String;

    .line 449
    .end local v5    # "dnsServerAddressesString":[Ljava/lang/String;
    .local v0, "dnsServerAddressesString":[Ljava/lang/String;
    nop

    .line 470
    move-object v5, v0

    goto :goto_4

    .line 445
    .end local v0    # "dnsServerAddressesString":[Ljava/lang/String;
    .restart local v5    # "dnsServerAddressesString":[Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    .line 446
    .end local v4    # "gatewayAddressString":Ljava/lang/String;
    .local v0, "gatewayAddressString":Ljava/lang/String;
    nop

    .line 470
    move-object v4, v0

    goto :goto_4

    .line 442
    .end local v0    # "gatewayAddressString":Ljava/lang/String;
    .restart local v4    # "gatewayAddressString":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/Integer;

    .line 443
    .end local v3    # "linkPrefixLength":Ljava/lang/Integer;
    .local v0, "linkPrefixLength":Ljava/lang/Integer;
    nop

    .line 470
    move-object v3, v0

    goto :goto_4

    .line 439
    .end local v0    # "linkPrefixLength":Ljava/lang/Integer;
    .restart local v3    # "linkPrefixLength":Ljava/lang/Integer;
    :pswitch_8
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    .line 440
    .end local v2    # "linkAddressString":Ljava/lang/String;
    .local v0, "linkAddressString":Ljava/lang/String;
    nop

    .line 470
    move-object v2, v0

    goto :goto_4

    .line 436
    .end local v0    # "linkAddressString":Ljava/lang/String;
    .restart local v2    # "linkAddressString":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    .line 437
    .end local v1    # "ipAssignmentString":Ljava/lang/String;
    .local v0, "ipAssignmentString":Ljava/lang/String;
    nop

    .line 470
    move-object v1, v0

    .end local v0    # "ipAssignmentString":Ljava/lang/String;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v14    # "valueName":[Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/Object;
    .restart local v1    # "ipAssignmentString":Ljava/lang/String;
    :goto_4
    goto/16 :goto_1

    .line 420
    .end local v18    # "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v14    # "valueName":[Ljava/lang/String;
    .restart local v16    # "value":Ljava/lang/Object;
    :cond_2
    move-object/from16 v18, v0

    move-object/from16 v19, v11

    .end local v0    # "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "tagName":Ljava/lang/String;
    .restart local v18    # "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "tagName":Ljava/lang/String;
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v11, "Missing value name"

    invoke-direct {v0, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    .end local v14    # "valueName":[Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/Object;
    .end local v18    # "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "tagName":Ljava/lang/String;
    .restart local v0    # "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v15, p0

    move-object/from16 v18, v0

    .end local v0    # "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/net/IpConfiguration;

    invoke-direct {v0}, Landroid/net/IpConfiguration;-><init>()V

    .line 474
    .local v0, "ipConfiguration":Landroid/net/IpConfiguration;
    if-eqz v1, :cond_e

    .line 477
    invoke-static {v1}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v11

    .line 478
    .local v11, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    invoke-virtual {v0, v11}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 479
    sget-object v14, Lcom/android/server/wifi/WifiBackupDataV1Parser$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual {v11}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v16

    aget v14, v14, v16

    packed-switch v14, :pswitch_data_1

    .line 514
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    .end local v1    # "ipAssignmentString":Ljava/lang/String;
    .end local v2    # "linkAddressString":Ljava/lang/String;
    .local v20, "ipAssignmentString":Ljava/lang/String;
    .local v21, "linkAddressString":Ljava/lang/String;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown ip assignment type: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 512
    .end local v20    # "ipAssignmentString":Ljava/lang/String;
    .end local v21    # "linkAddressString":Ljava/lang/String;
    .restart local v1    # "ipAssignmentString":Ljava/lang/String;
    .restart local v2    # "linkAddressString":Ljava/lang/String;
    :pswitch_a
    nop

    .line 518
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    goto/16 :goto_8

    .line 481
    :pswitch_b
    new-instance v14, Landroid/net/StaticIpConfiguration;

    invoke-direct {v14}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 482
    .local v14, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 483
    new-instance v13, Landroid/net/LinkAddress;

    .line 484
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    move-object/from16 v20, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v1    # "ipAssignmentString":Ljava/lang/String;
    .restart local v20    # "ipAssignmentString":Ljava/lang/String;
    invoke-direct {v13, v12, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v1, v13

    .line 485
    .local v1, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v12

    instance-of v12, v12, Ljava/net/Inet4Address;

    if-eqz v12, :cond_4

    .line 486
    iput-object v1, v14, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 491
    move-object/from16 v21, v2

    goto :goto_5

    .line 488
    :cond_4
    const-string v12, "WifiBackupDataV1Parser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v2

    const-string v2, "Non-IPv4 address: "

    .end local v2    # "linkAddressString":Ljava/lang/String;
    .restart local v21    # "linkAddressString":Ljava/lang/String;
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "linkAddress":Landroid/net/LinkAddress;
    goto :goto_5

    .line 491
    .end local v20    # "ipAssignmentString":Ljava/lang/String;
    .end local v21    # "linkAddressString":Ljava/lang/String;
    .local v1, "ipAssignmentString":Ljava/lang/String;
    .restart local v2    # "linkAddressString":Ljava/lang/String;
    :cond_5
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    .end local v1    # "ipAssignmentString":Ljava/lang/String;
    .end local v2    # "linkAddressString":Ljava/lang/String;
    .restart local v20    # "ipAssignmentString":Ljava/lang/String;
    .restart local v21    # "linkAddressString":Ljava/lang/String;
    :goto_5
    if-eqz v4, :cond_7

    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, "dest":Landroid/net/LinkAddress;
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 494
    .local v2, "gateway":Ljava/net/InetAddress;
    new-instance v12, Landroid/net/RouteInfo;

    invoke-direct {v12, v1, v2}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 495
    .local v12, "route":Landroid/net/RouteInfo;
    invoke-virtual {v12}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 496
    iput-object v2, v14, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_6

    .line 498
    :cond_6
    const-string v13, "WifiBackupDataV1Parser"

    move-object/from16 v22, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "dest":Landroid/net/LinkAddress;
    .local v22, "dest":Landroid/net/LinkAddress;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v2

    const-string v2, "Non-IPv4 default route: "

    .end local v2    # "gateway":Ljava/net/InetAddress;
    .local v23, "gateway":Ljava/net/InetAddress;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v12    # "route":Landroid/net/RouteInfo;
    .end local v22    # "dest":Landroid/net/LinkAddress;
    .end local v23    # "gateway":Ljava/net/InetAddress;
    :cond_7
    :goto_6
    if-eqz v5, :cond_8

    .line 502
    array-length v1, v5

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_8

    aget-object v12, v5, v2

    .line 503
    .local v12, "dnsServerAddressString":Ljava/lang/String;
    nop

    .line 504
    invoke-static {v12}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    .line 505
    .local v13, "dnsServerAddress":Ljava/net/InetAddress;
    move/from16 v24, v1

    iget-object v1, v14, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    .end local v12    # "dnsServerAddressString":Ljava/lang/String;
    .end local v13    # "dnsServerAddress":Ljava/net/InetAddress;
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v24

    goto :goto_7

    .line 508
    :cond_8
    invoke-virtual {v0, v14}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 509
    nop

    .line 518
    .end local v14    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :goto_8
    if-eqz v6, :cond_d

    .line 522
    invoke-static {v6}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    .line 523
    .local v1, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 524
    sget-object v2, Lcom/android/server/wifi/WifiBackupDataV1Parser$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v12

    aget v2, v2, v12

    packed-switch v2, :pswitch_data_2

    .line 552
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown proxy settings type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 550
    :pswitch_c
    goto :goto_9

    .line 542
    :pswitch_d
    if-eqz v10, :cond_9

    .line 546
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v10}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 547
    goto :goto_9

    .line 543
    :cond_9
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v12, "ProxyPac was missing in IpConfiguration section"

    invoke-direct {v2, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 526
    :pswitch_e
    if-eqz v7, :cond_c

    .line 530
    const/4 v2, -0x1

    if-eq v8, v2, :cond_b

    .line 534
    if-eqz v9, :cond_a

    .line 538
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v7, v8, v9}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 540
    nop

    .line 556
    :goto_9
    return-object v0

    .line 535
    :cond_a
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v12, "ProxyExclusionList was missing in IpConfiguration section"

    invoke-direct {v2, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 531
    :cond_b
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v12, "ProxyPort was missing in IpConfiguration section"

    invoke-direct {v2, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 527
    :cond_c
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v12, "ProxyHost was missing in IpConfiguration section"

    invoke-direct {v2, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 519
    .end local v1    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    :cond_d
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "ProxySettings was missing in IpConfiguration section"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    .end local v11    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v20    # "ipAssignmentString":Ljava/lang/String;
    .end local v21    # "linkAddressString":Ljava/lang/String;
    .local v1, "ipAssignmentString":Ljava/lang/String;
    .local v2, "linkAddressString":Ljava/lang/String;
    :cond_e
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    .end local v1    # "ipAssignmentString":Ljava/lang/String;
    .end local v2    # "linkAddressString":Ljava/lang/String;
    .restart local v20    # "ipAssignmentString":Ljava/lang/String;
    .restart local v21    # "linkAddressString":Ljava/lang/String;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "IpAssignment was missing in IpConfiguration section"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x682643b9 -> :sswitch_9
        -0x5aa5e186 -> :sswitch_8
        -0x574fbaae -> :sswitch_7
        -0x36de6c9c -> :sswitch_6
        0x9b3bf74 -> :sswitch_5
        0x3331e530 -> :sswitch_4
        0x5b0d6d16 -> :sswitch_3
        0x5b110fef -> :sswitch_2
        0x73a44fde -> :sswitch_1
        0x7559cc91 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private parseNetworkConfigurationFromXml(Lorg/xmlpull/v1/XmlPullParser;II)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "minorVersion"    # I
    .param p3, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    add-int/lit8 v1, p3, 0x1

    .line 166
    .local v1, "networkTagDepth":I
    const-string v2, "WifiConfiguration"

    invoke-static {p1, v2, v1}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    .line 169
    add-int/lit8 v2, v1, 0x1

    .line 170
    .local v2, "configTagDepth":I
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/wifi/WifiBackupDataV1Parser;->parseWifiConfigurationFromXml(Lorg/xmlpull/v1/XmlPullParser;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 171
    if-nez v0, :cond_0

    .line 172
    const/4 v3, 0x0

    return-object v3

    .line 175
    :cond_0
    const-string v3, "IpConfiguration"

    invoke-static {p1, v3, v1}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    .line 177
    invoke-static {p1, v2, p2}, Lcom/android/server/wifi/WifiBackupDataV1Parser;->parseIpConfigurationFromXml(Lorg/xmlpull/v1/XmlPullParser;II)Landroid/net/IpConfiguration;

    move-result-object v3

    .line 179
    .local v3, "ipConfiguration":Landroid/net/IpConfiguration;
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 180
    return-object v0
.end method

.method private parseWifiConfigurationFromXml(Lorg/xmlpull/v1/XmlPullParser;II)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outerTagDepth"    # I
    .param p3, "minorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    nop

    .line 189
    invoke-static {p1, p2, p3}, Lcom/android/server/wifi/WifiBackupDataV1Parser;->parseWifiConfigurationFromXmlInternal(Lorg/xmlpull/v1/XmlPullParser;II)Landroid/util/Pair;

    move-result-object v0

    .line 190
    .local v0, "parsedConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 194
    .local v1, "configKeyParsed":Ljava/lang/String;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 195
    .local v2, "configuration":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "configKeyCalculated":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    const-string v4, "WifiBackupDataV1Parser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configuration key does not match. Retrieved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", Calculated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    return-object v2

    .line 191
    .end local v1    # "configKeyParsed":Ljava/lang/String;
    .end local v2    # "configuration":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "configKeyCalculated":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseWifiConfigurationFromXmlInternal(Lorg/xmlpull/v1/XmlPullParser;II)Landroid/util/Pair;
    .locals 10
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .param p2, "minorVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 268
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    .line 269
    .local v1, "configKeyInData":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/wifi/WifiBackupDataV1Parser;->getSupportedWifiConfigurationTags(I)Ljava/util/Set;

    move-result-object v2

    .line 272
    .local v2, "supportedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 273
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 274
    .local v4, "valueName":[Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 275
    .local v5, "value":Ljava/lang/Object;
    const/4 v6, 0x0

    aget-object v7, v4, v6

    .line 276
    .local v7, "tagName":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 281
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 282
    const-string v3, "WifiBackupDataV1Parser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported tag + \""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\" found in <WifiConfiguration> section, ignoring."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    goto :goto_0

    .line 289
    :cond_0
    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "RequirePMF"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "HiddenSSID"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "WEPKeys"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto/16 :goto_2

    :sswitch_3
    const-string v3, "WEPTxKeyIndex"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto/16 :goto_2

    :sswitch_4
    const-string v3, "AllowedAuthAlgos"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xa

    goto/16 :goto_2

    :sswitch_5
    const-string v3, "ConfigKey"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_2

    :sswitch_6
    const-string v3, "PreSharedKey"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_7
    const-string v3, "AllowedGroupCiphers"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xb

    goto :goto_2

    :sswitch_8
    const-string v3, "AllowedPairwiseCiphers"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xc

    goto :goto_2

    :sswitch_9
    const-string v3, "BSSID"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_a
    const-string v9, "SSID"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :sswitch_b
    const-string v3, "AllowedProtocols"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x9

    goto :goto_2

    :sswitch_c
    const-string v3, "AllowedKeyMgmt"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_d
    const-string v3, "Shared"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xd

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v8

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 340
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown value name found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 336
    :pswitch_0
    move-object v3, v5

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 337
    goto/16 :goto_3

    .line 331
    :pswitch_1
    move-object v3, v5

    check-cast v3, [B

    .line 332
    .local v3, "allowedPairwiseCiphers":[B
    nop

    .line 333
    invoke-static {v3}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 334
    goto :goto_3

    .line 327
    .end local v3    # "allowedPairwiseCiphers":[B
    :pswitch_2
    move-object v3, v5

    check-cast v3, [B

    .line 328
    .local v3, "allowedGroupCiphers":[B
    invoke-static {v3}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 329
    goto :goto_3

    .line 323
    .end local v3    # "allowedGroupCiphers":[B
    :pswitch_3
    move-object v3, v5

    check-cast v3, [B

    .line 324
    .local v3, "allowedAuthAlgorithms":[B
    invoke-static {v3}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 325
    goto :goto_3

    .line 319
    .end local v3    # "allowedAuthAlgorithms":[B
    :pswitch_4
    move-object v3, v5

    check-cast v3, [B

    .line 320
    .local v3, "allowedProtocols":[B
    invoke-static {v3}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 321
    goto :goto_3

    .line 315
    .end local v3    # "allowedProtocols":[B
    :pswitch_5
    move-object v3, v5

    check-cast v3, [B

    .line 316
    .local v3, "allowedKeyMgmt":[B
    invoke-static {v3}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 317
    goto :goto_3

    .line 312
    .end local v3    # "allowedKeyMgmt":[B
    :pswitch_6
    move-object v3, v5

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 313
    goto :goto_3

    .line 309
    :pswitch_7
    move-object v3, v5

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 310
    goto :goto_3

    .line 306
    :pswitch_8
    move-object v3, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 307
    goto :goto_3

    .line 303
    :pswitch_9
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiBackupDataV1Parser;->populateWepKeysFromXmlValue(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 304
    goto :goto_3

    .line 300
    :pswitch_a
    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 301
    goto :goto_3

    .line 297
    :pswitch_b
    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 298
    goto :goto_3

    .line 294
    :pswitch_c
    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 295
    goto :goto_3

    .line 291
    :pswitch_d
    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    .line 292
    nop

    .line 343
    .end local v4    # "valueName":[Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v7    # "tagName":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 277
    .restart local v4    # "valueName":[Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/Object;
    .restart local v7    # "tagName":Ljava/lang/String;
    :cond_2
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Missing value name"

    invoke-direct {v3, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 344
    .end local v4    # "valueName":[Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Lcom/android/server/wifi/WifiBackupDataV1Parser;->clearAnyKnownIssuesInParsedConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 345
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c76677b -> :sswitch_d
        -0x659a62e8 -> :sswitch_c
        -0xaccfbcd -> :sswitch_b
        0x26fb7b -> :sswitch_a
        0x3c90abd -> :sswitch_9
        0x28b290c2 -> :sswitch_8
        0x2bece1f1 -> :sswitch_7
        0x2f81ec77 -> :sswitch_6
        0x477ee39d -> :sswitch_5
        0x6e54cb10 -> :sswitch_4
        0x718ded39 -> :sswitch_3
        0x74878056 -> :sswitch_2
        0x752c9045 -> :sswitch_1
        0x7fc65a84 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static populateWepKeysFromXmlValue(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "wepKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    .line 373
    .local v0, "wepKeysInData":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 374
    return-void

    .line 376
    :cond_0
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_3

    .line 380
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 381
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_1

    .line 384
    :cond_1
    aget-object v2, v0, v1

    aput-object v2, p1, v1

    .line 380
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 377
    :cond_3
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Wep Keys length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public parseNetworkConfigurationsFromXml(Lorg/xmlpull/v1/XmlPullParser;II)Ljava/util/List;
    .locals 6
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outerTagDepth"    # I
    .param p3, "minorVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "II)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    if-lez p3, :cond_0

    .line 133
    const/4 p3, 0x0

    .line 136
    :cond_0
    const-string v0, "NetworkList"

    invoke-static {p1, v0, p2}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    .line 139
    add-int/lit8 v0, p2, 0x1

    .line 140
    .local v0, "networkListTagDepth":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    const-string v2, "Network"

    invoke-static {p1, v2, v0}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithNameOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    nop

    .line 144
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/wifi/WifiBackupDataV1Parser;->parseNetworkConfigurationFromXml(Lorg/xmlpull/v1/XmlPullParser;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 145
    .local v2, "configuration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_1

    .line 146
    const-string v3, "WifiBackupDataV1Parser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsed Configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v2    # "configuration":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    goto :goto_0

    .line 150
    :cond_2
    return-object v1
.end method
