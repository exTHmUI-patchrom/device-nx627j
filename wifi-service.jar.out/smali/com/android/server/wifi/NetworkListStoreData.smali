.class public Lcom/android/server/wifi/NetworkListStoreData;
.super Ljava/lang/Object;
.source "NetworkListStoreData.java"

# interfaces
.implements Lcom/android/server/wifi/WifiConfigStore$StoreData;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkListStoreData"

.field private static final XML_TAG_SECTION_HEADER_IP_CONFIGURATION:Ljava/lang/String; = "IpConfiguration"

.field private static final XML_TAG_SECTION_HEADER_NETWORK:Ljava/lang/String; = "Network"

.field private static final XML_TAG_SECTION_HEADER_NETWORK_LIST:Ljava/lang/String; = "NetworkList"

.field private static final XML_TAG_SECTION_HEADER_NETWORK_STATUS:Ljava/lang/String; = "NetworkStatus"

.field private static final XML_TAG_SECTION_HEADER_WIFI_CONFIGURATION:Ljava/lang/String; = "WifiConfiguration"

.field private static final XML_TAG_SECTION_HEADER_WIFI_ENTERPRISE_CONFIGURATION:Ljava/lang/String; = "WifiEnterpriseConfiguration"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSharedConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mUserConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/wifi/NetworkListStoreData;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private parseNetwork(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/WifiConfiguration;
    .locals 12
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "parsedConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v1, 0x0

    .line 244
    .local v1, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v2, 0x0

    .line 245
    .local v2, "ipConfiguration":Landroid/net/IpConfiguration;
    const/4 v3, 0x0

    .line 247
    .local v3, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 248
    .local v5, "headerName":[Ljava/lang/String;
    :goto_0
    invoke-static {p1, v5, p2}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionOrEnd(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 249
    const/4 v6, 0x0

    aget-object v7, v5, v6

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x8d99460

    if-eq v9, v10, :cond_3

    const v10, 0x2c51fc1

    if-eq v9, v10, :cond_2

    const v10, 0x136c26ef

    if-eq v9, v10, :cond_1

    const v10, 0x4c9ea020    # 8.316544E7f

    if-eq v9, v10, :cond_0

    goto :goto_1

    :cond_0
    const-string v9, "WifiEnterpriseConfiguration"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x3

    goto :goto_2

    :cond_1
    const-string v9, "IpConfiguration"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    goto :goto_2

    :cond_2
    const-string v9, "WifiConfiguration"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_2

    :cond_3
    const-string v9, "NetworkStatus"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v7, v8

    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 280
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown tag under Network: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v5, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 272
    :pswitch_0
    if-nez v3, :cond_5

    .line 276
    add-int/lit8 v6, p2, 0x1

    .line 277
    invoke-static {p1, v6}, Lcom/android/server/wifi/util/XmlUtil$WifiEnterpriseConfigXmlUtil;->parseFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/WifiEnterpriseConfig;

    move-result-object v3

    .line 278
    goto :goto_0

    .line 273
    :cond_5
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Detected duplicate tag for: WifiEnterpriseConfiguration"

    invoke-direct {v4, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 265
    :pswitch_1
    if-nez v2, :cond_6

    .line 269
    add-int/lit8 v6, p2, 0x1

    invoke-static {p1, v6}, Lcom/android/server/wifi/util/XmlUtil$IpConfigurationXmlUtil;->parseFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/IpConfiguration;

    move-result-object v2

    .line 270
    goto/16 :goto_0

    .line 266
    :cond_6
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Detected duplicate tag for: IpConfiguration"

    invoke-direct {v4, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 258
    :pswitch_2
    if-nez v1, :cond_7

    .line 262
    add-int/lit8 v6, p2, 0x1

    invoke-static {p1, v6}, Lcom/android/server/wifi/util/XmlUtil$NetworkSelectionStatusXmlUtil;->parseFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    .line 263
    goto/16 :goto_0

    .line 259
    :cond_7
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Detected duplicate tag for: NetworkStatus"

    invoke-direct {v4, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 251
    :pswitch_3
    if-nez v0, :cond_8

    .line 255
    add-int/lit8 v6, p2, 0x1

    invoke-static {p1, v6}, Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;->parseFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/util/Pair;

    move-result-object v0

    .line 256
    goto/16 :goto_0

    .line 252
    :cond_8
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Detected duplicate tag for: WifiConfiguration"

    invoke-direct {v4, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_9
    if-eqz v0, :cond_e

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_e

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_e

    .line 287
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 288
    .local v4, "configKeyParsed":Ljava/lang/String;
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 289
    .local v6, "configuration":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    .line 290
    .local v7, "configKeyCalculated":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 296
    iget-object v8, p0, Lcom/android/server/wifi/NetworkListStoreData;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget v9, v6, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v8

    .line 297
    .local v8, "creatorName":Ljava/lang/String;
    if-nez v8, :cond_a

    .line 298
    const-string v9, "NetworkListStoreData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid creatorUid for saved network "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", creatorUid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/16 v9, 0x3e8

    iput v9, v6, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 301
    iget-object v10, p0, Lcom/android/server/wifi/NetworkListStoreData;->mContext:Landroid/content/Context;

    .line 302
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    goto :goto_3

    .line 303
    :cond_a
    iget-object v9, v6, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 304
    const-string v9, "NetworkListStoreData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid creatorName for saved network "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", creatorUid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", creatorName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iput-object v8, v6, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 310
    :cond_b
    :goto_3
    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiConfiguration;->setNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V

    .line 311
    invoke-virtual {v6, v2}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 312
    if-eqz v3, :cond_c

    .line 313
    iput-object v3, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 315
    :cond_c
    return-object v6

    .line 291
    .end local v8    # "creatorName":Ljava/lang/String;
    :cond_d
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Configuration key does not match. Retrieved: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Calculated: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 285
    .end local v4    # "configKeyParsed":Ljava/lang/String;
    .end local v6    # "configuration":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "configKeyCalculated":Ljava/lang/String;
    :cond_e
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "XML parsing of wifi configuration failed"

    invoke-direct {v4, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseNetworkList(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/List;
    .locals 4
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I)",
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

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v0, "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    const-string v1, "Network"

    invoke-static {p1, v1, p2}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithNameOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    add-int/lit8 v1, p2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/NetworkListStoreData;->parseNetwork(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 222
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1

    .line 223
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "NetworkListStoreData"

    const-string v3, "Failed to parse network config. Skipping..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 228
    :cond_0
    return-object v0
.end method

.method private serializeNetwork(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    const-string v0, "Network"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 178
    const-string v0, "WifiConfiguration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 179
    invoke-static {p1, p2}, Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;->writeToXmlForConfigStore(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V

    .line 180
    const-string v0, "WifiConfiguration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 183
    const-string v0, "NetworkStatus"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil$NetworkSelectionStatusXmlUtil;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V

    .line 185
    const-string v0, "NetworkStatus"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 188
    const-string v0, "IpConfiguration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil$IpConfigurationXmlUtil;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/IpConfiguration;)V

    .line 190
    const-string v0, "IpConfiguration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 193
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 194
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 195
    const-string v0, "WifiEnterpriseConfiguration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 197
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil$WifiEnterpriseConfigXmlUtil;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 198
    const-string v0, "WifiEnterpriseConfiguration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 201
    :cond_0
    const-string v0, "Network"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method private serializeNetworkList(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 2
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    .local p2, "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez p2, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 162
    .local v1, "network":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/NetworkListStoreData;->serializeNetwork(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V

    .line 163
    .end local v1    # "network":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 164
    :cond_1
    return-void
.end method


# virtual methods
.method public deserializeData(Lorg/xmlpull/v1/XmlPullParser;IZ)V
    .locals 1
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outerTagDepth"    # I
    .param p3, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    if-nez p1, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    if-eqz p3, :cond_1

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/NetworkListStoreData;->parseNetworkList(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/NetworkListStoreData;->mSharedConfigurations:Ljava/util/List;

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/NetworkListStoreData;->parseNetworkList(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/NetworkListStoreData;->mUserConfigurations:Ljava/util/List;

    .line 95
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 108
    const-string v0, "NetworkList"

    return-object v0
.end method

.method public getSharedConfigurations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/server/wifi/NetworkListStoreData;->mSharedConfigurations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/NetworkListStoreData;->mSharedConfigurations:Ljava/util/List;

    return-object v0
.end method

.method public getUserConfigurations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/android/server/wifi/NetworkListStoreData;->mUserConfigurations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/NetworkListStoreData;->mUserConfigurations:Ljava/util/List;

    return-object v0
.end method

.method public resetData(Z)V
    .locals 1
    .param p1, "shared"    # Z

    .line 99
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 100
    iput-object v0, p0, Lcom/android/server/wifi/NetworkListStoreData;->mSharedConfigurations:Ljava/util/List;

    goto :goto_0

    .line 102
    :cond_0
    iput-object v0, p0, Lcom/android/server/wifi/NetworkListStoreData;->mUserConfigurations:Ljava/util/List;

    .line 104
    :goto_0
    return-void
.end method

.method public serializeData(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    if-eqz p2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/NetworkListStoreData;->mSharedConfigurations:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/NetworkListStoreData;->serializeNetworkList(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/NetworkListStoreData;->mUserConfigurations:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/NetworkListStoreData;->serializeNetworkList(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 81
    :goto_0
    return-void
.end method

.method public setSharedConfigurations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iput-object p1, p0, Lcom/android/server/wifi/NetworkListStoreData;->mSharedConfigurations:Ljava/util/List;

    .line 118
    return-void
.end method

.method public setUserConfigurations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iput-object p1, p0, Lcom/android/server/wifi/NetworkListStoreData;->mUserConfigurations:Ljava/util/List;

    .line 134
    return-void
.end method

.method public supportShareData()Z
    .locals 1

    .line 113
    const/4 v0, 0x1

    return v0
.end method
