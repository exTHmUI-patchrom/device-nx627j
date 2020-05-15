.class public Lcom/android/server/wifi/util/XmlUtil$IpConfigurationXmlUtil;
.super Ljava/lang/Object;
.source "XmlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/XmlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpConfigurationXmlUtil"
.end annotation


# static fields
.field public static final XML_TAG_DNS_SERVER_ADDRESSES:Ljava/lang/String; = "DNSServers"

.field public static final XML_TAG_GATEWAY_ADDRESS:Ljava/lang/String; = "GatewayAddress"

.field public static final XML_TAG_IP_ASSIGNMENT:Ljava/lang/String; = "IpAssignment"

.field public static final XML_TAG_LINK_ADDRESS:Ljava/lang/String; = "LinkAddress"

.field public static final XML_TAG_LINK_PREFIX_LENGTH:Ljava/lang/String; = "LinkPrefixLength"

.field public static final XML_TAG_PROXY_EXCLUSION_LIST:Ljava/lang/String; = "ProxyExclusionList"

.field public static final XML_TAG_PROXY_HOST:Ljava/lang/String; = "ProxyHost"

.field public static final XML_TAG_PROXY_PAC_FILE:Ljava/lang/String; = "ProxyPac"

.field public static final XML_TAG_PROXY_PORT:Ljava/lang/String; = "ProxyPort"

.field public static final XML_TAG_PROXY_SETTINGS:Ljava/lang/String; = "ProxySettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/IpConfiguration;
    .locals 9
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 869
    new-instance v0, Landroid/net/IpConfiguration;

    invoke-direct {v0}, Landroid/net/IpConfiguration;-><init>()V

    .line 872
    .local v0, "ipConfiguration":Landroid/net/IpConfiguration;
    const-string v1, "IpAssignment"

    .line 873
    invoke-static {p0, v1}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 874
    .local v1, "ipAssignmentString":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v2

    .line 875
    .local v2, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    invoke-virtual {v0, v2}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 876
    sget-object v3, Lcom/android/server/wifi/util/XmlUtil$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual {v2}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 884
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown ip assignment type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 882
    :pswitch_0
    goto :goto_0

    .line 878
    :pswitch_1
    invoke-static {p0}, Lcom/android/server/wifi/util/XmlUtil$IpConfigurationXmlUtil;->parseStaticIpConfigurationFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/net/StaticIpConfiguration;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 879
    nop

    .line 888
    :goto_0
    const-string v3, "ProxySettings"

    .line 889
    invoke-static {p0, v3}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 890
    .local v3, "proxySettingsString":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    .line 891
    .local v4, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    invoke-virtual {v0, v4}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 892
    sget-object v5, Lcom/android/server/wifi/util/XmlUtil$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual {v4}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 913
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown proxy settings type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 911
    :pswitch_2
    goto :goto_1

    .line 905
    :pswitch_3
    const-string v5, "ProxyPac"

    .line 906
    invoke-static {p0, v5}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 907
    .local v5, "proxyPacFile":Ljava/lang/String;
    new-instance v6, Landroid/net/ProxyInfo;

    invoke-direct {v6, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 908
    goto :goto_1

    .line 894
    .end local v5    # "proxyPacFile":Ljava/lang/String;
    :pswitch_4
    const-string v5, "ProxyHost"

    .line 895
    invoke-static {p0, v5}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 896
    .local v5, "proxyHost":Ljava/lang/String;
    const-string v6, "ProxyPort"

    .line 897
    invoke-static {p0, v6}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 898
    .local v6, "proxyPort":I
    const-string v7, "ProxyExclusionList"

    .line 899
    invoke-static {p0, v7}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 901
    .local v7, "proxyExclusionList":Ljava/lang/String;
    new-instance v8, Landroid/net/ProxyInfo;

    invoke-direct {v8, v5, v6, v7}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 903
    nop

    .line 916
    .end local v5    # "proxyHost":Ljava/lang/String;
    .end local v6    # "proxyPort":I
    .end local v7    # "proxyExclusionList":Ljava/lang/String;
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static parseStaticIpConfigurationFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/net/StaticIpConfiguration;
    .locals 10
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 820
    .local v0, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    const-string v1, "LinkAddress"

    .line 821
    invoke-static {p0, v1}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 822
    .local v1, "linkAddressString":Ljava/lang/String;
    const-string v2, "LinkPrefixLength"

    .line 823
    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 824
    .local v2, "linkPrefixLength":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 825
    new-instance v3, Landroid/net/LinkAddress;

    .line 826
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 827
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 828
    .local v3, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_0

    .line 829
    iput-object v3, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    goto :goto_0

    .line 831
    :cond_0
    const-string v4, "WifiXmlUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-IPv4 address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    .end local v3    # "linkAddress":Landroid/net/LinkAddress;
    :cond_1
    :goto_0
    const-string v3, "GatewayAddress"

    .line 835
    invoke-static {p0, v3}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 836
    .local v3, "gatewayAddressString":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 837
    const/4 v4, 0x0

    .line 838
    .local v4, "dest":Landroid/net/LinkAddress;
    nop

    .line 839
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 840
    .local v5, "gateway":Ljava/net/InetAddress;
    new-instance v6, Landroid/net/RouteInfo;

    invoke-direct {v6, v4, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 841
    .local v6, "route":Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 842
    iput-object v5, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_1

    .line 844
    :cond_2
    const-string v7, "WifiXmlUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Non-IPv4 default route: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    .end local v4    # "dest":Landroid/net/LinkAddress;
    .end local v5    # "gateway":Ljava/net/InetAddress;
    .end local v6    # "route":Landroid/net/RouteInfo;
    :cond_3
    :goto_1
    const-string v4, "DNSServers"

    .line 848
    invoke-static {p0, v4}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 849
    .local v4, "dnsServerAddressesString":[Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 850
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 851
    .local v7, "dnsServerAddressString":Ljava/lang/String;
    nop

    .line 852
    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 853
    .local v8, "dnsServerAddress":Ljava/net/InetAddress;
    iget-object v9, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    .end local v7    # "dnsServerAddressString":Ljava/lang/String;
    .end local v8    # "dnsServerAddress":Ljava/net/InetAddress;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 856
    :cond_4
    return-object v0
.end method

.method private static writeStaticIpConfigurationToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/StaticIpConfiguration;)V
    .locals 6
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    iget-object v0, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 730
    const-string v0, "LinkAddress"

    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 732
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 730
    invoke-static {p0, v0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 733
    const-string v0, "LinkPrefixLength"

    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 735
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 733
    invoke-static {p0, v0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 737
    :cond_0
    const-string v0, "LinkAddress"

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 739
    const-string v0, "LinkPrefixLength"

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 742
    :goto_0
    iget-object v0, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    .line 743
    const-string v0, "GatewayAddress"

    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 745
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-static {p0, v0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 747
    :cond_1
    const-string v0, "GatewayAddress"

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 751
    :goto_1
    iget-object v0, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 753
    iget-object v0, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 754
    .local v0, "dnsServers":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 755
    .local v1, "dnsServerIdx":I
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 756
    .local v3, "inetAddr":Ljava/net/InetAddress;
    add-int/lit8 v4, v1, 0x1

    .local v4, "dnsServerIdx":I
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 757
    .end local v1    # "dnsServerIdx":I
    .end local v3    # "inetAddr":Ljava/net/InetAddress;
    nop

    .line 755
    move v1, v4

    goto :goto_2

    .line 758
    .end local v4    # "dnsServerIdx":I
    .restart local v1    # "dnsServerIdx":I
    :cond_2
    const-string v2, "DNSServers"

    invoke-static {p0, v2, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 760
    .end local v0    # "dnsServers":[Ljava/lang/String;
    .end local v1    # "dnsServerIdx":I
    goto :goto_3

    .line 761
    :cond_3
    const-string v0, "DNSServers"

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 764
    :goto_3
    return-void
.end method

.method public static writeToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/IpConfiguration;)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "ipConfiguration"    # Landroid/net/IpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    const-string v0, "IpAssignment"

    iget-object v1, p1, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 777
    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 778
    sget-object v0, Lcom/android/server/wifi/util/XmlUtil$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    iget-object v1, p1, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 780
    :cond_0
    nop

    .line 781
    invoke-virtual {p1}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 780
    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil$IpConfigurationXmlUtil;->writeStaticIpConfigurationToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/StaticIpConfiguration;)V

    .line 782
    nop

    .line 788
    :goto_0
    const-string v0, "ProxySettings"

    iget-object v1, p1, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 790
    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v1

    .line 788
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 791
    sget-object v0, Lcom/android/server/wifi/util/XmlUtil$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    iget-object v1, p1, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 804
    :pswitch_0
    const-string v0, "ProxyPac"

    iget-object v1, p1, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 806
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 804
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 807
    goto :goto_1

    .line 793
    :pswitch_1
    const-string v0, "ProxyHost"

    iget-object v1, p1, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 795
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 793
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 796
    const-string v0, "ProxyPort"

    iget-object v1, p1, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 798
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 796
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 799
    const-string v0, "ProxyExclusionList"

    iget-object v1, p1, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 801
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v1

    .line 799
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 802
    nop

    .line 811
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
