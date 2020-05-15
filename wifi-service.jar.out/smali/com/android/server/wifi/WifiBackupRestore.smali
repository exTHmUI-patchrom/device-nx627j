.class public Lcom/android/server/wifi/WifiBackupRestore;
.super Ljava/lang/Object;
.source "WifiBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;
    }
.end annotation


# static fields
.field private static final CURRENT_BACKUP_DATA_VERSION:F = 1.0f

.field private static final INITIAL_BACKUP_DATA_VERSION:I = 0x1

.field private static final PSK_MASK_LINE_MATCH_PATTERN:Ljava/lang/String; = "<.*PreSharedKey.*>.*<.*>"

.field private static final PSK_MASK_REPLACE_PATTERN:Ljava/lang/String; = "$1*$3"

.field private static final PSK_MASK_SEARCH_PATTERN:Ljava/lang/String; = "(<.*PreSharedKey.*>)(.*)(<.*>)"

.field private static final TAG:Ljava/lang/String; = "WifiBackupRestore"

.field private static final WEP_KEYS_MASK_LINE_END_MATCH_PATTERN:Ljava/lang/String; = "</string-array>"

.field private static final WEP_KEYS_MASK_LINE_START_MATCH_PATTERN:Ljava/lang/String; = "<string-array.*WEPKeys.*num=\"[0-9]\">"

.field private static final WEP_KEYS_MASK_REPLACE_PATTERN:Ljava/lang/String; = "$1*$3"

.field private static final WEP_KEYS_MASK_SEARCH_PATTERN:Ljava/lang/String; = "(<.*=)(.*)(/>)"

.field private static final XML_TAG_DOCUMENT_HEADER:Ljava/lang/String; = "WifiBackupData"

.field static final XML_TAG_SECTION_HEADER_IP_CONFIGURATION:Ljava/lang/String; = "IpConfiguration"

.field static final XML_TAG_SECTION_HEADER_NETWORK:Ljava/lang/String; = "Network"

.field static final XML_TAG_SECTION_HEADER_NETWORK_LIST:Ljava/lang/String; = "NetworkList"

.field static final XML_TAG_SECTION_HEADER_WIFI_CONFIGURATION:Ljava/lang/String; = "WifiConfiguration"

.field private static final XML_TAG_VERSION:Ljava/lang/String; = "Version"


# instance fields
.field private mDebugLastBackupDataRestored:[B

.field private mDebugLastBackupDataRetrieved:[B

.field private mDebugLastSupplicantBackupDataRestored:[B

.field private mVerboseLoggingEnabled:Z

.field private final mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/util/WifiPermissionsUtil;)V
    .locals 1
    .param p1, "wifiPermissionsUtil"    # Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mVerboseLoggingEnabled:Z

    .line 133
    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 134
    return-void
.end method

.method private createLogFromBackupData([B)Ljava/lang/String;
    .locals 9
    .param p1, "data"    # [B

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 307
    .local v1, "xmlString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 308
    .local v2, "wepKeysLine":Z
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 309
    .local v6, "line":Ljava/lang/String;
    const-string v7, "<.*PreSharedKey.*>.*<.*>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 310
    const-string v7, "(<.*PreSharedKey.*>)(.*)(<.*>)"

    const-string v8, "$1*$3"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 312
    :cond_0
    const-string v7, "<string-array.*WEPKeys.*num=\"[0-9]\">"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 313
    const/4 v2, 0x1

    goto :goto_1

    .line 314
    :cond_1
    const-string v7, "</string-array>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 315
    const/4 v2, 0x0

    goto :goto_1

    .line 316
    :cond_2
    if-eqz v2, :cond_3

    .line 317
    const-string v7, "(<.*=)(.*)(/>)"

    const-string v8, "$1*$3"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 320
    :cond_3
    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v6    # "line":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 324
    .end local v1    # "xmlString":Ljava/lang/String;
    .end local v2    # "wepKeysLine":Z
    :cond_4
    nop

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    return-object v2
.end method

.method private getWifiBackupDataParser(I)Lcom/android/server/wifi/WifiBackupDataParser;
    .locals 3
    .param p1, "majorVersion"    # I

    .line 280
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 284
    const-string v0, "WifiBackupRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized majorVersion of backup data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x0

    return-object v0

    .line 282
    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiBackupDataV1Parser;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiBackupDataV1Parser;-><init>()V

    return-object v0
.end method

.method private writeNetworkConfigurationToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "configuration"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    const-string v0, "WifiConfiguration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 210
    invoke-static {p1, p2}, Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;->writeToXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V

    .line 211
    const-string v0, "WifiConfiguration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 212
    const-string v0, "IpConfiguration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil$IpConfigurationXmlUtil;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/IpConfiguration;)V

    .line 214
    const-string v0, "IpConfiguration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private writeNetworkConfigurationsToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 5
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

    .line 184
    .local p2, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v0, "NetworkList"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 185
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 187
    .local v1, "configuration":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    goto :goto_0

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkConfigOverridePermission(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 191
    const-string v2, "WifiBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring network from an app with no config override permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    goto :goto_0

    .line 196
    :cond_2
    const-string v2, "Network"

    invoke-static {p1, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiBackupRestore;->writeNetworkConfigurationToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V

    .line 198
    const-string v2, "Network"

    invoke-static {p1, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 199
    .end local v1    # "configuration":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 200
    :cond_3
    const-string v0, "NetworkList"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 201
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 408
    const-string v0, "Dump of WifiBackupRestore"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRetrieved:[B

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last backup data retrieved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRetrieved:[B

    .line 411
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiBackupRestore;->createLogFromBackupData([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRestored:[B

    if-eqz v0, :cond_1

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last backup data restored: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRestored:[B

    .line 415
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiBackupRestore;->createLogFromBackupData([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastSupplicantBackupDataRestored:[B

    if-eqz v0, :cond_2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last old backup data restored: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastSupplicantBackupDataRestored:[B

    .line 419
    invoke-static {v1}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->createLogFromBackupData([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    :cond_2
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 392
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mVerboseLoggingEnabled:Z

    .line 393
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mVerboseLoggingEnabled:Z

    if-nez v0, :cond_1

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRetrieved:[B

    .line 395
    iput-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRestored:[B

    .line 396
    iput-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastSupplicantBackupDataRestored:[B

    .line 398
    :cond_1
    return-void
.end method

.method public retrieveBackupDataFromConfigurations(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)[B"
        }
    .end annotation

    .line 144
    .local p1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 145
    const-string v1, "WifiBackupRestore"

    const-string v2, "Invalid configuration list received"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-array v0, v0, [B

    return-object v0

    .line 150
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 151
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 152
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 155
    const-string v3, "WifiBackupData"

    invoke-static {v1, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeDocumentStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 157
    const-string v3, "Version"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-direct {p0, v1, p1}, Lcom/android/server/wifi/WifiBackupRestore;->writeNetworkConfigurationsToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 161
    const-string v3, "WifiBackupData"

    invoke-static {v1, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeDocumentEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 165
    .local v3, "data":[B
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiBackupRestore;->mVerboseLoggingEnabled:Z

    if-eqz v4, :cond_1

    .line 166
    iput-object v3, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRetrieved:[B
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_1
    return-object v3

    .line 172
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "data":[B
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "WifiBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error retrieving the backup data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 170
    :catch_1
    move-exception v1

    .line 171
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "WifiBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error retrieving the backup data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 175
    :goto_0
    new-array v0, v0, [B

    return-object v0
.end method

.method public retrieveConfigurationsFromBackupData([B)Ljava/util/List;
    .locals 10
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 229
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 230
    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRestored:[B

    .line 233
    :cond_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 234
    .local v1, "in":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 235
    .local v2, "inputStream":Ljava/io/ByteArrayInputStream;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 238
    const-string v3, "WifiBackupData"

    invoke-static {v1, v3}, Lcom/android/server/wifi/util/XmlUtil;->gotoDocumentStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 239
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    .local v3, "rootTagDepth":I
    const/4 v4, -0x1

    .line 242
    .local v4, "majorVersion":I
    const/4 v5, -0x1

    move v6, v5

    .line 244
    .local v6, "minorVersion":I
    :try_start_1
    const-string v7, "Version"

    invoke-static {v1, v7}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 247
    .local v7, "version":F
    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v8}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, "versionStr":Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 249
    .local v9, "separatorPos":I
    if-ne v9, v5, :cond_2

    .line 250
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 251
    const/4 v5, 0x0

    .end local v6    # "minorVersion":I
    .local v5, "minorVersion":I
    goto :goto_0

    .line 253
    .end local v5    # "minorVersion":I
    .restart local v6    # "minorVersion":I
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 254
    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    .end local v6    # "minorVersion":I
    .end local v7    # "version":F
    .end local v8    # "versionStr":Ljava/lang/String;
    .end local v9    # "separatorPos":I
    .restart local v5    # "minorVersion":I
    :goto_0
    goto :goto_1

    .line 256
    .end local v5    # "minorVersion":I
    .restart local v6    # "minorVersion":I
    :catch_0
    move-exception v5

    .line 258
    .local v5, "cce":Ljava/lang/ClassCastException;
    const/4 v4, 0x1

    .line 259
    const/4 v5, 0x0

    .line 261
    .end local v6    # "minorVersion":I
    .local v5, "minorVersion":I
    :goto_1
    :try_start_2
    const-string v6, "WifiBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Version of backup data - major: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "; minor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiBackupRestore;->getWifiBackupDataParser(I)Lcom/android/server/wifi/WifiBackupDataParser;

    move-result-object v6

    .line 265
    .local v6, "parser":Lcom/android/server/wifi/WifiBackupDataParser;
    if-nez v6, :cond_3

    .line 266
    const-string v7, "WifiBackupRestore"

    const-string v8, "Major version of backup data is unknown to this Android version; not restoring"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-object v0

    .line 270
    :cond_3
    invoke-interface {v6, v1, v3, v5}, Lcom/android/server/wifi/WifiBackupDataParser;->parseNetworkConfigurationsFromXml(Lorg/xmlpull/v1/XmlPullParser;II)Ljava/util/List;

    move-result-object v7
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v7

    .line 272
    .end local v1    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "rootTagDepth":I
    .end local v4    # "majorVersion":I
    .end local v5    # "minorVersion":I
    .end local v6    # "parser":Lcom/android/server/wifi/WifiBackupDataParser;
    :catch_1
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WifiBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing the backup data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0

    .line 225
    :cond_4
    :goto_2
    const-string v1, "WifiBackupRestore"

    const-string v2, "Invalid backup data received"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-object v0
.end method

.method public retrieveConfigurationsFromSupplicantBackupData([B[B)Ljava/util/List;
    .locals 10
    .param p1, "supplicantData"    # [B
    .param p2, "ipConfigData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 338
    if-eqz p1, :cond_8

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 343
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 344
    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastSupplicantBackupDataRestored:[B

    .line 347
    :cond_1
    new-instance v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;-><init>()V

    .line 350
    .local v0, "supplicantNetworks":Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;
    array-length v1, p1

    new-array v1, v1, [C

    .line 351
    .local v1, "restoredAsChars":[C
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 352
    aget-byte v4, p1, v3

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/CharArrayReader;

    invoke-direct {v4, v1}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 356
    .local v3, "in":Ljava/io/BufferedReader;
    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;->readNetworksFromStream(Ljava/io/BufferedReader;)V

    .line 359
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;->retrieveWifiConfigurations()Ljava/util/List;

    move-result-object v4

    .line 363
    .local v4, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz p2, :cond_7

    array-length v5, p2

    if-eqz v5, :cond_7

    .line 364
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 365
    invoke-static {v5}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;

    move-result-object v5

    .line 367
    .local v5, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    if-eqz v5, :cond_5

    .line 368
    nop

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 369
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 370
    .local v6, "id":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 372
    .local v8, "configuration":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    if-ne v9, v6, :cond_3

    .line 373
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/IpConfiguration;

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 375
    .end local v8    # "configuration":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    goto :goto_2

    .line 368
    .end local v6    # "id":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 378
    .end local v2    # "i":I
    :cond_5
    const-string v2, "WifiBackupRestore"

    const-string v6, "Failed to parse ipconfig data"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v5    # "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    :cond_6
    goto :goto_3

    .line 381
    :cond_7
    const-string v2, "WifiBackupRestore"

    const-string v5, "Invalid ipconfig backup data received"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_3
    return-object v4

    .line 339
    .end local v0    # "supplicantNetworks":Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;
    .end local v1    # "restoredAsChars":[C
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_8
    :goto_4
    const-string v0, "WifiBackupRestore"

    const-string v1, "Invalid supplicant backup data received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x0

    return-object v0
.end method
