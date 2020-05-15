.class public Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    }
.end annotation


# static fields
.field private static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field public static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x2

.field private static final STRIPPING_PROTECTION_ATTR_ID:I = -0x41100ff3


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 95
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    .locals 1
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 160
    const v0, 0x7109871a

    invoke-static {p0, v0}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    return-object v0
.end method

.method static generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .locals 4
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "bufferFactory"    # Landroid/util/apk/ByteBufferFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .local v0, "apk":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    .line 413
    .local v2, "signatureInfo":Landroid/util/apk/SignatureInfo;
    invoke-static {p0, p1, v2}, Landroid/util/apk/ApkSigningBlockUtils;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 413
    return-object v3

    .line 414
    .end local v2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    :goto_0
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method static generateFsverityRootHash(Ljava/lang/String;)[B
    .locals 5
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .local v0, "apk":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    .line 422
    .local v2, "signatureInfo":Landroid/util/apk/SignatureInfo;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v3

    .line 423
    .local v3, "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v4, v3, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->verityRootHash:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 424
    nop

    .line 428
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 424
    return-object v1

    .line 426
    :cond_0
    :try_start_1
    iget-object v4, v3, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->verityRootHash:[B

    .line 427
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 426
    invoke-static {v0, v4, v2}, Landroid/util/apk/ApkVerityBuilder;->generateFsverityRootHash(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;Landroid/util/apk/SignatureInfo;)[B

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 426
    return-object v4

    .line 428
    .end local v2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    .end local v3    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 420
    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 428
    :goto_0
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method static getVerityRootHash(Ljava/lang/String;)[B
    .locals 5
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .local v0, "apk":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    .line 403
    .local v2, "signatureInfo":Landroid/util/apk/SignatureInfo;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v3

    .line 404
    .local v3, "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v4, v3, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->verityRootHash:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 404
    return-object v4

    .line 405
    .end local v2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    .end local v3    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 401
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    :goto_0
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static hasSignature(Ljava/lang/String;)Z
    .locals 3
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .local v0, "apk":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 93
    :try_start_1
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    const/4 v2, 0x1

    .line 95
    :try_start_2
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 94
    return v2

    .line 95
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    :goto_0
    :try_start_4
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 95
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 96
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private static isSupportedSignatureAlgorithm(I)Z
    .locals 1
    .param p0, "sigAlgorithm"    # I

    .line 432
    const/16 v0, 0x301

    if-eq p0, v0, :cond_0

    const/16 v0, 0x421

    if-eq p0, v0, :cond_0

    const/16 v0, 0x423

    if-eq p0, v0, :cond_0

    const/16 v0, 0x425

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 445
    const/4 v0, 0x0

    return v0

    .line 443
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x201
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static plsCertsNoVerifyOnlyCerts(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 126
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v1, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private static verify(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .locals 9
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .param p2, "doVerifyIntegrity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "signerCount":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 176
    .local v1, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v2, "signerCerts":Ljava/util/List;, "Ljava/util/List<[Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 182
    .local v3, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 181
    nop

    .line 185
    :try_start_1
    iget-object v4, p1, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    .local v4, "signers":Ljava/nio/ByteBuffer;
    nop

    .line 187
    :goto_0
    nop

    .line 189
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 190
    add-int/lit8 v0, v0, 0x1

    .line 192
    :try_start_2
    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 193
    .local v5, "signer":Ljava/nio/ByteBuffer;
    invoke-static {v5, v1, v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 194
    .local v6, "certs":[Ljava/security/cert/X509Certificate;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 199
    .end local v5    # "signer":Ljava/nio/ByteBuffer;
    .end local v6    # "certs":[Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 195
    :catch_0
    move-exception v5

    .line 196
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse/verify signer #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " block"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 202
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x1

    if-lt v0, v5, :cond_4

    .line 206
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 210
    if-eqz p2, :cond_1

    .line 211
    invoke-static {v1, p0, p1}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrity(Ljava/util/Map;Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V

    .line 214
    :cond_1
    const/4 v5, 0x0

    .line 215
    .local v5, "verityRootHash":[B
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 216
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 217
    .local v6, "verityDigest":[B
    nop

    .line 218
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    .line 217
    invoke-static {v6, v7, v8, p1}, Landroid/util/apk/ApkSigningBlockUtils;->parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B

    move-result-object v5

    .line 221
    .end local v6    # "verityDigest":[B
    :cond_2
    new-instance v6, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    .line 222
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [[Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/security/cert/X509Certificate;

    invoke-direct {v6, v7, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;-><init>([[Ljava/security/cert/X509Certificate;[B)V

    .line 221
    return-object v6

    .line 207
    .end local v5    # "verityRootHash":[B
    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No content digests found"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 203
    :cond_4
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No signers found"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 186
    .end local v4    # "signers":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v4

    .line 187
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Failed to read list of signers"

    invoke-direct {v5, v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 180
    .end local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 181
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .locals 2
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "verifyIntegrity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    .line 148
    .local v0, "signatureInfo":Landroid/util/apk/SignatureInfo;
    invoke-static {p0, v0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v1

    return-object v1
.end method

.method private static verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .locals 3
    .param p0, "apkFile"    # Ljava/lang/String;
    .param p1, "verifyIntegrity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v0, "apk":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 132
    return-object v2

    .line 133
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :goto_0
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 111
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v1, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private static verifyAdditionalAttributes(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p0, "attrs"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 373
    .local v0, "attr":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    .line 377
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 378
    .local v1, "id":I
    const v3, -0x41100ff3

    if-eq v1, v3, :cond_0

    .end local v0    # "attr":Ljava/nio/ByteBuffer;
    .end local v1    # "id":I
    goto :goto_1

    .line 380
    .restart local v0    # "attr":Ljava/nio/ByteBuffer;
    .restart local v1    # "id":I
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v2, :cond_2

    .line 385
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 386
    .local v2, "vers":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 395
    .end local v0    # "attr":Ljava/nio/ByteBuffer;
    .end local v1    # "id":I
    .end local v2    # "vers":I
    :goto_1
    goto :goto_0

    .line 387
    .restart local v0    # "attr":Ljava/nio/ByteBuffer;
    .restart local v1    # "id":I
    .restart local v2    # "vers":I
    :cond_1
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "V2 signature indicates APK is signed using APK Signature Scheme v3, but none was found. Signature stripped?"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 381
    .end local v2    # "vers":I
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V2 Signature Scheme Stripping Protection Attribute  value too small.  Expected 4 bytes, but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    .end local v1    # "id":I
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remaining buffer too short to contain additional attribute ID. Remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    .end local v0    # "attr":Ljava/nio/ByteBuffer;
    :cond_4
    return-void
.end method

.method private static verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .locals 28
    .param p0, "signerBlock"    # Ljava/nio/ByteBuffer;
    .param p2, "certFactory"    # Ljava/security/cert/CertificateFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    .local p1, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 231
    .local v1, "signedData":Ljava/nio/ByteBuffer;
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 232
    .local v2, "signatures":Ljava/nio/ByteBuffer;
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 234
    .local v3, "publicKeyBytes":[B
    const/4 v0, 0x0

    .line 235
    .local v0, "signatureCount":I
    const/4 v4, -0x1

    .line 236
    .local v4, "bestSigAlgorithm":I
    const/4 v5, 0x0

    .line 237
    .local v5, "bestSigAlgorithmSignatureBytes":[B
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v5

    move v5, v4

    move v4, v0

    .line 238
    .end local v0    # "signatureCount":I
    .local v4, "signatureCount":I
    .local v5, "bestSigAlgorithm":I
    .local v6, "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v7, "bestSigAlgorithmSignatureBytes":[B
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v8, -0x1

    const/16 v9, 0x8

    if-eqz v0, :cond_4

    .line 239
    add-int/lit8 v4, v4, 0x1

    .line 241
    :try_start_0
    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 242
    .local v0, "signature":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-lt v10, v9, :cond_3

    .line 245
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 246
    .local v9, "sigAlgorithm":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-static {v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->isSupportedSignatureAlgorithm(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 248
    goto :goto_0

    .line 250
    :cond_0
    if-eq v5, v8, :cond_1

    .line 251
    invoke-static {v9, v5}, Landroid/util/apk/ApkSigningBlockUtils;->compareSignatureAlgorithm(II)I

    move-result v8

    if-lez v8, :cond_2

    .line 252
    :cond_1
    move v5, v9

    .line 253
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v8

    move-object v0, v8

    .line 259
    .end local v7    # "bestSigAlgorithmSignatureBytes":[B
    .end local v9    # "sigAlgorithm":I
    .local v0, "bestSigAlgorithmSignatureBytes":[B
    move-object v7, v0

    .end local v0    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v7    # "bestSigAlgorithmSignatureBytes":[B
    :cond_2
    goto :goto_0

    .line 243
    .local v0, "signature":Ljava/nio/ByteBuffer;
    :cond_3
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Signature record too short"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v0    # "signature":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse signature record #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    if-ne v5, v8, :cond_6

    .line 262
    if-nez v4, :cond_5

    .line 263
    new-instance v0, Ljava/lang/SecurityException;

    const-string v8, "No signatures found"

    invoke-direct {v0, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v8, "No supported signatures found"

    invoke-direct {v0, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_6
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v8

    .line 270
    .local v8, "keyAlgorithm":Ljava/lang/String;
    nop

    .line 271
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v10

    .line 272
    .local v10, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 273
    .local v11, "jcaSignatureAlgorithm":Ljava/lang/String;
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    move-object v12, v0

    .line 276
    .local v12, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    nop

    .line 277
    :try_start_1
    invoke-static {v8}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v13, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v13, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 278
    invoke-virtual {v0, v13}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 279
    .local v0, "publicKey":Ljava/security/PublicKey;
    invoke-static {v11}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v13

    .line 280
    .local v13, "sig":Ljava/security/Signature;
    invoke-virtual {v13, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_8

    .line 281
    if-eqz v12, :cond_7

    .line 282
    :try_start_2
    invoke-virtual {v13, v12}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 286
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    .end local v13    # "sig":Ljava/security/Signature;
    :catch_1
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    goto/16 :goto_7

    .line 284
    .restart local v0    # "publicKey":Ljava/security/PublicKey;
    .restart local v13    # "sig":Ljava/security/Signature;
    :cond_7
    :goto_1
    :try_start_3
    invoke-virtual {v13, v1}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 285
    invoke-virtual {v13, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v14
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_8

    .end local v0    # "publicKey":Ljava/security/PublicKey;
    .end local v13    # "sig":Ljava/security/Signature;
    move v13, v14

    .line 290
    .local v13, "sigVerified":Z
    nop

    .line 288
    nop

    .line 291
    if-eqz v13, :cond_11

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "contentDigest":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 299
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 300
    .local v14, "digests":Ljava/nio/ByteBuffer;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v15, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v9, v0

    const/4 v0, 0x0

    .local v0, "digestCount":I
    .local v9, "contentDigest":[B
    :goto_2
    move/from16 v17, v0

    .line 302
    .end local v0    # "digestCount":I
    .local v17, "digestCount":I
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 303
    move-object/from16 v18, v2

    add-int/lit8 v2, v17, 0x1

    .line 305
    .end local v17    # "digestCount":I
    .local v2, "digestCount":I
    .local v18, "signatures":Ljava/nio/ByteBuffer;
    :try_start_4
    invoke-static {v14}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_4

    .line 306
    .local v0, "digest":Ljava/nio/ByteBuffer;
    move/from16 v19, v4

    :try_start_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_5} :catch_3

    .end local v4    # "signatureCount":I
    .local v19, "signatureCount":I
    move-object/from16 v20, v7

    const/16 v7, 0x8

    if-lt v4, v7, :cond_9

    .line 309
    .end local v7    # "bestSigAlgorithmSignatureBytes":[B
    .local v20, "bestSigAlgorithmSignatureBytes":[B
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 310
    .local v4, "sigAlgorithm":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    if-ne v4, v5, :cond_8

    .line 312
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    move-object v0, v7

    .line 316
    .end local v4    # "sigAlgorithm":I
    .end local v9    # "contentDigest":[B
    .local v0, "contentDigest":[B
    move-object v9, v0

    .line 301
    .end local v0    # "contentDigest":[B
    .restart local v9    # "contentDigest":[B
    :cond_8
    move v0, v2

    move-object/from16 v2, v18

    move/from16 v4, v19

    move-object/from16 v7, v20

    goto :goto_2

    .line 307
    .local v0, "digest":Ljava/nio/ByteBuffer;
    :cond_9
    new-instance v4, Ljava/io/IOException;

    const-string v7, "Record too short"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_6 .. :try_end_6} :catch_2

    .line 314
    .end local v0    # "digest":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v0

    goto :goto_3

    .end local v20    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v7    # "bestSigAlgorithmSignatureBytes":[B
    :catch_3
    move-exception v0

    move-object/from16 v20, v7

    .end local v7    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v20    # "bestSigAlgorithmSignatureBytes":[B
    goto :goto_3

    .end local v19    # "signatureCount":I
    .end local v20    # "bestSigAlgorithmSignatureBytes":[B
    .local v4, "signatureCount":I
    .restart local v7    # "bestSigAlgorithmSignatureBytes":[B
    :catch_4
    move-exception v0

    move/from16 v19, v4

    move-object/from16 v20, v7

    .line 315
    .end local v4    # "signatureCount":I
    .end local v7    # "bestSigAlgorithmSignatureBytes":[B
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "signatureCount":I
    .restart local v20    # "bestSigAlgorithmSignatureBytes":[B
    :goto_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v8

    const-string v8, "Failed to parse digest record #"

    .end local v8    # "keyAlgorithm":Ljava/lang/String;
    .local v21, "keyAlgorithm":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v18    # "signatures":Ljava/nio/ByteBuffer;
    .end local v19    # "signatureCount":I
    .end local v20    # "bestSigAlgorithmSignatureBytes":[B
    .end local v21    # "keyAlgorithm":Ljava/lang/String;
    .local v2, "signatures":Ljava/nio/ByteBuffer;
    .restart local v4    # "signatureCount":I
    .restart local v7    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v8    # "keyAlgorithm":Ljava/lang/String;
    .restart local v17    # "digestCount":I
    :cond_a
    move-object/from16 v18, v2

    move/from16 v19, v4

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    .end local v2    # "signatures":Ljava/nio/ByteBuffer;
    .end local v4    # "signatureCount":I
    .end local v7    # "bestSigAlgorithmSignatureBytes":[B
    .end local v8    # "keyAlgorithm":Ljava/lang/String;
    .restart local v18    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v19    # "signatureCount":I
    .restart local v20    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v21    # "keyAlgorithm":Ljava/lang/String;
    invoke-interface {v6, v15}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 323
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v2

    .line 324
    .local v2, "digestAlgorithm":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, p1

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [B

    .line 325
    .local v7, "previousSignerDigest":[B
    if-eqz v7, :cond_c

    .line 326
    invoke-static {v7, v9}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    .line 327
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_c
    :goto_4
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 333
    .local v4, "certificates":Ljava/nio/ByteBuffer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 334
    .local v8, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v0, 0x0

    .line 335
    .local v0, "certificateCount":I
    :goto_5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 336
    move/from16 v22, v2

    add-int/lit8 v2, v0, 0x1

    .line 337
    .end local v0    # "certificateCount":I
    .local v2, "certificateCount":I
    .local v22, "digestAlgorithm":I
    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    move-object/from16 v23, v0

    .line 340
    .local v23, "encodedCert":[B
    :try_start_7
    new-instance v0, Ljava/io/ByteArrayInputStream;
    :try_end_7
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_7

    move-object/from16 v24, v4

    move-object/from16 v4, v23

    :try_start_8
    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_6

    .line 341
    .end local v23    # "encodedCert":[B
    .local v4, "encodedCert":[B
    .local v24, "certificates":Ljava/nio/ByteBuffer;
    move/from16 v25, v5

    move-object/from16 v5, p2

    :try_start_9
    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .end local v5    # "bestSigAlgorithm":I
    .local v25, "bestSigAlgorithm":I
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_9
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_5

    .line 344
    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    nop

    .line 343
    nop

    .line 345
    new-instance v5, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v5, v0, v4}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    move-object v0, v5

    .line 347
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v4    # "encodedCert":[B
    nop

    .line 334
    move v0, v2

    move/from16 v2, v22

    move-object/from16 v4, v24

    move/from16 v5, v25

    goto :goto_5

    .line 342
    .restart local v4    # "encodedCert":[B
    :catch_5
    move-exception v0

    goto :goto_6

    .end local v25    # "bestSigAlgorithm":I
    .restart local v5    # "bestSigAlgorithm":I
    :catch_6
    move-exception v0

    move/from16 v25, v5

    .end local v5    # "bestSigAlgorithm":I
    .restart local v25    # "bestSigAlgorithm":I
    goto :goto_6

    .end local v24    # "certificates":Ljava/nio/ByteBuffer;
    .end local v25    # "bestSigAlgorithm":I
    .local v4, "certificates":Ljava/nio/ByteBuffer;
    .restart local v5    # "bestSigAlgorithm":I
    .restart local v23    # "encodedCert":[B
    :catch_7
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v25, v5

    move-object/from16 v4, v23

    .line 343
    .end local v5    # "bestSigAlgorithm":I
    .end local v23    # "encodedCert":[B
    .local v0, "e":Ljava/security/cert/CertificateException;
    .local v4, "encodedCert":[B
    .restart local v24    # "certificates":Ljava/nio/ByteBuffer;
    .restart local v25    # "bestSigAlgorithm":I
    :goto_6
    new-instance v5, Ljava/lang/SecurityException;

    move-object/from16 v26, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "encodedCert":[B
    .local v26, "encodedCert":[B
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v6

    const-string v6, "Failed to decode certificate #"

    .end local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v27, "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 350
    .end local v22    # "digestAlgorithm":I
    .end local v24    # "certificates":Ljava/nio/ByteBuffer;
    .end local v25    # "bestSigAlgorithm":I
    .end local v26    # "encodedCert":[B
    .end local v27    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v0, "certificateCount":I
    .local v2, "digestAlgorithm":I
    .local v4, "certificates":Ljava/nio/ByteBuffer;
    .restart local v5    # "bestSigAlgorithm":I
    .restart local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_d
    move/from16 v22, v2

    move-object/from16 v24, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    .end local v2    # "digestAlgorithm":I
    .end local v4    # "certificates":Ljava/nio/ByteBuffer;
    .end local v5    # "bestSigAlgorithm":I
    .end local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v22    # "digestAlgorithm":I
    .restart local v24    # "certificates":Ljava/nio/ByteBuffer;
    .restart local v25    # "bestSigAlgorithm":I
    .restart local v27    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 353
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 354
    .local v2, "mainCertificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    .line 355
    .local v4, "certificatePublicKeyBytes":[B
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 360
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 361
    .local v5, "additionalAttrs":Ljava/nio/ByteBuffer;
    invoke-static {v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifyAdditionalAttributes(Ljava/nio/ByteBuffer;)V

    .line 363
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    invoke-interface {v8, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;

    return-object v6

    .line 356
    .end local v5    # "additionalAttrs":Ljava/nio/ByteBuffer;
    :cond_e
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Public key mismatch between certificate and signature record"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 351
    .end local v2    # "mainCertificate":Ljava/security/cert/X509Certificate;
    .end local v4    # "certificatePublicKeyBytes":[B
    :cond_f
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "No certificates listed"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    .end local v0    # "certificateCount":I
    .end local v7    # "previousSignerDigest":[B
    .end local v8    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v22    # "digestAlgorithm":I
    .end local v24    # "certificates":Ljava/nio/ByteBuffer;
    .end local v25    # "bestSigAlgorithm":I
    .end local v27    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v5, "bestSigAlgorithm":I
    .restart local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_10
    move/from16 v25, v5

    move-object/from16 v27, v6

    .end local v5    # "bestSigAlgorithm":I
    .end local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v25    # "bestSigAlgorithm":I
    .restart local v27    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    .end local v9    # "contentDigest":[B
    .end local v14    # "digests":Ljava/nio/ByteBuffer;
    .end local v15    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "digestCount":I
    .end local v18    # "signatures":Ljava/nio/ByteBuffer;
    .end local v19    # "signatureCount":I
    .end local v20    # "bestSigAlgorithmSignatureBytes":[B
    .end local v21    # "keyAlgorithm":Ljava/lang/String;
    .end local v25    # "bestSigAlgorithm":I
    .end local v27    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v2, "signatures":Ljava/nio/ByteBuffer;
    .local v4, "signatureCount":I
    .restart local v5    # "bestSigAlgorithm":I
    .restart local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v7, "bestSigAlgorithmSignatureBytes":[B
    .local v8, "keyAlgorithm":Ljava/lang/String;
    :cond_11
    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    .end local v2    # "signatures":Ljava/nio/ByteBuffer;
    .end local v4    # "signatureCount":I
    .end local v5    # "bestSigAlgorithm":I
    .end local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "bestSigAlgorithmSignatureBytes":[B
    .end local v8    # "keyAlgorithm":Ljava/lang/String;
    .restart local v18    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v19    # "signatureCount":I
    .restart local v20    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v21    # "keyAlgorithm":Ljava/lang/String;
    .restart local v25    # "bestSigAlgorithm":I
    .restart local v27    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " signature did not verify"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    .end local v13    # "sigVerified":Z
    .end local v18    # "signatures":Ljava/nio/ByteBuffer;
    .end local v19    # "signatureCount":I
    .end local v20    # "bestSigAlgorithmSignatureBytes":[B
    .end local v21    # "keyAlgorithm":Ljava/lang/String;
    .end local v25    # "bestSigAlgorithm":I
    .end local v27    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v4    # "signatureCount":I
    .restart local v5    # "bestSigAlgorithm":I
    .restart local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v8    # "keyAlgorithm":Ljava/lang/String;
    :catch_8
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    .line 288
    .end local v2    # "signatures":Ljava/nio/ByteBuffer;
    .end local v4    # "signatureCount":I
    .end local v5    # "bestSigAlgorithm":I
    .end local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "bestSigAlgorithmSignatureBytes":[B
    .end local v8    # "keyAlgorithm":Ljava/lang/String;
    .local v0, "e":Ljava/security/GeneralSecurityException;
    .restart local v18    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v19    # "signatureCount":I
    .restart local v20    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v21    # "keyAlgorithm":Ljava/lang/String;
    .restart local v25    # "bestSigAlgorithm":I
    .restart local v27    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_7
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to verify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " signature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
