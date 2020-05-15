.class public Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;
.super Ljava/lang/Object;
.source "PasspointXmlUtils.java"


# static fields
.field private static final XML_TAG_ABLE_TO_SHARE:Ljava/lang/String; = "AbleToShare"

.field private static final XML_TAG_CERT_SHA256_FINGERPRINT:Ljava/lang/String; = "CertSHA256Fingerprint"

.field private static final XML_TAG_CERT_TYPE:Ljava/lang/String; = "CertType"

.field private static final XML_TAG_CHECK_AAA_SERVER_CERT_STATUS:Ljava/lang/String; = "CheckAAAServerCertStatus"

.field private static final XML_TAG_COUNTRIES:Ljava/lang/String; = "Countries"

.field private static final XML_TAG_CREATION_TIME:Ljava/lang/String; = "CreationTime"

.field private static final XML_TAG_CREDENTIAL_PRIORITY:Ljava/lang/String; = "CredentialPriority"

.field private static final XML_TAG_EAP_TYPE:Ljava/lang/String; = "EAPType"

.field private static final XML_TAG_EXCLUDED_SSID_LIST:Ljava/lang/String; = "ExcludedSSIDList"

.field private static final XML_TAG_EXPIRATION_TIME:Ljava/lang/String; = "ExpirationTime"

.field private static final XML_TAG_FQDN:Ljava/lang/String; = "FQDN"

.field private static final XML_TAG_FQDN_EXACT_MATCH:Ljava/lang/String; = "FQDNExactMatch"

.field private static final XML_TAG_FRIENDLY_NAME:Ljava/lang/String; = "FriendlyName"

.field private static final XML_TAG_HOME_NETWORK_IDS:Ljava/lang/String; = "HomeNetworkIDs"

.field private static final XML_TAG_ICON_URL:Ljava/lang/String; = "IconURL"

.field private static final XML_TAG_IMSI:Ljava/lang/String; = "IMSI"

.field private static final XML_TAG_MACHINE_MANAGED:Ljava/lang/String; = "MachineManaged"

.field private static final XML_TAG_MATCH_ALL_OIS:Ljava/lang/String; = "MatchAllOIs"

.field private static final XML_TAG_MATCH_ANY_OIS:Ljava/lang/String; = "MatchAnyOIs"

.field private static final XML_TAG_MAXIMUM_BSS_LOAD_VALUE:Ljava/lang/String; = "MaximumBSSLoadValue"

.field private static final XML_TAG_MIN_HOME_DOWNLINK_BANDWIDTH:Ljava/lang/String; = "MinHomeDownlinkBandwidth"

.field private static final XML_TAG_MIN_HOME_UPLINK_BANDWIDTH:Ljava/lang/String; = "MinHomeUplinkBandwidth"

.field private static final XML_TAG_MIN_ROAMING_DOWNLINK_BANDWIDTH:Ljava/lang/String; = "MinRoamingDownlinkBandwidth"

.field private static final XML_TAG_MIN_ROAMING_UPLINK_BANDWIDTH:Ljava/lang/String; = "MinRoamingUplinkBandwidth"

.field private static final XML_TAG_NON_EAP_INNER_METHOD:Ljava/lang/String; = "NonEAPInnerMethod"

.field private static final XML_TAG_OTHER_HOME_PARTNERS:Ljava/lang/String; = "OtherHomePartners"

.field private static final XML_TAG_PASSWORD:Ljava/lang/String; = "Password"

.field private static final XML_TAG_PORTS:Ljava/lang/String; = "Ports"

.field private static final XML_TAG_PRIORITY:Ljava/lang/String; = "Priority"

.field private static final XML_TAG_PROTO:Ljava/lang/String; = "Proto"

.field private static final XML_TAG_REALM:Ljava/lang/String; = "Realm"

.field private static final XML_TAG_RESTRICTION:Ljava/lang/String; = "Restriction"

.field private static final XML_TAG_ROAMING_CONSORTIUM_OIS:Ljava/lang/String; = "RoamingConsortiumOIs"

.field private static final XML_TAG_SECTION_HEADER_CERT_CREDENTIAL:Ljava/lang/String; = "CertCredential"

.field private static final XML_TAG_SECTION_HEADER_CREDENTIAL:Ljava/lang/String; = "Credential"

.field private static final XML_TAG_SECTION_HEADER_HOMESP:Ljava/lang/String; = "HomeSP"

.field private static final XML_TAG_SECTION_HEADER_POLICY:Ljava/lang/String; = "Policy"

.field private static final XML_TAG_SECTION_HEADER_POLICY_UPDATE:Ljava/lang/String; = "PolicyUpdate"

.field private static final XML_TAG_SECTION_HEADER_PREFERRED_ROAMING_PARTNER_LIST:Ljava/lang/String; = "RoamingPartnerList"

.field private static final XML_TAG_SECTION_HEADER_PROTO_PORT:Ljava/lang/String; = "ProtoPort"

.field private static final XML_TAG_SECTION_HEADER_REQUIRED_PROTO_PORT_MAP:Ljava/lang/String; = "RequiredProtoPortMap"

.field private static final XML_TAG_SECTION_HEADER_ROAMING_PARTNER:Ljava/lang/String; = "RoamingPartner"

.field private static final XML_TAG_SECTION_HEADER_SIM_CREDENTIAL:Ljava/lang/String; = "SimCredential"

.field private static final XML_TAG_SECTION_HEADER_SUBSCRIPTION_UPDATE:Ljava/lang/String; = "SubscriptionUpdate"

.field private static final XML_TAG_SECTION_HEADER_USER_CREDENTIAL:Ljava/lang/String; = "UserCredential"

.field private static final XML_TAG_SERVER_URI:Ljava/lang/String; = "ServerURI"

.field private static final XML_TAG_SOFT_TOKEN_APP:Ljava/lang/String; = "SoftTokenApp"

.field private static final XML_TAG_SUBSCRIPTION_CREATION_TIME:Ljava/lang/String; = "SubscriptionCreationTime"

.field private static final XML_TAG_SUBSCRIPTION_EXPIRATION_TIME:Ljava/lang/String; = "SubscriptionExpirationTime"

.field private static final XML_TAG_SUBSCRIPTION_TYPE:Ljava/lang/String; = "SubscriptionType"

.field private static final XML_TAG_TRUST_ROOT_CERT_LIST:Ljava/lang/String; = "TrustRootCertList"

.field private static final XML_TAG_TRUST_ROOT_CERT_SHA256_FINGERPRINT:Ljava/lang/String; = "TrustRootCertSHA256Fingerprint"

.field private static final XML_TAG_TRUST_ROOT_CERT_URL:Ljava/lang/String; = "TrustRootCertURL"

.field private static final XML_TAG_UPDATE_IDENTIFIER:Ljava/lang/String; = "UpdateIdentifier"

.field private static final XML_TAG_UPDATE_INTERVAL:Ljava/lang/String; = "UpdateInterval"

.field private static final XML_TAG_UPDATE_METHOD:Ljava/lang/String; = "UpdateMethod"

.field private static final XML_TAG_USAGE_LIMIT_DATA_LIMIT:Ljava/lang/String; = "UsageLimitDataLimit"

.field private static final XML_TAG_USAGE_LIMIT_START_TIME:Ljava/lang/String; = "UsageLimitStartTime"

.field private static final XML_TAG_USAGE_LIMIT_TIME_LIMIT:Ljava/lang/String; = "UsageLimitTimeLimit"

.field private static final XML_TAG_USAGE_LIMIT_TIME_PERIOD:Ljava/lang/String; = "UsageLimitTimePeriod"

.field private static final XML_TAG_USERNAME:Ljava/lang/String; = "Username"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deserializeCertCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .locals 9
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;-><init>()V

    .line 684
    .local v0, "certCredential":Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 685
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 686
    .local v2, "valueName":[Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 687
    .local v3, "value":Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v5, v2, v4

    if-eqz v5, :cond_3

    .line 690
    aget-object v5, v2, v4

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x2828c062

    if-eq v7, v8, :cond_1

    const v8, -0x1103a5a7

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "CertSHA256Fingerprint"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_1
    const-string v1, "CertType"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v6

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 698
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown value under CertCredential: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 695
    :pswitch_0
    move-object v1, v3

    check-cast v1, [B

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertSha256Fingerprint([B)V

    .line 696
    goto :goto_3

    .line 692
    :pswitch_1
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertType(Ljava/lang/String;)V

    .line 693
    nop

    .line 701
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_3
    goto :goto_0

    .line 688
    .restart local v2    # "valueName":[Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Missing value name"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static deserializeCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential;
    .locals 10
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    .line 516
    .local v0, "credential":Landroid/net/wifi/hotspot2/pps/Credential;
    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 517
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->isValueElement(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    .line 519
    new-array v1, v5, [Ljava/lang/String;

    .line 520
    .local v1, "name":[Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 521
    .local v6, "value":Ljava/lang/Object;
    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x638f11c4

    if-eq v8, v9, :cond_3

    const v5, 0x4b2ea6f

    if-eq v8, v5, :cond_2

    const v2, 0x2681df32

    if-eq v8, v2, :cond_1

    const v2, 0x6854026c

    if-eq v8, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "CreationTime"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_1
    const-string v2, "CheckAAAServerCertStatus"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    :cond_2
    const-string v5, "Realm"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_3
    const-string v2, "ExpirationTime"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 535
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown value under Credential: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 532
    :pswitch_0
    move-object v2, v6

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Credential;->setCheckAaaServerCertStatus(Z)V

    .line 533
    goto :goto_3

    .line 529
    :pswitch_1
    move-object v2, v6

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    .line 530
    goto :goto_3

    .line 526
    :pswitch_2
    move-object v2, v6

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setExpirationTimeInMillis(J)V

    .line 527
    goto :goto_3

    .line 523
    :pswitch_3
    move-object v2, v6

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setCreationTimeInMillis(J)V

    .line 524
    nop

    .line 538
    .end local v1    # "name":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :goto_3
    goto/16 :goto_0

    .line 540
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x377c855e

    if-eq v6, v7, :cond_8

    const v4, 0x2fcdd06e

    if-eq v6, v4, :cond_7

    const v2, 0x698fbdbb

    if-eq v6, v2, :cond_6

    goto :goto_4

    :cond_6
    const-string v2, "CertCredential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v2, v5

    goto :goto_5

    :cond_7
    const-string v4, "SimCredential"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_8
    const-string v2, "UserCredential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v2, v4

    goto :goto_5

    :cond_9
    :goto_4
    move v2, v3

    :goto_5
    packed-switch v2, :pswitch_data_1

    .line 554
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown section under Credential: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :pswitch_4
    add-int/lit8 v1, p1, 0x1

    .line 551
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeSimCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v1

    .line 550
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    .line 552
    goto/16 :goto_0

    .line 546
    :pswitch_5
    add-int/lit8 v1, p1, 0x1

    .line 547
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeCertCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v1

    .line 546
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    .line 548
    goto/16 :goto_0

    .line 542
    :pswitch_6
    add-int/lit8 v1, p1, 0x1

    .line 543
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeUserCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    .line 544
    goto/16 :goto_0

    .line 559
    :cond_a
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static deserializeHomeSP(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/HomeSp;
    .locals 8
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    new-instance v0, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    .line 466
    .local v0, "homeSp":Landroid/net/wifi/hotspot2/pps/HomeSp;
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 467
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 468
    .local v2, "valueName":[Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 469
    .local v3, "value":Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    .line 472
    aget-object v5, v2, v4

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "OtherHomePartners"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_1
    const-string v1, "HomeNetworkIDs"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_2
    const-string v7, "FriendlyName"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :sswitch_3
    const-string v1, "FQDN"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_2

    :sswitch_4
    const-string v1, "RoamingConsortiumOIs"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_5
    const-string v1, "IconURL"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_6
    const-string v1, "MatchAnyOIs"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_7
    const-string v1, "MatchAllOIs"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_2

    :cond_0
    :goto_1
    move v1, v6

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 498
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown data under HomeSP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :pswitch_0
    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setOtherHomePartners([Ljava/lang/String;)V

    .line 496
    goto :goto_3

    .line 492
    :pswitch_1
    move-object v1, v3

    check-cast v1, [J

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setRoamingConsortiumOis([J)V

    .line 493
    goto :goto_3

    .line 489
    :pswitch_2
    move-object v1, v3

    check-cast v1, [J

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAnyOis([J)V

    .line 490
    goto :goto_3

    .line 486
    :pswitch_3
    move-object v1, v3

    check-cast v1, [J

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAllOis([J)V

    .line 487
    goto :goto_3

    .line 483
    :pswitch_4
    move-object v1, v3

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setHomeNetworkIds(Ljava/util/Map;)V

    .line 484
    goto :goto_3

    .line 480
    :pswitch_5
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setIconUrl(Ljava/lang/String;)V

    .line 481
    goto :goto_3

    .line 477
    :pswitch_6
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    .line 478
    goto :goto_3

    .line 474
    :pswitch_7
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    .line 475
    nop

    .line 500
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_3
    goto/16 :goto_0

    .line 470
    .restart local v2    # "valueName":[Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Missing value name"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x59b47163 -> :sswitch_7
        -0x5992598e -> :sswitch_6
        -0x3b19d9ea -> :sswitch_5
        -0x14ada3e1 -> :sswitch_4
        0x210a95 -> :sswitch_3
        0x2553ddf6 -> :sswitch_2
        0x505ebc29 -> :sswitch_1
        0x749ec1ba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static deserializePasspointConfiguration(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 10
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    .line 158
    .local v0, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 159
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->isValueElement(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    .line 161
    new-array v1, v6, [Ljava/lang/String;

    .line 162
    .local v1, "name":[Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 163
    .local v7, "value":Ljava/lang/Object;
    aget-object v8, v1, v5

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "TrustRootCertList"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "CredentialPriority"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_2

    :sswitch_2
    const-string v2, "UsageLimitTimePeriod"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_3
    const-string v2, "UsageLimitStartTime"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_2

    :sswitch_4
    const-string v2, "UpdateIdentifier"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_2

    :sswitch_5
    const-string v2, "UsageLimitTimeLimit"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_2

    :sswitch_6
    const-string v3, "SubscriptionCreationTime"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :sswitch_7
    const-string v2, "SubscriptionType"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_8
    const-string v2, "UsageLimitDataLimit"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_2

    :sswitch_9
    const-string v2, "SubscriptionExpirationTime"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_2

    :cond_0
    :goto_1
    move v2, v4

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 195
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown value under PasspointConfiguration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :pswitch_0
    move-object v2, v7

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitTimeLimitInMinutes(J)V

    .line 193
    goto :goto_3

    .line 189
    :pswitch_1
    move-object v2, v7

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitDataLimit(J)V

    .line 190
    goto :goto_3

    .line 186
    :pswitch_2
    move-object v2, v7

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitStartTimeInMillis(J)V

    .line 187
    goto :goto_3

    .line 183
    :pswitch_3
    move-object v2, v7

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitUsageTimePeriodInMinutes(J)V

    .line 184
    goto :goto_3

    .line 180
    :pswitch_4
    move-object v2, v7

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionType(Ljava/lang/String;)V

    .line 181
    goto :goto_3

    .line 177
    :pswitch_5
    move-object v2, v7

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionExpirationTimeInMillis(J)V

    .line 178
    goto :goto_3

    .line 174
    :pswitch_6
    move-object v2, v7

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionCreationTimeInMillis(J)V

    .line 175
    goto :goto_3

    .line 171
    :pswitch_7
    move-object v2, v7

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setTrustRootCertList(Ljava/util/Map;)V

    .line 172
    goto :goto_3

    .line 168
    :pswitch_8
    move-object v2, v7

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredentialPriority(I)V

    .line 169
    goto :goto_3

    .line 165
    :pswitch_9
    move-object v2, v7

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUpdateIdentifier(I)V

    .line 166
    nop

    .line 198
    .end local v1    # "name":[Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :goto_3
    goto/16 :goto_0

    .line 200
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x7ed3d064

    if-eq v7, v8, :cond_5

    const v5, -0x712d6eae

    if-eq v7, v5, :cond_4

    const v3, 0x9ad3066

    if-eq v7, v3, :cond_3

    const v2, 0x4e15c477    # 6.2817018E8f

    if-eq v7, v2, :cond_2

    goto :goto_4

    :cond_2
    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v6

    goto :goto_5

    :cond_3
    const-string v3, "SubscriptionUpdate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_4
    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v3

    goto :goto_5

    :cond_5
    const-string v2, "HomeSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v5

    goto :goto_5

    :cond_6
    :goto_4
    move v2, v4

    :goto_5
    packed-switch v2, :pswitch_data_1

    .line 215
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown section under PasspointConfiguration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :pswitch_a
    add-int/lit8 v1, p1, 0x1

    .line 212
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeUpdateParameter(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    .line 213
    goto/16 :goto_0

    .line 208
    :pswitch_b
    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializePolicy(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Policy;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setPolicy(Landroid/net/wifi/hotspot2/pps/Policy;)V

    .line 209
    goto/16 :goto_0

    .line 205
    :pswitch_c
    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    .line 206
    goto/16 :goto_0

    .line 202
    :pswitch_d
    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeHomeSP(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    .line 203
    goto/16 :goto_0

    .line 220
    :cond_7
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6317d347 -> :sswitch_9
        -0x57405f69 -> :sswitch_8
        -0x50f935e9 -> :sswitch_7
        -0x426d43d7 -> :sswitch_6
        -0x3f6844ac -> :sswitch_5
        0x20c95e72 -> :sswitch_4
        0x408e84b5 -> :sswitch_3
        0x58fcf948 -> :sswitch_2
        0x78443b3b -> :sswitch_1
        0x7eb7ee3c -> :sswitch_0
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
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private static deserializePolicy(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Policy;
    .locals 9
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy;-><init>()V

    .line 574
    .local v0, "policy":Landroid/net/wifi/hotspot2/pps/Policy;
    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 575
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->isValueElement(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 577
    new-array v1, v5, [Ljava/lang/String;

    .line 578
    .local v1, "name":[Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 579
    .local v6, "value":Ljava/lang/Object;
    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "MinRoamingUplinkBandwidth"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_1
    const-string v4, "MinRoamingDownlinkBandwidth"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :sswitch_2
    const-string v2, "ExcludedSSIDList"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_3
    const-string v2, "MinHomeUplinkBandwidth"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_2

    :sswitch_4
    const-string v2, "MinHomeDownlinkBandwidth"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_2

    :sswitch_5
    const-string v2, "MaximumBSSLoadValue"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_2

    :cond_0
    :goto_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_0

    .end local v1    # "name":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 596
    .restart local v1    # "name":[Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/Object;
    :pswitch_0
    move-object v2, v6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Policy;->setMaximumBssLoadValue(I)V

    .end local v1    # "name":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 593
    .restart local v1    # "name":[Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/Object;
    :pswitch_1
    move-object v2, v6

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Policy;->setExcludedSsidList([Ljava/lang/String;)V

    .line 594
    goto :goto_3

    .line 590
    :pswitch_2
    move-object v2, v6

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingUplinkBandwidth(J)V

    .line 591
    goto :goto_3

    .line 587
    :pswitch_3
    move-object v2, v6

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingDownlinkBandwidth(J)V

    .line 588
    goto :goto_3

    .line 584
    :pswitch_4
    move-object v2, v6

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeUplinkBandwidth(J)V

    .line 585
    goto :goto_3

    .line 581
    :pswitch_5
    move-object v2, v6

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeDownlinkBandwidth(J)V

    .line 582
    nop

    .line 599
    .end local v1    # "name":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :goto_3
    goto/16 :goto_0

    .line 601
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x7eaff433

    if-eq v6, v7, :cond_4

    const v2, -0x65fa0f45

    if-eq v6, v2, :cond_3

    const v2, -0x1100308e

    if-eq v6, v2, :cond_2

    goto :goto_4

    :cond_2
    const-string v2, "RequiredProtoPortMap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v4

    goto :goto_5

    :cond_3
    const-string v2, "PolicyUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v5

    goto :goto_5

    :cond_4
    const-string v4, "RoamingPartnerList"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    move v2, v3

    :goto_5
    packed-switch v2, :pswitch_data_1

    .line 614
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown section under Policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 610
    :pswitch_6
    add-int/lit8 v1, p1, 0x1

    .line 611
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializePreferredRoamingPartnerList(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/List;

    move-result-object v1

    .line 610
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setPreferredRoamingPartnerList(Ljava/util/List;)V

    .line 612
    goto/16 :goto_0

    .line 607
    :pswitch_7
    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeUpdateParameter(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setPolicyUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    .line 608
    goto/16 :goto_0

    .line 603
    :pswitch_8
    add-int/lit8 v1, p1, 0x1

    .line 604
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeProtoPortMap(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/Map;

    move-result-object v1

    .line 603
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setRequiredProtoPortMap(Ljava/util/Map;)V

    .line 605
    goto/16 :goto_0

    .line 619
    :cond_6
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x9f251d7 -> :sswitch_5
        0xd9b9644 -> :sswitch_4
        0x17d090ab -> :sswitch_3
        0x318ca2a3 -> :sswitch_2
        0x696751ae -> :sswitch_1
        0x73481e95 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private static deserializePreferredRoamingPartnerList(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/List;
    .locals 2
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v0, "roamingPartnerList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;>;"
    :goto_0
    const-string v1, "RoamingPartner"

    invoke-static {p0, v1, p1}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithNameOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeRoamingPartner(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 756
    :cond_0
    return-object v0
.end method

.method private static deserializeProtoPortMap(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/Map;
    .locals 4
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 862
    .local v0, "protoPortMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_0
    const-string v1, "ProtoPort"

    invoke-static {p0, v1, p1}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithNameOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    const-string v1, "Proto"

    invoke-static {p0, v1}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 865
    .local v1, "proto":I
    const-string v2, "Ports"

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 866
    .local v2, "ports":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    .end local v1    # "proto":I
    .end local v2    # "ports":Ljava/lang/String;
    goto :goto_0

    .line 868
    :cond_0
    return-object v0
.end method

.method private static deserializeRoamingPartner(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    .locals 9
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 771
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;-><init>()V

    .line 772
    .local v0, "partner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 773
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 774
    .local v2, "valueName":[Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 775
    .local v3, "value":Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v5, v2, v4

    if-eqz v5, :cond_5

    .line 778
    aget-object v5, v2, v4

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x696fe985

    if-eq v7, v8, :cond_3

    const v1, -0x419d223c

    if-eq v7, v1, :cond_2

    const v1, -0x37ee456c

    if-eq v7, v1, :cond_1

    const v1, 0x210a95

    if-eq v7, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "FQDN"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_2

    :cond_1
    const-string v1, "Countries"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_2

    :cond_2
    const-string v1, "Priority"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_2

    :cond_3
    const-string v7, "FQDNExactMatch"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v6

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 792
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown value under RoamingPartner: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 789
    :pswitch_0
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setCountries(Ljava/lang/String;)V

    .line 790
    goto :goto_3

    .line 786
    :pswitch_1
    move-object v1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setPriority(I)V

    .line 787
    goto :goto_3

    .line 783
    :pswitch_2
    move-object v1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdnExactMatch(Z)V

    .line 784
    goto :goto_3

    .line 780
    :pswitch_3
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdn(Ljava/lang/String;)V

    .line 781
    nop

    .line 795
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_3
    goto/16 :goto_0

    .line 776
    .restart local v2    # "valueName":[Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_5
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Missing value name"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 796
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static deserializeSimCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    .locals 9
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>()V

    .line 718
    .local v0, "simCredential":Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 719
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 720
    .local v2, "valueName":[Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 721
    .local v3, "value":Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v5, v2, v4

    if-eqz v5, :cond_3

    .line 724
    aget-object v5, v2, v4

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x4a77ab72

    if-eq v7, v8, :cond_1

    const v1, 0x225a7a

    if-eq v7, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "IMSI"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_1
    const-string v7, "EAPType"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v6

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 732
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown value under CertCredential: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 729
    :pswitch_0
    move-object v1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    .line 730
    goto :goto_3

    .line 726
    :pswitch_1
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setImsi(Ljava/lang/String;)V

    .line 727
    nop

    .line 735
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_3
    goto :goto_0

    .line 722
    .restart local v2    # "valueName":[Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Missing value name"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 736
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static deserializeUpdateParameter(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 8
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 810
    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>()V

    .line 811
    .local v0, "param":Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 812
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 813
    .local v2, "valueName":[Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 814
    .local v3, "value":Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    .line 817
    aget-object v5, v2, v4

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "ServerURI"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_1
    const-string v1, "TrustRootCertURL"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_2
    const-string v1, "Password"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_3
    const-string v1, "UpdateInterval"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_2

    :sswitch_4
    const-string v1, "Restriction"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_5
    const-string v1, "Username"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_6
    const-string v1, "TrustRootCertSHA256Fingerprint"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_7
    const-string v7, "UpdateMethod"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    move v1, v6

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 843
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown value under UpdateParameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 840
    :pswitch_0
    move-object v1, v3

    check-cast v1, [B

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertSha256Fingerprint([B)V

    .line 841
    goto :goto_3

    .line 837
    :pswitch_1
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertUrl(Ljava/lang/String;)V

    .line 838
    goto :goto_3

    .line 834
    :pswitch_2
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setBase64EncodedPassword(Ljava/lang/String;)V

    .line 835
    goto :goto_3

    .line 831
    :pswitch_3
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUsername(Ljava/lang/String;)V

    .line 832
    goto :goto_3

    .line 828
    :pswitch_4
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setServerUri(Ljava/lang/String;)V

    .line 829
    goto :goto_3

    .line 825
    :pswitch_5
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setRestriction(Ljava/lang/String;)V

    .line 826
    goto :goto_3

    .line 822
    :pswitch_6
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateMethod(Ljava/lang/String;)V

    .line 823
    goto :goto_3

    .line 819
    :pswitch_7
    move-object v1, v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateIntervalInMinutes(J)V

    .line 820
    nop

    .line 846
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_3
    goto/16 :goto_0

    .line 815
    .restart local v2    # "valueName":[Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Missing value name"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 847
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x394f30d6 -> :sswitch_7
        -0x111b64a1 -> :sswitch_6
        -0xbfc130a -> :sswitch_5
        0x65dbbac -> :sswitch_4
        0x1a2474ce -> :sswitch_3
        0x4c641ebb -> :sswitch_2
        0x672f5811 -> :sswitch_1
        0x6bad4f09 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static deserializeUserCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .locals 8
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;-><init>()V

    .line 635
    .local v0, "userCredential":Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 636
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 637
    .local v2, "valueName":[Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 638
    .local v3, "value":Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    .line 641
    aget-object v5, v2, v4

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "SoftTokenApp"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_1
    const-string v7, "Password"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :sswitch_2
    const-string v1, "MachineManaged"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_3
    const-string v1, "NonEAPInnerMethod"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_4
    const-string v1, "AbleToShare"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_5
    const-string v1, "Username"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_2

    :sswitch_6
    const-string v1, "EAPType"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_2

    :cond_0
    :goto_1
    move v1, v6

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 664
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown value under UserCredential: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 661
    :pswitch_0
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    .line 662
    goto :goto_3

    .line 658
    :pswitch_1
    move-object v1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setEapType(I)V

    .line 659
    goto :goto_3

    .line 655
    :pswitch_2
    move-object v1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setAbleToShare(Z)V

    .line 656
    goto :goto_3

    .line 652
    :pswitch_3
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setSoftTokenApp(Ljava/lang/String;)V

    .line 653
    goto :goto_3

    .line 649
    :pswitch_4
    move-object v1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setMachineManaged(Z)V

    .line 650
    goto :goto_3

    .line 646
    :pswitch_5
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setPassword(Ljava/lang/String;)V

    .line 647
    goto :goto_3

    .line 643
    :pswitch_6
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setUsername(Ljava/lang/String;)V

    .line 644
    nop

    .line 667
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_3
    goto/16 :goto_0

    .line 639
    .restart local v2    # "valueName":[Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Missing value name"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 668
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4a77ab72 -> :sswitch_6
        -0xbfc130a -> :sswitch_5
        -0x76408b6 -> :sswitch_4
        0xb8d46f0 -> :sswitch_3
        0x3e562178 -> :sswitch_2
        0x4c641ebb -> :sswitch_1
        0x5416bbd2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isValueElement(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 888
    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static serializeCertCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "certCredential"    # Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    if-nez p1, :cond_0

    .line 346
    return-void

    .line 348
    :cond_0
    const-string v0, "CertCredential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 349
    const-string v0, "CertType"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->getCertType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    const-string v0, "CertSHA256Fingerprint"

    .line 351
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->getCertSha256Fingerprint()[B

    move-result-object v1

    .line 350
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    const-string v0, "CertCredential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method private static serializeCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential;)V
    .locals 3
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "credential"    # Landroid/net/wifi/hotspot2/pps/Credential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    if-nez p1, :cond_0

    .line 260
    return-void

    .line 262
    :cond_0
    const-string v0, "Credential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 263
    const-string v0, "CreationTime"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential;->getCreationTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    const-string v0, "ExpirationTime"

    .line 265
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential;->getExpirationTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 264
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    const-string v0, "Realm"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    const-string v0, "CheckAAAServerCertStatus"

    .line 268
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential;->getCheckAaaServerCertStatus()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 267
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential;->getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeUserCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    .line 270
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential;->getCertCredential()Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeCertCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    .line 271
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeSimCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    .line 272
    const-string v0, "Credential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private static serializeHomeSp(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/HomeSp;)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "homeSp"    # Landroid/net/wifi/hotspot2/pps/HomeSp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    if-nez p1, :cond_0

    .line 234
    return-void

    .line 236
    :cond_0
    const-string v0, "HomeSP"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 237
    const-string v0, "FQDN"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    const-string v0, "FriendlyName"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    const-string v0, "IconURL"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    const-string v0, "HomeNetworkIDs"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getHomeNetworkIds()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    const-string v0, "MatchAllOIs"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getMatchAllOis()[J

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    const-string v0, "MatchAnyOIs"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getMatchAnyOis()[J

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    const-string v0, "OtherHomePartners"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getOtherHomePartners()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    const-string v0, "RoamingConsortiumOIs"

    .line 245
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getRoamingConsortiumOis()[J

    move-result-object v1

    .line 244
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    const-string v0, "HomeSP"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public static serializePasspointConfiguration(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 3
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    const-string v0, "UpdateIdentifier"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUpdateIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string v0, "CredentialPriority"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredentialPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    const-string v0, "TrustRootCertList"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getTrustRootCertList()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    const-string v0, "SubscriptionCreationTime"

    .line 127
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getSubscriptionCreationTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 126
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v0, "SubscriptionExpirationTime"

    .line 129
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getSubscriptionExpirationTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 128
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v0, "SubscriptionType"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getSubscriptionType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v0, "UsageLimitTimePeriod"

    .line 132
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUsageLimitUsageTimePeriodInMinutes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 131
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v0, "UsageLimitStartTime"

    .line 134
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUsageLimitStartTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 133
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v0, "UsageLimitDataLimit"

    .line 136
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUsageLimitDataLimit()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 135
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v0, "UsageLimitTimeLimit"

    .line 138
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUsageLimitTimeLimitInMinutes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 137
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeHomeSp(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    .line 140
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential;)V

    .line 141
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getPolicy()Landroid/net/wifi/hotspot2/pps/Policy;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializePolicy(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Policy;)V

    .line 142
    const-string v0, "SubscriptionUpdate"

    .line 143
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getSubscriptionUpdate()Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v1

    .line 142
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeUpdateParameter(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    .line 144
    return-void
.end method

.method private static serializePolicy(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 3
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "policy"    # Landroid/net/wifi/hotspot2/pps/Policy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    if-nez p1, :cond_0

    .line 286
    return-void

    .line 288
    :cond_0
    const-string v0, "Policy"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 289
    const-string v0, "MinHomeDownlinkBandwidth"

    .line 290
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getMinHomeDownlinkBandwidth()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 289
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    const-string v0, "MinHomeUplinkBandwidth"

    .line 292
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getMinHomeUplinkBandwidth()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 291
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    const-string v0, "MinRoamingDownlinkBandwidth"

    .line 294
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getMinRoamingDownlinkBandwidth()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 293
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    const-string v0, "MinRoamingUplinkBandwidth"

    .line 296
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getMinRoamingUplinkBandwidth()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 295
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    const-string v0, "ExcludedSSIDList"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getExcludedSsidList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    const-string v0, "MaximumBSSLoadValue"

    .line 299
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getMaximumBssLoadValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 298
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getRequiredProtoPortMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeProtoPortMap(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V

    .line 301
    const-string v0, "PolicyUpdate"

    .line 302
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getPolicyUpdate()Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v1

    .line 301
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeUpdateParameter(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    .line 303
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getPreferredRoamingPartnerList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializePreferredRoamingPartnerList(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 304
    const-string v0, "Policy"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method private static serializePreferredRoamingPartnerList(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 4
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    .local p1, "preferredRoamingPartnerList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;>;"
    if-nez p1, :cond_0

    .line 387
    return-void

    .line 389
    :cond_0
    const-string v0, "RoamingPartnerList"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 390
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    .line 391
    .local v1, "partner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    const-string v2, "RoamingPartner"

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 392
    const-string v2, "FQDN"

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->getFqdn()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    const-string v2, "FQDNExactMatch"

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->getFqdnExactMatch()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    const-string v2, "Priority"

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->getPriority()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    const-string v2, "Countries"

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->getCountries()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    const-string v2, "RoamingPartner"

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 397
    .end local v1    # "partner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    goto :goto_0

    .line 398
    :cond_1
    const-string v0, "RoamingPartnerList"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method private static serializeProtoPortMap(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V
    .locals 4
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    .local p1, "protoPortMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 442
    return-void

    .line 444
    :cond_0
    const-string v0, "RequiredProtoPortMap"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 445
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 446
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v2, "ProtoPort"

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 447
    const-string v2, "Proto"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    const-string v2, "Ports"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    const-string v2, "ProtoPort"

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 450
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_0

    .line 451
    :cond_1
    const-string v0, "RequiredProtoPortMap"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method private static serializeSimCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "simCredential"    # Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    if-nez p1, :cond_0

    .line 367
    return-void

    .line 369
    :cond_0
    const-string v0, "SimCredential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 370
    const-string v0, "IMSI"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    const-string v0, "EAPType"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getEapType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    const-string v0, "SimCredential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private static serializeUpdateParameter(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V
    .locals 3
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "param"    # Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    if-nez p2, :cond_0

    .line 414
    return-void

    .line 416
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 417
    const-string v0, "UpdateInterval"

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getUpdateIntervalInMinutes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    const-string v0, "UpdateMethod"

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getUpdateMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    const-string v0, "Restriction"

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getRestriction()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    const-string v0, "ServerURI"

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getServerUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    const-string v0, "Username"

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 422
    const-string v0, "Password"

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getBase64EncodedPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    const-string v0, "TrustRootCertURL"

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getTrustRootCertUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    const-string v0, "TrustRootCertSHA256Fingerprint"

    .line 425
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getTrustRootCertSha256Fingerprint()[B

    move-result-object v1

    .line 424
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 426
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method private static serializeUserCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "userCredential"    # Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    if-nez p1, :cond_0

    .line 319
    return-void

    .line 321
    :cond_0
    const-string v0, "UserCredential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 322
    const-string v0, "Username"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    const-string v0, "Password"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    const-string v0, "MachineManaged"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getMachineManaged()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    const-string v0, "SoftTokenApp"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getSoftTokenApp()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    const-string v0, "AbleToShare"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getAbleToShare()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    const-string v0, "EAPType"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getEapType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    const-string v0, "NonEAPInnerMethod"

    .line 329
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getNonEapInnerMethod()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    const-string v0, "UserCredential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 331
    return-void
.end method
