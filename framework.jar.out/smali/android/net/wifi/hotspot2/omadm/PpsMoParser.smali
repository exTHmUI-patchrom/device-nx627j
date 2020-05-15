.class public final Landroid/net/wifi/hotspot2/omadm/PpsMoParser;
.super Ljava/lang/Object;
.source "PpsMoParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;,
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;,
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;,
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
    }
.end annotation


# static fields
.field private static final NODE_AAA_SERVER_TRUST_ROOT:Ljava/lang/String; = "AAAServerTrustRoot"

.field private static final NODE_ABLE_TO_SHARE:Ljava/lang/String; = "AbleToShare"

.field private static final NODE_CERTIFICATE_TYPE:Ljava/lang/String; = "CertificateType"

.field private static final NODE_CERT_SHA256_FINGERPRINT:Ljava/lang/String; = "CertSHA256Fingerprint"

.field private static final NODE_CERT_URL:Ljava/lang/String; = "CertURL"

.field private static final NODE_CHECK_AAA_SERVER_CERT_STATUS:Ljava/lang/String; = "CheckAAAServerCertStatus"

.field private static final NODE_COUNTRY:Ljava/lang/String; = "Country"

.field private static final NODE_CREATION_DATE:Ljava/lang/String; = "CreationDate"

.field private static final NODE_CREDENTIAL:Ljava/lang/String; = "Credential"

.field private static final NODE_CREDENTIAL_PRIORITY:Ljava/lang/String; = "CredentialPriority"

.field private static final NODE_DATA_LIMIT:Ljava/lang/String; = "DataLimit"

.field private static final NODE_DIGITAL_CERTIFICATE:Ljava/lang/String; = "DigitalCertificate"

.field private static final NODE_DOWNLINK_BANDWIDTH:Ljava/lang/String; = "DLBandwidth"

.field private static final NODE_EAP_METHOD:Ljava/lang/String; = "EAPMethod"

.field private static final NODE_EAP_TYPE:Ljava/lang/String; = "EAPType"

.field private static final NODE_EXPIRATION_DATE:Ljava/lang/String; = "ExpirationDate"

.field private static final NODE_EXTENSION:Ljava/lang/String; = "Extension"

.field private static final NODE_FQDN:Ljava/lang/String; = "FQDN"

.field private static final NODE_FQDN_MATCH:Ljava/lang/String; = "FQDN_Match"

.field private static final NODE_FRIENDLY_NAME:Ljava/lang/String; = "FriendlyName"

.field private static final NODE_HESSID:Ljava/lang/String; = "HESSID"

.field private static final NODE_HOMESP:Ljava/lang/String; = "HomeSP"

.field private static final NODE_HOME_OI:Ljava/lang/String; = "HomeOI"

.field private static final NODE_HOME_OI_LIST:Ljava/lang/String; = "HomeOIList"

.field private static final NODE_HOME_OI_REQUIRED:Ljava/lang/String; = "HomeOIRequired"

.field private static final NODE_ICON_URL:Ljava/lang/String; = "IconURL"

.field private static final NODE_INNER_EAP_TYPE:Ljava/lang/String; = "InnerEAPType"

.field private static final NODE_INNER_METHOD:Ljava/lang/String; = "InnerMethod"

.field private static final NODE_INNER_VENDOR_ID:Ljava/lang/String; = "InnerVendorID"

.field private static final NODE_INNER_VENDOR_TYPE:Ljava/lang/String; = "InnerVendorType"

.field private static final NODE_IP_PROTOCOL:Ljava/lang/String; = "IPProtocol"

.field private static final NODE_MACHINE_MANAGED:Ljava/lang/String; = "MachineManaged"

.field private static final NODE_MAXIMUM_BSS_LOAD_VALUE:Ljava/lang/String; = "MaximumBSSLoadValue"

.field private static final NODE_MIN_BACKHAUL_THRESHOLD:Ljava/lang/String; = "MinBackhaulThreshold"

.field private static final NODE_NETWORK_ID:Ljava/lang/String; = "NetworkID"

.field private static final NODE_NETWORK_TYPE:Ljava/lang/String; = "NetworkType"

.field private static final NODE_OTHER:Ljava/lang/String; = "Other"

.field private static final NODE_OTHER_HOME_PARTNERS:Ljava/lang/String; = "OtherHomePartners"

.field private static final NODE_PASSWORD:Ljava/lang/String; = "Password"

.field private static final NODE_PER_PROVIDER_SUBSCRIPTION:Ljava/lang/String; = "PerProviderSubscription"

.field private static final NODE_POLICY:Ljava/lang/String; = "Policy"

.field private static final NODE_POLICY_UPDATE:Ljava/lang/String; = "PolicyUpdate"

.field private static final NODE_PORT_NUMBER:Ljava/lang/String; = "PortNumber"

.field private static final NODE_PREFERRED_ROAMING_PARTNER_LIST:Ljava/lang/String; = "PreferredRoamingPartnerList"

.field private static final NODE_PRIORITY:Ljava/lang/String; = "Priority"

.field private static final NODE_REALM:Ljava/lang/String; = "Realm"

.field private static final NODE_REQUIRED_PROTO_PORT_TUPLE:Ljava/lang/String; = "RequiredProtoPortTuple"

.field private static final NODE_RESTRICTION:Ljava/lang/String; = "Restriction"

.field private static final NODE_ROAMING_CONSORTIUM_OI:Ljava/lang/String; = "RoamingConsortiumOI"

.field private static final NODE_SIM:Ljava/lang/String; = "SIM"

.field private static final NODE_SIM_IMSI:Ljava/lang/String; = "IMSI"

.field private static final NODE_SOFT_TOKEN_APP:Ljava/lang/String; = "SoftTokenApp"

.field private static final NODE_SP_EXCLUSION_LIST:Ljava/lang/String; = "SPExclusionList"

.field private static final NODE_SSID:Ljava/lang/String; = "SSID"

.field private static final NODE_START_DATE:Ljava/lang/String; = "StartDate"

.field private static final NODE_SUBSCRIPTION_PARAMETER:Ljava/lang/String; = "SubscriptionParameter"

.field private static final NODE_SUBSCRIPTION_UPDATE:Ljava/lang/String; = "SubscriptionUpdate"

.field private static final NODE_TIME_LIMIT:Ljava/lang/String; = "TimeLimit"

.field private static final NODE_TRUST_ROOT:Ljava/lang/String; = "TrustRoot"

.field private static final NODE_TYPE_OF_SUBSCRIPTION:Ljava/lang/String; = "TypeOfSubscription"

.field private static final NODE_UPDATE_IDENTIFIER:Ljava/lang/String; = "UpdateIdentifier"

.field private static final NODE_UPDATE_INTERVAL:Ljava/lang/String; = "UpdateInterval"

.field private static final NODE_UPDATE_METHOD:Ljava/lang/String; = "UpdateMethod"

.field private static final NODE_UPLINK_BANDWIDTH:Ljava/lang/String; = "ULBandwidth"

.field private static final NODE_URI:Ljava/lang/String; = "URI"

.field private static final NODE_USAGE_LIMITS:Ljava/lang/String; = "UsageLimits"

.field private static final NODE_USAGE_TIME_PERIOD:Ljava/lang/String; = "UsageTimePeriod"

.field private static final NODE_USERNAME:Ljava/lang/String; = "Username"

.field private static final NODE_USERNAME_PASSWORD:Ljava/lang/String; = "UsernamePassword"

.field private static final NODE_VENDOR_ID:Ljava/lang/String; = "VendorId"

.field private static final NODE_VENDOR_TYPE:Ljava/lang/String; = "VendorType"

.field private static final PPS_MO_URN:Ljava/lang/String; = "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

.field private static final TAG:Ljava/lang/String; = "PpsMoParser"

.field private static final TAG_DDF_NAME:Ljava/lang/String; = "DDFName"

.field private static final TAG_MANAGEMENT_TREE:Ljava/lang/String; = "MgmtTree"

.field private static final TAG_NODE:Ljava/lang/String; = "Node"

.field private static final TAG_NODE_NAME:Ljava/lang/String; = "NodeName"

.field private static final TAG_RT_PROPERTIES:Ljava/lang/String; = "RTProperties"

.field private static final TAG_TYPE:Ljava/lang/String; = "Type"

.field private static final TAG_VALUE:Ljava/lang/String; = "Value"

.field private static final TAG_VER_DTD:Ljava/lang/String; = "VerDTD"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildPpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .locals 10
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "nodeName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 536
    .local v1, "nodeValue":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v2, "childNodes":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 540
    .local v3, "parsedNodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 541
    .local v5, "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 542
    .local v6, "tag":Ljava/lang/String;
    const-string v7, "NodeName"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 543
    if-nez v0, :cond_0

    .line 546
    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 544
    :cond_0
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v7, "Duplicate NodeName node"

    invoke-direct {v4, v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 547
    :cond_1
    const-string v7, "Node"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 548
    invoke-static {v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->buildPpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    move-result-object v7

    .line 549
    .local v7, "ppsNode":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 552
    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    .end local v7    # "ppsNode":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    goto :goto_1

    .line 550
    .restart local v7    # "ppsNode":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_2
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Duplicate node: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 554
    .end local v7    # "ppsNode":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_3
    const-string v7, "Value"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 555
    if-nez v1, :cond_4

    .line 558
    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v1

    .line 562
    .end local v5    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .end local v6    # "tag":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 556
    .restart local v5    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .restart local v6    # "tag":Ljava/lang/String;
    :cond_4
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v7, "Duplicate Value node"

    invoke-direct {v4, v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 560
    :cond_5
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 564
    .end local v5    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .end local v6    # "tag":Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_c

    .line 567
    if-nez v1, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    .line 568
    :cond_7
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid node: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " missing both value and children"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 571
    :cond_8
    :goto_2
    if-eqz v1, :cond_a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_9

    goto :goto_3

    .line 572
    :cond_9
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid node: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " contained both value and children"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 576
    :cond_a
    :goto_3
    if-eqz v1, :cond_b

    .line 577
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;

    invoke-direct {v4, v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 579
    :cond_b
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;

    invoke-direct {v4, v0, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v4

    .line 565
    :cond_c
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v5, "Invalid node: missing NodeName"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static convertFromLongList(Ljava/util/List;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 1651
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 1652
    .local v0, "objectArray":[Ljava/lang/Long;
    array-length v1, v0

    new-array v1, v1, [J

    .line 1653
    .local v1, "primitiveArray":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1654
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1653
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1656
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .locals 3
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 591
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 592
    :cond_0
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get value from a non-leaf node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseAAAServerTrustRootList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1493
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1496
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1497
    .local v0, "certList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1498
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseTrustRoot(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v3

    .line 1499
    .local v3, "certTuple":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [B

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v3    # "certTuple":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    goto :goto_0

    .line 1501
    :cond_0
    return-object v0

    .line 1494
    .end local v0    # "certList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_1
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for AAAServerTrustRoot"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseCertificateCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .locals 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1026
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1030
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;-><init>()V

    .line 1031
    .local v0, "certCred":Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1032
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x721ea6af

    if-eq v5, v6, :cond_1

    const v6, -0x1103a5a7

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "CertSHA256Fingerprint"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const-string v5, "CertificateType"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    :cond_2
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 1040
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under DigitalCertificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1037
    :pswitch_0
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHexString(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertSha256Fingerprint([B)V

    .line 1038
    goto :goto_2

    .line 1034
    :pswitch_1
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertType(Ljava/lang/String;)V

    .line 1035
    nop

    .line 1043
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto :goto_0

    .line 1044
    :cond_3
    return-object v0

    .line 1027
    .end local v0    # "certCred":Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    :cond_4
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for DigitalCertificate"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 898
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_2

    .line 902
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    .line 903
    .local v0, "credential":Landroid/net/wifi/hotspot2/pps/Credential;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 904
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "CreationDate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "CheckAAAServerCertStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_2
    const-string v5, "UsernamePassword"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "Realm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_4
    const-string v5, "SIM"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_5
    const-string v5, "DigitalCertificate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_6
    const-string v5, "ExpirationDate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 928
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under Credential: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 925
    :pswitch_0
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSimCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    .line 926
    goto :goto_2

    .line 921
    :pswitch_1
    nop

    .line 922
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 921
    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setCheckAaaServerCertStatus(Z)V

    .line 923
    goto :goto_2

    .line 918
    :pswitch_2
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    .line 919
    goto :goto_2

    .line 915
    :pswitch_3
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseCertificateCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    .line 916
    goto :goto_2

    .line 912
    :pswitch_4
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    .line 913
    goto :goto_2

    .line 909
    :pswitch_5
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setExpirationTimeInMillis(J)V

    .line 910
    goto :goto_2

    .line 906
    :pswitch_6
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setCreationTimeInMillis(J)V

    .line 907
    nop

    .line 931
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto/16 :goto_0

    .line 932
    :cond_1
    return-object v0

    .line 899
    .end local v0    # "credential":Landroid/net/wifi/hotspot2/pps/Credential;
    :cond_2
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for HomeSP"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x639674e3 -> :sswitch_6
        -0x48058781 -> :sswitch_5
        0x140b7 -> :sswitch_4
        0x4b2ea6f -> :sswitch_3
        0x1d7eb5b1 -> :sswitch_2
        0x2681df32 -> :sswitch_1
        0x684c9f4d -> :sswitch_0
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

.method private static parseDate(Ljava/lang/String;)J
    .locals 4
    .param p0, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1607
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1608
    .local v0, "format":Ljava/text/DateFormat;
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 1609
    .end local v0    # "format":Ljava/text/DateFormat;
    :catch_0
    move-exception v0

    .line 1610
    .local v0, "pe":Ljava/text/ParseException;
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Badly formatted time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseEAPMethod(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V
    .locals 5
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "userCred"    # Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 989
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_2

    .line 993
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 994
    .local v1, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "InnerVendorID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_1
    const-string v4, "InnerMethod"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "InnerVendorType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_3
    const-string v4, "EAPType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_4
    const-string v4, "VendorType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_5
    const-string v4, "InnerEAPType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_6
    const-string v4, "VendorId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 1011
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown node under EAPMethod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :pswitch_0
    const-string v2, "PpsMoParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore unsupported EAP method parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    goto :goto_2

    .line 999
    :pswitch_1
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    .line 1000
    goto :goto_2

    .line 996
    :pswitch_2
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setEapType(I)V

    .line 997
    nop

    .line 1013
    .end local v1    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto/16 :goto_0

    .line 1014
    :cond_1
    return-void

    .line 990
    :cond_2
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for EAPMethod"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7a1b1f5d -> :sswitch_6
        -0x65b65268 -> :sswitch_5
        -0x5fcb5f3e -> :sswitch_4
        -0x4a77ab72 -> :sswitch_3
        0x204d3378 -> :sswitch_2
        0x35b51ab7 -> :sswitch_1
        0x394ea8b9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static parseHexString(Ljava/lang/String;)[B
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1582
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    .line 1586
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 1587
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1588
    mul-int/lit8 v2, v1, 0x2

    .line 1590
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x2

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1593
    nop

    .line 1587
    .end local v2    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1591
    .restart local v2    # "index":I
    :catch_0
    move-exception v3

    .line 1592
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid hex string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1595
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    return-object v0

    .line 1583
    .end local v0    # "result":[B
    :cond_1
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Odd length hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseHomeOIInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 8
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 805
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_6

    .line 809
    const/4 v0, 0x0

    .line 810
    .local v0, "oi":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 811
    .local v1, "required":Ljava/lang/Boolean;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 812
    .local v3, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x7ed3d0e7

    if-eq v6, v7, :cond_1

    const v7, -0x73586a28

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "HomeOIRequired"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const-string v6, "HomeOI"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    :cond_2
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 824
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown node under NetworkID instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 821
    :pswitch_0
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 822
    goto :goto_2

    .line 815
    :pswitch_1
    :try_start_0
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 818
    nop

    .line 827
    .end local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto :goto_0

    .line 816
    .restart local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :catch_0
    move-exception v2

    .line 817
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid HomeOI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 828
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_3
    if-eqz v0, :cond_5

    .line 831
    if-eqz v1, :cond_4

    .line 834
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 832
    :cond_4
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v3, "HomeOI instance missing required field"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 829
    :cond_5
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v3, "HomeOI instance missing OI field"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 806
    .end local v0    # "oi":Ljava/lang/Long;
    .end local v1    # "required":Ljava/lang/Boolean;
    :cond_6
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for HomeOI instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseHomeOIList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 777
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_2

    .line 781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v0, "matchAllOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v1, "matchAnyOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 784
    .local v3, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHomeOIInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v4

    .line 785
    .local v4, "homeOI":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 786
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 788
    :cond_0
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    .end local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v4    # "homeOI":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :goto_1
    goto :goto_0

    .line 791
    :cond_1
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 778
    .end local v0    # "matchAllOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "matchAnyOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for HomeOIList"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseHomeSP(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/HomeSp;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 653
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_2

    .line 657
    new-instance v0, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    .line 658
    .local v0, "homeSp":Landroid/net/wifi/hotspot2/pps/HomeSp;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 659
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "OtherHomePartners"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_1
    const-string v5, "FriendlyName"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "RoamingConsortiumOI"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "FQDN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_4
    const-string v5, "NetworkID"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "IconURL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_6
    const-string v5, "HomeOIList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x5

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 685
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under HomeSP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 682
    :pswitch_0
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseOtherHomePartners(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setOtherHomePartners([Ljava/lang/String;)V

    .line 683
    goto :goto_2

    .line 677
    :pswitch_1
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHomeOIList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v3

    .line 678
    .local v3, "homeOIs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/Long;>;Ljava/util/List<Ljava/lang/Long;>;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->convertFromLongList(Ljava/util/List;)[J

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAllOis([J)V

    .line 679
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->convertFromLongList(Ljava/util/List;)[J

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAnyOis([J)V

    .line 680
    goto :goto_2

    .line 674
    .end local v3    # "homeOIs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/Long;>;Ljava/util/List<Ljava/lang/Long;>;>;"
    :pswitch_2
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseNetworkIds(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setHomeNetworkIds(Ljava/util/Map;)V

    .line 675
    goto :goto_2

    .line 671
    :pswitch_3
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setIconUrl(Ljava/lang/String;)V

    .line 672
    goto :goto_2

    .line 667
    :pswitch_4
    nop

    .line 668
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseRoamingConsortiumOI(Ljava/lang/String;)[J

    move-result-object v3

    .line 667
    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setRoamingConsortiumOis([J)V

    .line 669
    goto :goto_2

    .line 664
    :pswitch_5
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    .line 665
    goto :goto_2

    .line 661
    :pswitch_6
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    .line 662
    nop

    .line 687
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto/16 :goto_0

    .line 688
    :cond_1
    return-object v0

    .line 654
    .end local v0    # "homeSp":Landroid/net/wifi/hotspot2/pps/HomeSp;
    :cond_2
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for HomeSP"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x5cfee0a9 -> :sswitch_6
        -0x3b19d9ea -> :sswitch_5
        -0xd9a5057 -> :sswitch_4
        0x210a95 -> :sswitch_3
        0x205d7ed4 -> :sswitch_2
        0x2553ddf6 -> :sswitch_1
        0x749ec1ba -> :sswitch_0
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

.method private static parseInteger(Ljava/lang/String;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1623
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1624
    :catch_0
    move-exception v0

    .line 1625
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid integer value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseLong(Ljava/lang/String;I)J
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1638
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1639
    :catch_0
    move-exception v0

    .line 1640
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid long integer value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseMinBackhaulThreshold(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 2
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "policy"    # Landroid/net/wifi/hotspot2/pps/Policy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1200
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1203
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1204
    .local v1, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v1, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseMinBackhaulThresholdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V

    .line 1205
    .end local v1    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    goto :goto_0

    .line 1206
    :cond_0
    return-void

    .line 1201
    :cond_1
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for MinBackhaulThreshold"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseMinBackhaulThresholdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 11
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "policy"    # Landroid/net/wifi/hotspot2/pps/Policy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1219
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1222
    const/4 v0, 0x0

    .line 1223
    .local v0, "networkType":Ljava/lang/String;
    const-wide/high16 v1, -0x8000000000000000L

    .line 1224
    .local v1, "downlinkBandwidth":J
    const-wide/high16 v3, -0x8000000000000000L

    .line 1225
    .local v3, "uplinkBandwidth":J
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1226
    .local v6, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x1041c198

    if-eq v9, v10, :cond_2

    const v10, -0x7fc3026

    if-eq v9, v10, :cond_1

    const v10, 0x14d3f109

    if-eq v9, v10, :cond_0

    goto :goto_1

    :cond_0
    const-string v9, "DLBandwidth"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const-string v9, "ULBandwidth"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v8, 0x2

    goto :goto_1

    :cond_2
    const-string v9, "NetworkType"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v8, 0x0

    :cond_3
    :goto_1
    const/16 v7, 0xa

    packed-switch v8, :pswitch_data_0

    .line 1237
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown node under MinBackhaulThreshold instance "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1234
    :pswitch_0
    invoke-static {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    .line 1235
    goto :goto_2

    .line 1231
    :pswitch_1
    invoke-static {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 1232
    goto :goto_2

    .line 1228
    :pswitch_2
    invoke-static {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v0

    .line 1229
    nop

    .line 1240
    .end local v6    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto :goto_0

    .line 1241
    :cond_4
    if-eqz v0, :cond_7

    .line 1245
    const-string v5, "home"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1246
    invoke-virtual {p1, v1, v2}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeDownlinkBandwidth(J)V

    .line 1247
    invoke-virtual {p1, v3, v4}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeUplinkBandwidth(J)V

    goto :goto_3

    .line 1248
    :cond_5
    const-string/jumbo v5, "roaming"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1249
    invoke-virtual {p1, v1, v2}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingDownlinkBandwidth(J)V

    .line 1250
    invoke-virtual {p1, v3, v4}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingUplinkBandwidth(J)V

    .line 1254
    :goto_3
    return-void

    .line 1252
    :cond_6
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid network type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1242
    :cond_7
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v6, "Missing NetworkType field"

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1220
    .end local v0    # "networkType":Ljava/lang/String;
    .end local v1    # "downlinkBandwidth":J
    .end local v3    # "uplinkBandwidth":J
    :cond_8
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for MinBackhaulThreshold instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseMoText(Ljava/lang/String;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 11
    .param p0, "xmlString"    # Ljava/lang/String;

    .line 342
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/XMLParser;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/omadm/XMLParser;-><init>()V

    .line 343
    .local v0, "xmlParser":Landroid/net/wifi/hotspot2/omadm/XMLParser;
    const/4 v1, 0x0

    move-object v2, v1

    .line 345
    .local v2, "root":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/net/wifi/hotspot2/omadm/XMLParser;->parse(Ljava/lang/String;)Landroid/net/wifi/hotspot2/omadm/XMLNode;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 348
    nop

    .line 349
    if-nez v2, :cond_0

    .line 350
    return-object v1

    .line 354
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MgmtTree"

    if-eq v3, v4, :cond_1

    .line 355
    const-string v3, "PpsMoParser"

    const-string v4, "Root is not a MgmtTree"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-object v1

    .line 359
    :cond_1
    const/4 v3, 0x0

    .line 360
    .local v3, "verDtd":Ljava/lang/String;
    const/4 v4, 0x0

    .line 361
    .local v4, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 362
    .local v6, "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x677b18af

    if-eq v9, v10, :cond_3

    const v10, 0x252222

    if-eq v9, v10, :cond_2

    goto :goto_1

    :cond_2
    const-string v9, "Node"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const-string v9, "VerDTD"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v8, 0x0

    :cond_4
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 383
    const-string v5, "PpsMoParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown node: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-object v1

    .line 371
    :pswitch_0
    if-eqz v4, :cond_5

    .line 372
    const-string v5, "PpsMoParser"

    const-string v7, "Unexpected multiple Node element under MgmtTree"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-object v1

    .line 376
    :cond_5
    :try_start_1
    invoke-static {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v7
    :try_end_1
    .catch Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v7

    .line 380
    goto :goto_2

    .line 377
    :catch_0
    move-exception v5

    .line 378
    .local v5, "e":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
    const-string v7, "PpsMoParser"

    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-object v1

    .line 364
    .end local v5    # "e":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
    :pswitch_1
    if-eqz v3, :cond_6

    .line 365
    const-string v5, "PpsMoParser"

    const-string v7, "Duplicate VerDTD element"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-object v1

    .line 368
    :cond_6
    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v3

    .line 369
    nop

    .line 386
    .end local v6    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :goto_2
    goto :goto_0

    .line 387
    :cond_7
    return-object v4

    .line 346
    .end local v3    # "verDtd":Ljava/lang/String;
    .end local v4    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :catch_1
    move-exception v3

    .line 347
    .local v3, "e":Ljava/lang/Exception;
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseNetworkIdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 8
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 742
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_5

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "ssid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 748
    .local v1, "hessid":Ljava/lang/Long;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 749
    .local v3, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x26fb7b

    if-eq v6, v7, :cond_1

    const v7, 0x7ed03df8

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "HESSID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const-string v6, "SSID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    :cond_2
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 757
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown node under NetworkID instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 754
    :pswitch_0
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 755
    goto :goto_2

    .line 751
    :pswitch_1
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v0

    .line 752
    nop

    .line 760
    .end local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto :goto_0

    .line 761
    :cond_3
    if-eqz v0, :cond_4

    .line 764
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 762
    :cond_4
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v3, "NetworkID instance missing SSID"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 743
    .end local v0    # "ssid":Ljava/lang/String;
    .end local v1    # "hessid":Ljava/lang/Long;
    :cond_5
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for NetworkID instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseNetworkIds(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 718
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 722
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 723
    .local v0, "networkIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 724
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseNetworkIdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v3

    .line 725
    .local v3, "networkId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v3    # "networkId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_0

    .line 727
    :cond_0
    return-object v0

    .line 719
    .end local v0    # "networkIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for NetworkID"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseOtherHomePartnerInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .locals 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 870
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_5

    .line 873
    const/4 v0, 0x0

    .line 874
    .local v0, "fqdn":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 875
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x210a95

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "FQDN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 877
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v0

    .line 878
    nop

    .line 883
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    goto :goto_0

    .line 880
    .restart local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_2
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under OtherHomePartner instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 884
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_3
    if-eqz v0, :cond_4

    .line 887
    return-object v0

    .line 885
    :cond_4
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v2, "OtherHomePartner instance missing FQDN field"

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 871
    .end local v0    # "fqdn":Ljava/lang/String;
    :cond_5
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for OtherHomePartner instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseOtherHomePartners(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;
    .locals 4
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 848
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v0, "otherHomePartners":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 853
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseOtherHomePartnerInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    .line 854
    .local v3, "fqdn":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v3    # "fqdn":Ljava/lang/String;
    goto :goto_0

    .line 856
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 849
    .end local v0    # "otherHomePartners":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for OtherHomePartners"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parsePolicy(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1085
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1089
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy;-><init>()V

    .line 1090
    .local v0, "policy":Landroid/net/wifi/hotspot2/pps/Policy;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1091
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "PreferredRoamingPartnerList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "RequiredProtoPortTuple"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_2
    const-string v5, "SPExclusionList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_3
    const-string v5, "MaximumBSSLoadValue"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_4
    const-string v5, "MinBackhaulThreshold"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_5
    const-string v5, "PolicyUpdate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 1111
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under Policy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1108
    :pswitch_0
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMaximumBssLoadValue(I)V

    .line 1109
    goto :goto_2

    .line 1105
    :pswitch_1
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseRequiredProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setRequiredProtoPortMap(Ljava/util/Map;)V

    .line 1106
    goto :goto_2

    .line 1102
    :pswitch_2
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSpExclusionList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setExcludedSsidList([Ljava/lang/String;)V

    .line 1103
    goto :goto_2

    .line 1099
    :pswitch_3
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUpdateParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setPolicyUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    .line 1100
    goto :goto_2

    .line 1096
    :pswitch_4
    invoke-static {v2, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseMinBackhaulThreshold(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V

    .line 1097
    goto :goto_2

    .line 1093
    :pswitch_5
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePreferredRoamingPartnerList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setPreferredRoamingPartnerList(Ljava/util/List;)V

    .line 1094
    nop

    .line 1113
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto/16 :goto_0

    .line 1114
    :cond_1
    return-object v0

    .line 1086
    .end local v0    # "policy":Landroid/net/wifi/hotspot2/pps/Policy;
    :cond_2
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for Policy"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x65fa0f45 -> :sswitch_5
        -0x10c3dc9e -> :sswitch_4
        -0x9f251d7 -> :sswitch_3
        0x22edf02f -> :sswitch_2
        0x2eb5845e -> :sswitch_1
        0x4fbd41ee -> :sswitch_0
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
.end method

.method private static parsePpsInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 6
    .param p0, "root"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 606
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_2

    .line 610
    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    .line 611
    .local v0, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 612
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "CredentialPriority"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_1
    const-string v5, "Extension"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_2
    const-string v5, "Credential"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "AAAServerTrustRoot"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string v5, "SubscriptionUpdate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "SubscriptionParameter"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string v5, "Policy"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_7
    const-string v5, "HomeSP"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 639
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 636
    :pswitch_0
    const-string v3, "PpsMoParser"

    const-string v4, "Ignore Extension node for vendor specific information"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    goto :goto_2

    .line 632
    :pswitch_1
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredentialPriority(I)V

    .line 633
    goto :goto_2

    .line 629
    :pswitch_2
    invoke-static {v2, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSubscriptionParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    .line 630
    goto :goto_2

    .line 626
    :pswitch_3
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUpdateParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    .line 627
    goto :goto_2

    .line 623
    :pswitch_4
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseAAAServerTrustRootList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setTrustRootCertList(Ljava/util/Map;)V

    .line 624
    goto :goto_2

    .line 620
    :pswitch_5
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePolicy(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setPolicy(Landroid/net/wifi/hotspot2/pps/Policy;)V

    .line 621
    goto :goto_2

    .line 617
    :pswitch_6
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    .line 618
    goto :goto_2

    .line 614
    :pswitch_7
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHomeSP(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    .line 615
    nop

    .line 641
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto/16 :goto_0

    .line 642
    :cond_1
    return-object v0

    .line 607
    .end local v0    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :cond_2
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for PPS instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7ed3d064 -> :sswitch_7
        -0x712d6eae -> :sswitch_6
        -0x61e4514 -> :sswitch_5
        0x9ad3066 -> :sswitch_4
        0x12bd88f6 -> :sswitch_3
        0x4e15c477 -> :sswitch_2
        0x52ef3c1f -> :sswitch_1
        0x78443b3b -> :sswitch_0
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

.method private static parsePpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 10
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    const/4 v1, 0x0

    .line 416
    .local v1, "nodeName":Ljava/lang/String;
    const/high16 v2, -0x80000000

    .line 417
    .local v2, "updateIdentifier":I
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/high16 v5, -0x80000000

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 418
    .local v4, "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x6e6ef6eb

    if-eq v8, v9, :cond_2

    const v9, 0x252222

    if-eq v8, v9, :cond_1

    const v9, 0x46c82fcd

    if-eq v8, v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v8, "NodeName"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    const-string v8, "Node"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const-string v8, "RTProperties"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v7, 0x2

    :cond_3
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 454
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag under PPS node: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 448
    :pswitch_0
    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUrn(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Ljava/lang/String;

    move-result-object v5

    .line 449
    .local v5, "urn":Ljava/lang/String;
    const-string/jumbo v6, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 449
    .end local v4    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .end local v5    # "urn":Ljava/lang/String;
    goto :goto_2

    .line 450
    .restart local v4    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .restart local v5    # "urn":Ljava/lang/String;
    :cond_4
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 432
    .end local v5    # "urn":Ljava/lang/String;
    :pswitch_1
    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->buildPpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    move-result-object v6

    .line 433
    .local v6, "ppsNodeRoot":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UpdateIdentifier"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 434
    if-ne v2, v5, :cond_5

    .line 437
    invoke-static {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 435
    :cond_5
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v5, "Multiple node for UpdateIdentifier"

    invoke-direct {v3, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 440
    :cond_6
    if-nez v0, :cond_7

    .line 443
    invoke-static {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePpsInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v0

    .line 445
    goto :goto_2

    .line 441
    :cond_7
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v5, "Multiple PPS instance"

    invoke-direct {v3, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 420
    .end local v6    # "ppsNodeRoot":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :pswitch_2
    if-nez v1, :cond_9

    .line 423
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v1

    .line 424
    const-string v5, "PerProviderSubscription"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 456
    .end local v4    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :goto_2
    goto/16 :goto_0

    .line 425
    .restart local v4    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :cond_8
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected NodeName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 421
    :cond_9
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate NodeName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 457
    .end local v4    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :cond_a
    if-eqz v0, :cond_b

    if-eq v2, v5, :cond_b

    .line 458
    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUpdateIdentifier(I)V

    .line 460
    :cond_b
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parsePreferredRoamingPartner(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    .locals 10
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1149
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1154
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;-><init>()V

    .line 1155
    .local v0, "roamingPartner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1156
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x63b0108a    # -6.880005E-22f

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v5, v6, :cond_2

    const v6, -0x419d223c

    if-eq v5, v6, :cond_1

    const v6, 0x1239537b

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "FQDN_Match"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v8

    goto :goto_1

    :cond_1
    const-string v5, "Priority"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v9

    goto :goto_1

    :cond_2
    const-string v5, "Country"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v7

    :cond_3
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 1182
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under PreferredRoamingPartnerList instance "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1179
    :pswitch_0
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setCountries(Ljava/lang/String;)V

    .line 1180
    goto :goto_2

    .line 1176
    :pswitch_1
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setPriority(I)V

    .line 1177
    goto :goto_2

    .line 1161
    :pswitch_2
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    .line 1162
    .local v3, "fqdnMatch":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1163
    .local v4, "fqdnMatchArray":[Ljava/lang/String;
    array-length v5, v4

    if-ne v5, v7, :cond_6

    .line 1166
    aget-object v5, v4, v8

    invoke-virtual {v0, v5}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdn(Ljava/lang/String;)V

    .line 1167
    aget-object v5, v4, v9

    const-string v6, "exactMatch"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1168
    invoke-virtual {v0, v9}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdnExactMatch(Z)V

    goto :goto_2

    .line 1169
    :cond_4
    aget-object v5, v4, v9

    const-string v6, "includeSubdomains"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1170
    invoke-virtual {v0, v8}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdnExactMatch(Z)V

    .line 1185
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v3    # "fqdnMatch":Ljava/lang/String;
    .end local v4    # "fqdnMatchArray":[Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 1172
    .restart local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .restart local v3    # "fqdnMatch":Ljava/lang/String;
    .restart local v4    # "fqdnMatchArray":[Ljava/lang/String;
    :cond_5
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid FQDN_Match: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1164
    :cond_6
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid FQDN_Match: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1186
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v3    # "fqdnMatch":Ljava/lang/String;
    .end local v4    # "fqdnMatchArray":[Ljava/lang/String;
    :cond_7
    return-object v0

    .line 1150
    .end local v0    # "roamingPartner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    :cond_8
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for PreferredRoamingPartner instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parsePreferredRoamingPartnerList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/List;
    .locals 4
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1128
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1132
    .local v0, "partnerList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1133
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePreferredRoamingPartner(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    goto :goto_0

    .line 1135
    :cond_0
    return-object v0

    .line 1129
    .end local v0    # "partnerList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;>;"
    :cond_1
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for PreferredRoamingPartnerList"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 8
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1455
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1459
    const/high16 v0, -0x80000000

    .line 1460
    .local v0, "proto":I
    const/4 v1, 0x0

    .line 1461
    .local v1, "ports":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1462
    .local v3, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x38c71b21

    if-eq v6, v7, :cond_1

    const v7, 0x66f6174a

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "PortNumber"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const-string v6, "IPProtocol"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    :cond_2
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 1470
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown node under RequiredProtoPortTuple instance"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1467
    :pswitch_0
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v1

    .line 1468
    goto :goto_2

    .line 1464
    :pswitch_1
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v0

    .line 1465
    nop

    .line 1473
    .end local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto :goto_0

    .line 1474
    :cond_3
    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_5

    .line 1477
    if-eqz v1, :cond_4

    .line 1480
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 1478
    :cond_4
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v3, "Missing PortNumber field"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1475
    :cond_5
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v3, "Missing IPProtocol field"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1456
    .end local v0    # "proto":I
    .end local v1    # "ports":Ljava/lang/String;
    :cond_6
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for RequiredProtoPortTuple instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseRequiredProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1433
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1437
    .local v0, "protoPortTupleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1438
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v3

    .line 1439
    .local v3, "protoPortTuple":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v3    # "protoPortTuple":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_0

    .line 1441
    :cond_0
    return-object v0

    .line 1434
    .end local v0    # "protoPortTupleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for RequiredProtoPortTuple"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseRoamingConsortiumOI(Ljava/lang/String;)[J
    .locals 5
    .param p0, "oiStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 700
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "oiStrArray":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [J

    .line 702
    .local v1, "oiArray":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 703
    aget-object v3, v0, v2

    const/16 v4, 0x10

    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 702
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 705
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static parseSimCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    .locals 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1057
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1061
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>()V

    .line 1062
    .local v0, "simCred":Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1063
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x4a77ab72

    if-eq v5, v6, :cond_1

    const v6, 0x225a7a

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "IMSI"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const-string v5, "EAPType"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 1071
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under SIM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1068
    :pswitch_0
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    .line 1069
    goto :goto_2

    .line 1065
    :pswitch_1
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setImsi(Ljava/lang/String;)V

    .line 1066
    nop

    .line 1073
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto :goto_0

    .line 1074
    :cond_3
    return-object v0

    .line 1058
    .end local v0    # "simCred":Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    :cond_4
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for SIM"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseSpExclusionInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .locals 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1407
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1410
    const/4 v0, 0x0

    .line 1411
    .local v0, "ssid":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1412
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x26fb7b

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "SSID"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 1414
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v0

    .line 1415
    nop

    .line 1419
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    goto :goto_0

    .line 1417
    .restart local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_2
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v3, "Unknown node under SPExclusion instance"

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1420
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_3
    return-object v0

    .line 1408
    .end local v0    # "ssid":Ljava/lang/String;
    :cond_4
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for SPExclusion instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseSpExclusionList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;
    .locals 4
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1388
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    .local v0, "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1393
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSpExclusionInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1394
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    goto :goto_0

    .line 1395
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 1389
    .end local v0    # "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for SPExclusionList"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseSubscriptionParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1514
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1517
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1518
    .local v1, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x730b3f07

    if-eq v4, v5, :cond_3

    const v5, -0x639674e3

    if-eq v4, v5, :cond_2

    const v5, -0x62ae6572

    if-eq v4, v5, :cond_1

    const v5, 0x684c9f4d

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "CreationDate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const-string v4, "TypeOfSubscription"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    const-string v4, "ExpirationDate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "UsageLimits"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x3

    :cond_4
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 1532
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown node under SubscriptionParameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1529
    :pswitch_0
    invoke-static {v1, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUsageLimits(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    .line 1530
    goto :goto_2

    .line 1526
    :pswitch_1
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionType(Ljava/lang/String;)V

    .line 1527
    goto :goto_2

    .line 1523
    :pswitch_2
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionExpirationTimeInMillis(J)V

    .line 1524
    goto :goto_2

    .line 1520
    :pswitch_3
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionCreationTimeInMillis(J)V

    .line 1521
    nop

    .line 1535
    .end local v1    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto/16 :goto_0

    .line 1536
    :cond_5
    return-void

    .line 1515
    :cond_6
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for SubscriptionParameter"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseTrustRoot(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 8
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1357
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1361
    const/4 v0, 0x0

    .line 1362
    .local v0, "certUrl":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1363
    .local v1, "certFingerprint":[B
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1364
    .local v3, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x74e88b75

    if-eq v6, v7, :cond_1

    const v7, -0x1103a5a7

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "CertSHA256Fingerprint"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const-string v6, "CertURL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    :cond_2
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 1372
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown node under TrustRoot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1369
    :pswitch_0
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHexString(Ljava/lang/String;)[B

    move-result-object v1

    .line 1370
    goto :goto_2

    .line 1366
    :pswitch_1
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v0

    .line 1367
    nop

    .line 1375
    .end local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto :goto_0

    .line 1376
    :cond_3
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 1358
    .end local v0    # "certUrl":Ljava/lang/String;
    .end local v1    # "certFingerprint":[B
    :cond_4
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for TrustRoot"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseUpdateParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1268
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1272
    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>()V

    .line 1273
    .local v0, "updateParam":Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1274
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "UsernamePassword"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_1
    const-string v5, "UpdateInterval"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_2
    const-string v5, "Restriction"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "Other"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_4
    const-string v5, "URI"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_5
    const-string v5, "TrustRoot"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string v5, "UpdateMethod"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 1301
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under Update Parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1298
    :pswitch_0
    const-string v3, "PpsMoParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore unsupported paramter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    goto :goto_2

    .line 1293
    :pswitch_1
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseTrustRoot(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v3

    .line 1294
    .local v3, "trustRoot":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertUrl(Ljava/lang/String;)V

    .line 1295
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v0, v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertSha256Fingerprint([B)V

    .line 1296
    goto :goto_2

    .line 1288
    .end local v3    # "trustRoot":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :pswitch_2
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUpdateUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v3

    .line 1289
    .local v3, "usernamePassword":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUsername(Ljava/lang/String;)V

    .line 1290
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setBase64EncodedPassword(Ljava/lang/String;)V

    .line 1291
    goto :goto_2

    .line 1285
    .end local v3    # "usernamePassword":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_3
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setServerUri(Ljava/lang/String;)V

    .line 1286
    goto :goto_2

    .line 1282
    :pswitch_4
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setRestriction(Ljava/lang/String;)V

    .line 1283
    goto :goto_2

    .line 1279
    :pswitch_5
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateMethod(Ljava/lang/String;)V

    .line 1280
    goto :goto_2

    .line 1276
    :pswitch_6
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateIntervalInMinutes(J)V

    .line 1277
    nop

    .line 1304
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto/16 :goto_0

    .line 1305
    :cond_1
    return-object v0

    .line 1269
    .end local v0    # "updateParam":Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    :cond_2
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for Update Parameters"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x394f30d6 -> :sswitch_6
        -0x1f4598c6 -> :sswitch_5
        0x1494c -> :sswitch_4
        0x48f8ef0 -> :sswitch_3
        0x65dbbac -> :sswitch_2
        0x1a2474ce -> :sswitch_1
        0x1d7eb5b1 -> :sswitch_0
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

.method private static parseUpdateUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 8
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1320
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1324
    const/4 v0, 0x0

    .line 1325
    .local v0, "username":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1326
    .local v1, "password":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1327
    .local v3, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0xbfc130a

    if-eq v6, v7, :cond_1

    const v7, 0x4c641ebb    # 5.98003E7f

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "Password"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const-string v6, "Username"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    :cond_2
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 1335
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown node under UsernamePassword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1332
    :pswitch_0
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v1

    .line 1333
    goto :goto_2

    .line 1329
    :pswitch_1
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v0

    .line 1330
    nop

    .line 1338
    .end local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto :goto_0

    .line 1339
    :cond_3
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 1321
    .end local v0    # "username":Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    :cond_4
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for UsernamePassword"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseUrn(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Ljava/lang/String;
    .locals 5
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 477
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 480
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 481
    .local v0, "typeNode":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 484
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Type"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 489
    .local v1, "ddfNameNode":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DDFName"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 493
    :cond_0
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected tag for DDFName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 490
    :cond_1
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v3, "Expect DDFName node to have no child"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 485
    .end local v1    # "ddfNameNode":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :cond_2
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected tag for Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_3
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v2, "Expect Type node to only have one child"

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 478
    .end local v0    # "typeNode":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :cond_4
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Expect RTPProperties node to only have one child"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseUsageLimits(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1549
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1552
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1553
    .local v1, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x77fb8f0

    if-eq v4, v5, :cond_3

    const v5, 0x22fde34f

    if-eq v4, v5, :cond_2

    const v5, 0x60b8c611

    if-eq v4, v5, :cond_1

    const v5, 0x7890e0ce

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "TimeLimit"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const-string v4, "DataLimit"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const-string v4, "UsageTimePeriod"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x3

    goto :goto_1

    :cond_3
    const-string v4, "StartDate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    :goto_1
    const/16 v2, 0xa

    packed-switch v3, :pswitch_data_0

    .line 1568
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown node under UsageLimits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1564
    :pswitch_0
    nop

    .line 1565
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 1564
    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitUsageTimePeriodInMinutes(J)V

    .line 1566
    goto :goto_2

    .line 1561
    :pswitch_1
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitTimeLimitInMinutes(J)V

    .line 1562
    goto :goto_2

    .line 1558
    :pswitch_2
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitStartTimeInMillis(J)V

    .line 1559
    goto :goto_2

    .line 1555
    :pswitch_3
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitDataLimit(J)V

    .line 1556
    nop

    .line 1571
    .end local v1    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto/16 :goto_0

    .line 1572
    :cond_5
    return-void

    .line 1550
    :cond_6
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for UsageLimits"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 945
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_2

    .line 949
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;-><init>()V

    .line 950
    .local v0, "userCred":Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 951
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "EAPMethod"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_1
    const-string v5, "SoftTokenApp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_2
    const-string v5, "Password"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "MachineManaged"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_4
    const-string v5, "AbleToShare"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "Username"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 971
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under UsernamPassword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 968
    :pswitch_0
    invoke-static {v2, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseEAPMethod(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    .line 969
    goto :goto_2

    .line 965
    :pswitch_1
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setAbleToShare(Z)V

    .line 966
    goto :goto_2

    .line 962
    :pswitch_2
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setSoftTokenApp(Ljava/lang/String;)V

    .line 963
    goto :goto_2

    .line 959
    :pswitch_3
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setMachineManaged(Z)V

    .line 960
    goto :goto_2

    .line 956
    :pswitch_4
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setPassword(Ljava/lang/String;)V

    .line 957
    goto :goto_2

    .line 953
    :pswitch_5
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setUsername(Ljava/lang/String;)V

    .line 954
    nop

    .line 974
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_2
    goto/16 :goto_0

    .line 975
    :cond_1
    return-object v0

    .line 946
    .end local v0    # "userCred":Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    :cond_2
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for UsernamePassword"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0xbfc130a -> :sswitch_5
        -0x76408b6 -> :sswitch_4
        0x3e562178 -> :sswitch_3
        0x4c641ebb -> :sswitch_2
        0x5416bbd2 -> :sswitch_1
        0x67bb9135 -> :sswitch_0
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
.end method
