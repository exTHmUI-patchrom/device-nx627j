.class public Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;
.super Ljava/lang/Object;
.source "XmlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/XmlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiConfigurationXmlUtil"
.end annotation


# static fields
.field public static final XML_TAG_ALLOWED_AUTH_ALGOS:Ljava/lang/String; = "AllowedAuthAlgos"

.field public static final XML_TAG_ALLOWED_GROUP_CIPHERS:Ljava/lang/String; = "AllowedGroupCiphers"

.field public static final XML_TAG_ALLOWED_KEY_MGMT:Ljava/lang/String; = "AllowedKeyMgmt"

.field public static final XML_TAG_ALLOWED_PAIRWISE_CIPHERS:Ljava/lang/String; = "AllowedPairwiseCiphers"

.field public static final XML_TAG_ALLOWED_PROTOCOLS:Ljava/lang/String; = "AllowedProtocols"

.field public static final XML_TAG_BSSID:Ljava/lang/String; = "BSSID"

.field public static final XML_TAG_CONFIG_KEY:Ljava/lang/String; = "ConfigKey"

.field public static final XML_TAG_CREATION_TIME:Ljava/lang/String; = "CreationTime"

.field public static final XML_TAG_CREATOR_NAME:Ljava/lang/String; = "CreatorName"

.field public static final XML_TAG_CREATOR_UID:Ljava/lang/String; = "CreatorUid"

.field public static final XML_TAG_DEFAULT_GW_MAC_ADDRESS:Ljava/lang/String; = "DefaultGwMacAddress"

.field public static final XML_TAG_DPP_CONNECTOR:Ljava/lang/String; = "DppConnector"

.field public static final XML_TAG_DPP_CSIGN:Ljava/lang/String; = "DppCsign"

.field public static final XML_TAG_DPP_NETACCESSKEY:Ljava/lang/String; = "DppNetAccessKey"

.field public static final XML_TAG_DPP_NETACCESSKEY_EXPIRY:Ljava/lang/String; = "DppNetAccessKeyExpiry"

.field public static final XML_TAG_FQDN:Ljava/lang/String; = "FQDN"

.field public static final XML_TAG_HIDDEN_SSID:Ljava/lang/String; = "HiddenSSID"

.field public static final XML_TAG_IS_LEGACY_PASSPOINT_CONFIG:Ljava/lang/String; = "IsLegacyPasspointConfig"

.field public static final XML_TAG_LAST_CONNECT_UID:Ljava/lang/String; = "LastConnectUid"

.field public static final XML_TAG_LAST_UPDATE_NAME:Ljava/lang/String; = "LastUpdateName"

.field public static final XML_TAG_LAST_UPDATE_UID:Ljava/lang/String; = "LastUpdateUid"

.field public static final XML_TAG_LINKED_NETWORKS_LIST:Ljava/lang/String; = "LinkedNetworksList"

.field public static final XML_TAG_METERED_HINT:Ljava/lang/String; = "MeteredHint"

.field public static final XML_TAG_METERED_OVERRIDE:Ljava/lang/String; = "MeteredOverride"

.field public static final XML_TAG_NO_INTERNET_ACCESS_EXPECTED:Ljava/lang/String; = "NoInternetAccessExpected"

.field public static final XML_TAG_NUM_ASSOCIATION:Ljava/lang/String; = "NumAssociation"

.field public static final XML_TAG_PRE_SHARED_KEY:Ljava/lang/String; = "PreSharedKey"

.field public static final XML_TAG_PROVIDER_FRIENDLY_NAME:Ljava/lang/String; = "ProviderFriendlyName"

.field public static final XML_TAG_RANDOMIZED_MAC_ADDRESS:Ljava/lang/String; = "RandomizedMacAddress"

.field public static final XML_TAG_REQUIRE_PMF:Ljava/lang/String; = "RequirePMF"

.field public static final XML_TAG_ROAMING_CONSORTIUM_OIS:Ljava/lang/String; = "RoamingConsortiumOIs"

.field public static final XML_TAG_SHARED:Ljava/lang/String; = "Shared"

.field public static final XML_TAG_SHARE_THIS_AP:Ljava/lang/String; = "ShareThisAp"

.field public static final XML_TAG_SSID:Ljava/lang/String; = "SSID"

.field public static final XML_TAG_STATUS:Ljava/lang/String; = "Status"

.field public static final XML_TAG_USER_APPROVED:Ljava/lang/String; = "UserApproved"

.field public static final XML_TAG_USE_EXTERNAL_SCORES:Ljava/lang/String; = "UseExternalScores"

.field public static final XML_TAG_VALIDATED_INTERNET_ACCESS:Ljava/lang/String; = "ValidatedInternetAccess"

.field public static final XML_TAG_WAPI_CERT_SEL:Ljava/lang/String; = "WapiCertSel"

.field public static final XML_TAG_WAPI_CERT_SEL_MODE:Ljava/lang/String; = "WapiCertSelMode"

.field public static final XML_TAG_WAPI_PSK:Ljava/lang/String; = "WapiPsk"

.field public static final XML_TAG_WAPI_PSK_TYPE:Ljava/lang/String; = "WapiPskType"

.field public static final XML_TAG_WEP_KEYS:Ljava/lang/String; = "WEPKeys"

.field public static final XML_TAG_WEP_TX_KEY_INDEX:Ljava/lang/String; = "WEPTxKeyIndex"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/util/Pair;
    .locals 9
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I)",
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

    .line 536
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 537
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    .line 540
    .local v1, "configKeyInData":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 541
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 542
    .local v3, "valueName":[Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 543
    .local v4, "value":Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v6, v3, v5

    if-eqz v6, :cond_2

    .line 546
    aget-object v6, v3, v5

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "RequirePMF"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "DppCsign"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2b

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "ProviderFriendlyName"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "NumAssociation"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1e

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "HiddenSSID"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "WEPKeys"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "WEPTxKeyIndex"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_2

    :sswitch_7
    const-string v2, "AllowedAuthAlgos"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_2

    :sswitch_8
    const-string v2, "CreationTime"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x21

    goto/16 :goto_2

    :sswitch_9
    const-string v2, "ShareThisAp"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_2

    :sswitch_a
    const-string v2, "DppConnector"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x28

    goto/16 :goto_2

    :sswitch_b
    const-string v2, "CreatorName"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    goto/16 :goto_2

    :sswitch_c
    const-string v2, "LastUpdateUid"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x22

    goto/16 :goto_2

    :sswitch_d
    const-string v2, "ConfigKey"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto/16 :goto_2

    :sswitch_e
    const-string v2, "LinkedNetworksList"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_2

    :sswitch_f
    const-string v2, "UseExternalScores"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1d

    goto/16 :goto_2

    :sswitch_10
    const-string v2, "PreSharedKey"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_2

    :sswitch_11
    const-string v2, "WapiCertSel"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_2

    :sswitch_12
    const-string v2, "AllowedGroupCiphers"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_2

    :sswitch_13
    const-string v2, "AllowedPairwiseCiphers"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_2

    :sswitch_14
    const-string v2, "UserApproved"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1a

    goto/16 :goto_2

    :sswitch_15
    const-string v2, "BSSID"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_2

    :sswitch_16
    const-string v8, "SSID"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_2

    :sswitch_17
    const-string v2, "FQDN"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_2

    :sswitch_18
    const-string v2, "MeteredOverride"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1c

    goto/16 :goto_2

    :sswitch_19
    const-string v2, "IsLegacyPasspointConfig"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x25

    goto/16 :goto_2

    :sswitch_1a
    const-string v2, "AllowedProtocols"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_2

    :sswitch_1b
    const-string v2, "WapiPskType"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_2

    :sswitch_1c
    const-string v2, "NoInternetAccessExpected"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_2

    :sswitch_1d
    const-string v2, "RoamingConsortiumOIs"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x26

    goto/16 :goto_2

    :sswitch_1e
    const-string v2, "WapiCertSelMode"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_2

    :sswitch_1f
    const-string v2, "DppNetAccessKey"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x29

    goto/16 :goto_2

    :sswitch_20
    const-string v2, "CreatorUid"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1f

    goto/16 :goto_2

    :sswitch_21
    const-string v2, "LastUpdateName"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x23

    goto/16 :goto_2

    :sswitch_22
    const-string v2, "ValidatedInternetAccess"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x18

    goto/16 :goto_2

    :sswitch_23
    const-string v2, "WapiPsk"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto :goto_2

    :sswitch_24
    const-string v2, "LastConnectUid"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x24

    goto :goto_2

    :sswitch_25
    const-string v2, "RandomizedMacAddress"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x27

    goto :goto_2

    :sswitch_26
    const-string v2, "AllowedKeyMgmt"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_2

    :sswitch_27
    const-string v2, "MeteredHint"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1b

    goto :goto_2

    :sswitch_28
    const-string v2, "Status"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto :goto_2

    :sswitch_29
    const-string v2, "Shared"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto :goto_2

    :sswitch_2a
    const-string v2, "DppNetAccessKeyExpiry"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2a

    goto :goto_2

    :sswitch_2b
    const-string v2, "DefaultGwMacAddress"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_2

    :cond_0
    :goto_1
    move v2, v7

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 694
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown value name found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 691
    :pswitch_0
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    .line 692
    goto/16 :goto_3

    .line 688
    :pswitch_1
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    .line 689
    goto/16 :goto_3

    .line 685
    :pswitch_2
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    .line 686
    goto/16 :goto_3

    .line 679
    :pswitch_3
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    .line 680
    invoke-static {v2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v2

    .line 679
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setRandomizedMacAddress(Landroid/net/MacAddress;)V

    .line 682
    :pswitch_4
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    .line 683
    goto/16 :goto_3

    .line 676
    :pswitch_5
    move-object v2, v4

    check-cast v2, [J

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 677
    goto/16 :goto_3

    .line 673
    :pswitch_6
    move-object v2, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    .line 674
    goto/16 :goto_3

    .line 670
    :pswitch_7
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 671
    goto/16 :goto_3

    .line 667
    :pswitch_8
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 668
    goto/16 :goto_3

    .line 664
    :pswitch_9
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 665
    goto/16 :goto_3

    .line 661
    :pswitch_a
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    .line 662
    goto/16 :goto_3

    .line 658
    :pswitch_b
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 659
    goto/16 :goto_3

    .line 655
    :pswitch_c
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 656
    goto/16 :goto_3

    .line 652
    :pswitch_d
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 653
    goto/16 :goto_3

    .line 649
    :pswitch_e
    move-object v2, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 650
    goto/16 :goto_3

    .line 646
    :pswitch_f
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 647
    goto/16 :goto_3

    .line 643
    :pswitch_10
    move-object v2, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 644
    goto/16 :goto_3

    .line 640
    :pswitch_11
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    .line 641
    goto/16 :goto_3

    .line 637
    :pswitch_12
    move-object v2, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 638
    goto/16 :goto_3

    .line 634
    :pswitch_13
    move-object v2, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 635
    goto/16 :goto_3

    .line 631
    :pswitch_14
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 632
    goto/16 :goto_3

    .line 628
    :pswitch_15
    move-object v2, v4

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 629
    goto/16 :goto_3

    .line 625
    :pswitch_16
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 626
    goto/16 :goto_3

    .line 622
    :pswitch_17
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 623
    goto/16 :goto_3

    .line 613
    :pswitch_18
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 616
    .local v2, "status":I
    if-nez v2, :cond_1

    .line 617
    const/4 v2, 0x2

    .line 619
    :cond_1
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 620
    goto/16 :goto_3

    .line 610
    .end local v2    # "status":I
    :pswitch_19
    move-object v2, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 611
    goto/16 :goto_3

    .line 606
    :pswitch_1a
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    .line 607
    goto/16 :goto_3

    .line 603
    :pswitch_1b
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    .line 604
    goto/16 :goto_3

    .line 600
    :pswitch_1c
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 601
    goto/16 :goto_3

    .line 597
    :pswitch_1d
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 598
    goto/16 :goto_3

    .line 591
    :pswitch_1e
    move-object v2, v4

    check-cast v2, [B

    .line 592
    .local v2, "allowedPairwiseCiphers":[B
    nop

    .line 593
    invoke-static {v2}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 594
    goto/16 :goto_3

    .line 587
    .end local v2    # "allowedPairwiseCiphers":[B
    :pswitch_1f
    move-object v2, v4

    check-cast v2, [B

    .line 588
    .local v2, "allowedGroupCiphers":[B
    invoke-static {v2}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 589
    goto :goto_3

    .line 583
    .end local v2    # "allowedGroupCiphers":[B
    :pswitch_20
    move-object v2, v4

    check-cast v2, [B

    .line 584
    .local v2, "allowedAuthAlgorithms":[B
    invoke-static {v2}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 585
    goto :goto_3

    .line 579
    .end local v2    # "allowedAuthAlgorithms":[B
    :pswitch_21
    move-object v2, v4

    check-cast v2, [B

    .line 580
    .local v2, "allowedProtocols":[B
    invoke-static {v2}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 581
    goto :goto_3

    .line 575
    .end local v2    # "allowedProtocols":[B
    :pswitch_22
    move-object v2, v4

    check-cast v2, [B

    .line 576
    .local v2, "allowedKeyMgmt":[B
    invoke-static {v2}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 577
    goto :goto_3

    .line 572
    .end local v2    # "allowedKeyMgmt":[B
    :pswitch_23
    move-object v2, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 573
    goto :goto_3

    .line 569
    :pswitch_24
    move-object v2, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 570
    goto :goto_3

    .line 566
    :pswitch_25
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 567
    goto :goto_3

    .line 563
    :pswitch_26
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;->populateWepKeysFromXmlValue(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 564
    goto :goto_3

    .line 560
    :pswitch_27
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 561
    goto :goto_3

    .line 557
    :pswitch_28
    move-object v2, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    .line 558
    goto :goto_3

    .line 554
    :pswitch_29
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 555
    goto :goto_3

    .line 551
    :pswitch_2a
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 552
    goto :goto_3

    .line 548
    :pswitch_2b
    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 549
    nop

    .line 697
    .end local v3    # "valueName":[Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :goto_3
    goto/16 :goto_0

    .line 544
    .restart local v3    # "valueName":[Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Missing value name"

    invoke-direct {v2, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 698
    .end local v3    # "valueName":[Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x7b87228a -> :sswitch_2b
        -0x703c3f8b -> :sswitch_2a
        -0x6c76677b -> :sswitch_29
        -0x6bcd43ee -> :sswitch_28
        -0x6ae03f91 -> :sswitch_27
        -0x659a62e8 -> :sswitch_26
        -0x63267708 -> :sswitch_25
        -0x5d7e55a4 -> :sswitch_24
        -0x59e08a9b -> :sswitch_23
        -0x4b9bce6d -> :sswitch_22
        -0x40e8edb6 -> :sswitch_21
        -0x36f7575c -> :sswitch_20
        -0x3659a75e -> :sswitch_1f
        -0x15ca600a -> :sswitch_1e
        -0x14ada3e1 -> :sswitch_1d
        -0xe904ee2 -> :sswitch_1c
        -0xaebc1c1 -> :sswitch_1b
        -0xaccfbcd -> :sswitch_1a
        -0x81b1df2 -> :sswitch_19
        -0x30d364c -> :sswitch_18
        0x210a95 -> :sswitch_17
        0x26fb7b -> :sswitch_16
        0x3c90abd -> :sswitch_15
        0x22ab0fc2 -> :sswitch_14
        0x28b290c2 -> :sswitch_13
        0x2bece1f1 -> :sswitch_12
        0x2df003b3 -> :sswitch_11
        0x2f81ec77 -> :sswitch_10
        0x3842b913 -> :sswitch_f
        0x3db6df1c -> :sswitch_e
        0x477ee39d -> :sswitch_d
        0x507cb8b1 -> :sswitch_c
        0x580920b7 -> :sswitch_b
        0x644bb369 -> :sswitch_a
        0x6847680c -> :sswitch_9
        0x6854026c -> :sswitch_8
        0x6e54cb10 -> :sswitch_7
        0x718ded39 -> :sswitch_6
        0x74878056 -> :sswitch_5
        0x752c9045 -> :sswitch_4
        0x784b553b -> :sswitch_3
        0x78b6b687 -> :sswitch_2
        0x7f8ea1bc -> :sswitch_1
        0x7fc65a84 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
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

    .line 505
    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    .line 506
    .local v0, "wepKeysInData":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 507
    return-void

    .line 509
    :cond_0
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_3

    .line 513
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 514
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_1

    .line 517
    :cond_1
    aget-object v2, v0, v1

    aput-object v2, p1, v1

    .line 513
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 510
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

.method public static writeCommonElementsToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    const-string v0, "ConfigKey"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    const-string v0, "SSID"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    const-string v0, "BSSID"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    const-string v0, "ShareThisAp"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 402
    const-string v0, "PreSharedKey"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;->writeWepKeysToXml(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;)V

    .line 404
    const-string v0, "WEPTxKeyIndex"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    const-string v0, "HiddenSSID"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    const-string v0, "RequirePMF"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    const-string v0, "AllowedKeyMgmt"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 409
    invoke-virtual {v1}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v1

    .line 407
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    const-string v0, "AllowedProtocols"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 412
    invoke-virtual {v1}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v1

    .line 410
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 413
    const-string v0, "AllowedAuthAlgos"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 415
    invoke-virtual {v1}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v1

    .line 413
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    const-string v0, "AllowedGroupCiphers"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 418
    invoke-virtual {v1}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v1

    .line 416
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    const-string v0, "AllowedPairwiseCiphers"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 421
    invoke-virtual {v1}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v1

    .line 419
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "WapiPskType"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 425
    const-string v0, "WapiPsk"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    const-string v0, "WapiCertSelMode"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    const-string v0, "WapiCertSel"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 432
    :cond_1
    :goto_0
    const-string v0, "Shared"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 433
    return-void
.end method

.method public static writeToXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;->writeCommonElementsToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V

    .line 446
    return-void
.end method

.method public static writeToXmlForConfigStore(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;->writeCommonElementsToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V

    .line 459
    const-string v0, "Status"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    const-string v0, "FQDN"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    const-string v0, "ProviderFriendlyName"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 463
    const-string v0, "LinkedNetworksList"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    const-string v0, "DefaultGwMacAddress"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    const-string v0, "ValidatedInternetAccess"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 468
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 467
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 469
    const-string v0, "NoInternetAccessExpected"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 471
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 469
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 472
    const-string v0, "UserApproved"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    const-string v0, "MeteredHint"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 474
    const-string v0, "MeteredOverride"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    const-string v0, "UseExternalScores"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 476
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 475
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 477
    const-string v0, "NumAssociation"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 478
    const-string v0, "CreatorUid"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    const-string v0, "CreatorName"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    const-string v0, "CreationTime"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    const-string v0, "LastUpdateUid"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    const-string v0, "LastUpdateName"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    const-string v0, "LastConnectUid"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    const-string v0, "IsLegacyPasspointConfig"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    .line 486
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 484
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    const-string v0, "RoamingConsortiumOIs"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    const-string v0, "RandomizedMacAddress"

    .line 490
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getRandomizedMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 492
    const-string v0, "DppConnector"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    const-string v0, "DppNetAccessKey"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    const-string v0, "DppNetAccessKeyExpiry"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    const-string v0, "DppCsign"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 496
    return-void
.end method

.method private static writeWepKeysToXml(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;)V
    .locals 4
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "wepKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 372
    .local v0, "wepKeysToWrite":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 373
    .local v1, "hasWepKey":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 374
    aget-object v3, p1, v2

    if-nez v3, :cond_0

    .line 375
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    aput-object v3, v0, v2

    goto :goto_1

    .line 377
    :cond_0
    aget-object v3, p1, v2

    aput-object v3, v0, v2

    .line 378
    const/4 v1, 0x1

    .line 373
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    .end local v2    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 382
    const-string v2, "WEPKeys"

    invoke-static {p0, v2, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 384
    :cond_2
    const-string v2, "WEPKeys"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    :goto_2
    return-void
.end method
