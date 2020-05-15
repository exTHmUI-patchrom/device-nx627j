.class public final Landroid/net/wifi/hotspot2/ConfigParser;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;,
        Landroid/net/wifi/hotspot2/ConfigParser$MimePart;
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "boundary="

.field private static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final ENCODING_BASE64:Ljava/lang/String; = "base64"

.field private static final TAG:Ljava/lang/String; = "ConfigParser"

.field private static final TYPE_CA_CERT:Ljava/lang/String; = "application/x-x509-ca-cert"

.field private static final TYPE_MULTIPART_MIXED:Ljava/lang/String; = "multipart/mixed"

.field private static final TYPE_PASSPOINT_PROFILE:Ljava/lang/String; = "application/x-passpoint-profile"

.field private static final TYPE_PKCS12:Ljava/lang/String; = "application/x-pkcs12"

.field private static final TYPE_WIFI_CONFIG:Ljava/lang/String; = "application/x-wifi-config"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createPasspointConfig(Ljava/util/Map;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    .local p0, "mimeParts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    const-string v0, "application/x-passpoint-profile"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 171
    .local v0, "profileData":[B
    if-eqz v0, :cond_4

    .line 175
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseMoText(Ljava/lang/String;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v1

    .line 176
    .local v1, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    if-eqz v1, :cond_3

    .line 181
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 186
    const-string v2, "application/x-x509-ca-cert"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 187
    .local v2, "caCertData":[B
    if-eqz v2, :cond_0

    .line 189
    :try_start_0
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-static {v2}, Landroid/net/wifi/hotspot2/ConfigParser;->parseCACert([B)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setCaCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 190
    :catch_0
    move-exception v3

    .line 191
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to parse CA Certificate"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 196
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :cond_0
    :goto_0
    const-string v3, "application/x-pkcs12"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 197
    .local v3, "pkcs12Data":[B
    if-eqz v3, :cond_1

    .line 199
    :try_start_1
    invoke-static {v3}, Landroid/net/wifi/hotspot2/ConfigParser;->parsePkcs12([B)Landroid/util/Pair;

    move-result-object v4

    .line 200
    .local v4, "clientKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/security/PrivateKey;Ljava/util/List<Ljava/security/cert/X509Certificate;>;>;"
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v5

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/security/PrivateKey;

    invoke-virtual {v5, v6}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientPrivateKey(Ljava/security/PrivateKey;)V

    .line 201
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v5

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 202
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/security/cert/X509Certificate;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;

    .line 201
    invoke-virtual {v5, v6}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientCertificateChain([Ljava/security/cert/X509Certificate;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    .end local v4    # "clientKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/security/PrivateKey;Ljava/util/List<Ljava/security/cert/X509Certificate;>;>;"
    goto :goto_1

    .line 203
    :catch_1
    move-exception v4

    .line 204
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to parse PCKS12 string"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v1

    .line 182
    .end local v2    # "caCertData":[B
    .end local v3    # "pkcs12Data":[B
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Passpoint profile missing credential"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse Passpoint profile"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    .end local v1    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing Passpoint Profile"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseCACert([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "octets"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 444
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 445
    .local v0, "factory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private static parseContentType(Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .param p0, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "attributes":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 351
    .local v1, "type":Ljava/lang/String;
    const/4 v2, 0x0

    .line 353
    .local v2, "boundary":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x1

    if-lt v3, v4, :cond_3

    .line 358
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 360
    move-object v3, v2

    move v2, v4

    .local v2, "i":I
    .local v3, "boundary":Ljava/lang/String;
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_2

    .line 361
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 362
    .local v5, "attribute":Ljava/lang/String;
    const-string v6, "boundary="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 363
    const-string v6, "ConfigParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore Content-Type attribute: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    goto :goto_1

    .line 366
    :cond_0
    const-string v6, "boundary="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v4, :cond_1

    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 369
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 360
    .end local v5    # "attribute":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 354
    .end local v3    # "boundary":Ljava/lang/String;
    .local v2, "boundary":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Content-Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static parseHeaders(Ljava/io/LineNumberReader;)Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;
    .locals 8
    .param p0, "in"    # Ljava/io/LineNumberReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    new-instance v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;-><init>(Landroid/net/wifi/hotspot2/ConfigParser$1;)V

    .line 316
    .local v0, "header":Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;
    invoke-static {p0}, Landroid/net/wifi/hotspot2/ConfigParser;->readHeaders(Ljava/io/LineNumberReader;)Ljava/util/Map;

    move-result-object v1

    .line 319
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 320
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x2c8adc81

    if-eq v6, v7, :cond_1

    const v7, 0x3891284e

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "Content-Type"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const-string v6, "Content-Transfer-Encoding"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    :cond_2
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 330
    const-string v4, "ConfigParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore header: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 327
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->encodingType:Ljava/lang/String;

    .line 328
    goto :goto_2

    .line 322
    :pswitch_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/wifi/hotspot2/ConfigParser;->parseContentType(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 323
    .local v4, "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iput-object v5, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    .line 324
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iput-object v5, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->boundary:Ljava/lang/String;

    .line 325
    nop

    .line 333
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    goto :goto_0

    .line 334
    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseMimeMultipartMessage(Ljava/io/LineNumberReader;)Ljava/util/Map;
    .locals 6
    .param p0, "in"    # Ljava/io/LineNumberReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/LineNumberReader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-static {p0}, Landroid/net/wifi/hotspot2/ConfigParser;->parseHeaders(Ljava/io/LineNumberReader;)Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;

    move-result-object v0

    .line 222
    .local v0, "header":Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;
    iget-object v1, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    const-string/jumbo v2, "multipart/mixed"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 225
    iget-object v1, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->boundary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 228
    iget-object v1, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->encodingType:Ljava/lang/String;

    const-string v2, "base64"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    :goto_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    nop

    .line 245
    .end local v1    # "line":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v1, "mimeParts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    const/4 v2, 0x0

    .line 248
    .local v2, "isLast":Z
    :cond_0
    iget-object v3, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->boundary:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/net/wifi/hotspot2/ConfigParser;->parseMimePart(Ljava/io/LineNumberReader;Ljava/lang/String;)Landroid/net/wifi/hotspot2/ConfigParser$MimePart;

    move-result-object v3

    .line 249
    .local v3, "mimePart":Landroid/net/wifi/hotspot2/ConfigParser$MimePart;
    iget-object v4, v3, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->type:Ljava/lang/String;

    iget-object v5, v3, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->data:[B

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-boolean v2, v3, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->isLast:Z

    .line 251
    .end local v3    # "mimePart":Landroid/net/wifi/hotspot2/ConfigParser$MimePart;
    if-eqz v2, :cond_0

    .line 252
    return-object v1

    .line 242
    .end local v1    # "mimeParts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v2    # "isLast":Z
    :cond_1
    goto :goto_0

    .line 236
    .local v1, "line":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected EOF before first boundary @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    .end local v1    # "line":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->encodingType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing boundary string"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid content type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseMimePart(Ljava/io/LineNumberReader;Ljava/lang/String;)Landroid/net/wifi/hotspot2/ConfigParser$MimePart;
    .locals 9
    .param p0, "in"    # Ljava/io/LineNumberReader;
    .param p1, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-static {p0}, Landroid/net/wifi/hotspot2/ConfigParser;->parseHeaders(Ljava/io/LineNumberReader;)Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;

    move-result-object v0

    .line 268
    .local v0, "header":Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;
    iget-object v1, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->encodingType:Ljava/lang/String;

    const-string v2, "base64"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 273
    iget-object v1, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    const-string v2, "application/x-passpoint-profile"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    const-string v2, "application/x-x509-ca-cert"

    .line 274
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    const-string v2, "application/x-pkcs12"

    .line 275
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected content type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v1, "text":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 281
    .local v2, "isLast":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "partBoundary":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "endBoundary":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 289
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 290
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 291
    const/4 v2, 0x1

    .line 298
    .end local v5    # "line":Ljava/lang/String;
    :cond_2
    new-instance v5, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;-><init>(Landroid/net/wifi/hotspot2/ConfigParser$1;)V

    .line 299
    .local v5, "part":Landroid/net/wifi/hotspot2/ConfigParser$MimePart;
    iget-object v6, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    iput-object v6, v5, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->type:Ljava/lang/String;

    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->data:[B

    .line 301
    iput-boolean v2, v5, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->isLast:Z

    .line 302
    return-object v5

    .line 295
    .local v5, "line":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .end local v5    # "line":Ljava/lang/String;
    goto :goto_1

    .line 286
    .restart local v5    # "line":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected EOF file in body @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 269
    .end local v1    # "text":Ljava/lang/StringBuilder;
    .end local v2    # "isLast":Z
    .end local v3    # "partBoundary":Ljava/lang/String;
    .end local v4    # "endBoundary":Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected encoding type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->encodingType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parsePasspointConfig(Ljava/lang/String;[B)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 6
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .line 141
    const-string v0, "application/x-wifi-config"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 142
    const-string v0, "ConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected MIME type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-object v1

    .line 148
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 150
    .local v0, "decodedData":[B
    new-instance v2, Ljava/io/LineNumberReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v2}, Landroid/net/wifi/hotspot2/ConfigParser;->parseMimeMultipartMessage(Ljava/io/LineNumberReader;)Ljava/util/Map;

    move-result-object v2

    .line 153
    .local v2, "mimeParts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-static {v2}, Landroid/net/wifi/hotspot2/ConfigParser;->createPasspointConfig(Ljava/util/Map;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 154
    .end local v0    # "decodedData":[B
    .end local v2    # "mimeParts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse installation file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-object v1
.end method

.method private static parsePkcs12([B)Landroid/util/Pair;
    .locals 10
    .param p0, "octets"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/security/PrivateKey;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 451
    .local v0, "ks":Ljava/security/KeyStore;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 452
    .local v1, "in":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    new-array v3, v2, [C

    invoke-virtual {v0, v1, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 453
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 456
    invoke-virtual {v0}, Ljava/security/KeyStore;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 460
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 461
    .local v3, "alias":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 465
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljava/security/PrivateKey;

    .line 466
    .local v4, "clientKey":Ljava/security/PrivateKey;
    const/4 v5, 0x0

    .line 467
    .local v5, "clientCertificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v6

    .line 468
    .local v6, "chain":[Ljava/security/cert/Certificate;
    if-eqz v6, :cond_1

    .line 469
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v7

    .line 470
    array-length v7, v6

    :goto_0
    if-ge v2, v7, :cond_1

    aget-object v8, v6, v2

    .line 471
    .local v8, "certificate":Ljava/security/cert/Certificate;
    instance-of v9, v8, Ljava/security/cert/X509Certificate;

    if-eqz v9, :cond_0

    .line 475
    move-object v9, v8

    check-cast v9, Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v8    # "certificate":Ljava/security/cert/Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    .restart local v8    # "certificate":Ljava/security/cert/Certificate;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpceted certificate type: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 478
    .end local v8    # "certificate":Ljava/security/cert/Certificate;
    :cond_1
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 462
    .end local v4    # "clientKey":Ljava/security/PrivateKey;
    .end local v5    # "clientCertificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "chain":[Ljava/security/cert/Certificate;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v4, "No alias found"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 457
    .end local v3    # "alias":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected key size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/KeyStore;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static readHeaders(Ljava/io/LineNumberReader;)Ljava/util/Map;
    .locals 8
    .param p0, "in"    # Ljava/io/LineNumberReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/LineNumberReader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 388
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 389
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 391
    .local v2, "value":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 397
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 405
    :cond_0
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 406
    .local v4, "nameEnd":I
    if-gez v4, :cond_2

    .line 407
    if-eqz v2, :cond_1

    .line 409
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 411
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad header line: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 416
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_4

    .line 421
    if-eqz v1, :cond_3

    .line 423
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_3
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 428
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v5

    .line 429
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .end local v4    # "nameEnd":I
    :goto_1
    goto/16 :goto_0

    .line 417
    .restart local v4    # "nameEnd":I
    :cond_4
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal blank prefix in header line \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 399
    .end local v4    # "nameEnd":I
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 400
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_6
    return-object v0

    .line 393
    :cond_7
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing line @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
