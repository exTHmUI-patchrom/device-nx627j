.class public Landroid/util/apk/ApkSignatureSchemeV3Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV3Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;,
        Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;,
        Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;
    }
.end annotation


# static fields
.field private static final APK_SIGNATURE_SCHEME_V3_BLOCK_ID:I = -0xfac9740

.field private static final PROOF_OF_ROTATION_ATTR_ID:I = 0x3ba06f8c

.field public static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x3


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 92
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

    .line 74
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

    .line 156
    const v0, -0xfac9740

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

    .line 535
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .local v0, "apk":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    .line 537
    .local v2, "signatureInfo":Landroid/util/apk/SignatureInfo;
    invoke-static {p0, p1, v2}, Landroid/util/apk/ApkSigningBlockUtils;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 537
    return-object v3

    .line 538
    .end local v2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 535
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    :goto_0
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method static generateFsverityRootHash(Ljava/lang/String;)[B
    .locals 5
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;,
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .local v0, "apk":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    .line 546
    .local v2, "signatureInfo":Landroid/util/apk/SignatureInfo;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v3

    .line 547
    .local v3, "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget-object v4, v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->verityRootHash:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 548
    nop

    .line 552
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 548
    return-object v1

    .line 550
    :cond_0
    :try_start_1
    iget-object v4, v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->verityRootHash:[B

    .line 551
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 550
    invoke-static {v0, v4, v2}, Landroid/util/apk/ApkVerityBuilder;->generateFsverityRootHash(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;Landroid/util/apk/SignatureInfo;)[B

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 550
    return-object v4

    .line 552
    .end local v2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    .end local v3    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 544
    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 552
    :goto_0
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

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

    .line 525
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .local v0, "apk":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    .line 527
    .local v2, "signatureInfo":Landroid/util/apk/SignatureInfo;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v3

    .line 528
    .local v3, "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget-object v4, v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->verityRootHash:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 528
    return-object v4

    .line 529
    .end local v2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    .end local v3    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 525
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    :goto_0
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

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

    .line 89
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    .local v0, "apk":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 90
    :try_start_1
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    const/4 v2, 0x1

    .line 92
    :try_start_2
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 91
    return v2

    .line 92
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    :goto_0
    :try_start_4
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 92
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private static isSupportedSignatureAlgorithm(I)Z
    .locals 1
    .param p0, "sigAlgorithm"    # I

    .line 556
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

    .line 569
    const/4 v0, 0x0

    return v0

    .line 567
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

.method public static plsCertsNoVerifyOnlyCerts(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .locals 1
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    return-object v0
.end method

.method private static verify(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
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

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "signerCount":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 172
    .local v1, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const/4 v2, 0x0

    .line 175
    .local v2, "result":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 178
    .local v3, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 177
    nop

    .line 181
    :try_start_1
    iget-object v4, p1, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 184
    .local v4, "signers":Ljava/nio/ByteBuffer;
    nop

    .line 183
    :goto_0
    nop

    .line 185
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 187
    :try_start_2
    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 188
    .local v5, "signer":Ljava/nio/ByteBuffer;
    invoke-static {v5, v1, v3}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v6
    :try_end_2
    .catch Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v6

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 197
    .end local v5    # "signer":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 193
    :catch_0
    move-exception v5

    .line 194
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

    .line 190
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 192
    .local v5, "e":Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
    goto :goto_0

    .line 200
    .end local v5    # "e":Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
    :cond_0
    const/4 v5, 0x1

    if-lt v0, v5, :cond_5

    if-eqz v2, :cond_5

    .line 204
    if-ne v0, v5, :cond_4

    .line 209
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 213
    if-eqz p2, :cond_1

    .line 214
    invoke-static {v1, p0, p1}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrity(Ljava/util/Map;Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V

    .line 217
    :cond_1
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 218
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 219
    .local v5, "verityDigest":[B
    nop

    .line 220
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    .line 219
    invoke-static {v5, v6, v7, p1}, Landroid/util/apk/ApkSigningBlockUtils;->parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B

    move-result-object v6

    iput-object v6, v2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->verityRootHash:[B

    .line 223
    .end local v5    # "verityDigest":[B
    :cond_2
    return-object v2

    .line 210
    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No content digests found"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 205
    :cond_4
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "APK Signature Scheme V3 only supports one signer: multiple signers found."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    :cond_5
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No signers found"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 182
    .end local v4    # "signers":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v4

    .line 183
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Failed to read list of signers"

    invoke-direct {v5, v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 176
    .end local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 177
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
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

    .line 143
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    .line 144
    .local v0, "signatureInfo":Landroid/util/apk/SignatureInfo;
    invoke-static {p0, v0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v1

    return-object v1
.end method

.method public static verify(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .locals 1
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    return-object v0
.end method

.method private static verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
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

    .line 127
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v0, "apk":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 128
    return-object v2

    .line 129
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :goto_0
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static verifyAdditionalAttributes(Ljava/nio/ByteBuffer;Ljava/util/List;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .locals 7
    .param p0, "attrs"    # Ljava/nio/ByteBuffer;
    .param p2, "certFactory"    # Ljava/security/cert/CertificateFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/CertificateFactory;",
            ")",
            "Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    .local p1, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 394
    .local v0, "certChain":[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 396
    .local v1, "por":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 397
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 398
    .local v2, "attr":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_4

    .line 402
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 403
    .local v3, "id":I
    const v4, 0x3ba06f8c

    if-eq v3, v4, :cond_0

    .end local v2    # "attr":Ljava/nio/ByteBuffer;
    .end local v3    # "id":I
    goto :goto_2

    .line 405
    .restart local v2    # "attr":Ljava/nio/ByteBuffer;
    .restart local v3    # "id":I
    :cond_0
    if-nez v1, :cond_3

    .line 409
    invoke-static {v2, p2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verifyProofOfRotationStruct(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    move-result-object v1

    .line 413
    :try_start_0
    iget-object v4, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    iget-object v5, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    .line 414
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    .line 415
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    .line 414
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 416
    :cond_1
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Terminal certificate in Proof-of-rotation record does not match APK signing certificate"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_2
    :goto_1
    nop

    .line 429
    .end local v2    # "attr":Ljava/nio/ByteBuffer;
    .end local v3    # "id":I
    :goto_2
    goto :goto_0

    .line 419
    .restart local v2    # "attr":Ljava/nio/ByteBuffer;
    .restart local v3    # "id":I
    :catch_0
    move-exception v4

    .line 420
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Failed to encode certificate when comparing Proof-of-rotation record and signing certificate"

    invoke-direct {v5, v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 406
    .end local v4    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_3
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Encountered multiple Proof-of-rotation records when verifying APK Signature Scheme v3 signature"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 399
    .end local v3    # "id":I
    :cond_4
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remaining buffer too short to contain additional attribute ID. Remaining: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 430
    .end local v2    # "attr":Ljava/nio/ByteBuffer;
    :cond_5
    new-instance v2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    invoke-direct {v2, v0, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;-><init>([Ljava/security/cert/X509Certificate;Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;)V

    return-object v2
.end method

.method private static verifyProofOfRotationStruct(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;
    .locals 17
    .param p0, "porBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "certFactory"    # Ljava/security/cert/CertificateFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    const/4 v1, 0x0

    .line 438
    .local v1, "levelCount":I
    const/4 v2, -0x1

    .line 439
    .local v2, "lastSigAlgorithm":I
    const/4 v3, 0x0

    .line 440
    .local v3, "lastCert":Ljava/security/cert/X509Certificate;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 441
    .local v4, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 460
    .local v5, "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 461
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 462
    .local v0, "certHistorySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 463
    add-int/lit8 v1, v1, 0x1

    .line 464
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 465
    .local v6, "level":Ljava/nio/ByteBuffer;
    invoke-static {v6}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 466
    .local v7, "signedData":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 467
    .local v8, "flags":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 468
    .local v9, "sigAlgorithm":I
    invoke-static {v6}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v10

    .line 470
    .local v10, "signature":[B
    if-eqz v3, :cond_2

    .line 472
    nop

    .line 473
    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v11

    .line 474
    .local v11, "sigAlgParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    .line 475
    .local v12, "publicKey":Ljava/security/PublicKey;
    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v13

    .line 476
    .local v13, "sig":Ljava/security/Signature;
    invoke-virtual {v13, v12}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 477
    iget-object v14, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v14, :cond_0

    .line 478
    iget-object v14, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v13, v14}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 480
    :cond_0
    invoke-virtual {v13, v7}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 481
    invoke-virtual {v13, v10}, Ljava/security/Signature;->verify([B)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 488
    .end local v11    # "sigAlgParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v12    # "publicKey":Ljava/security/PublicKey;
    .end local v13    # "sig":Ljava/security/Signature;
    move-object/from16 v16, v6

    goto :goto_1

    .line 482
    .restart local v11    # "sigAlgParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .restart local v12    # "publicKey":Ljava/security/PublicKey;
    .restart local v13    # "sig":Ljava/security/Signature;
    :cond_1
    new-instance v14, Ljava/lang/SecurityException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v6

    const-string v6, "Unable to verify signature of certificate #"

    .end local v6    # "level":Ljava/nio/ByteBuffer;
    .local v16, "level":Ljava/nio/ByteBuffer;
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " using "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " when verifying Proof-of-rotation record"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 488
    .end local v11    # "sigAlgParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v12    # "publicKey":Ljava/security/PublicKey;
    .end local v13    # "sig":Ljava/security/Signature;
    .end local v16    # "level":Ljava/nio/ByteBuffer;
    .restart local v6    # "level":Ljava/nio/ByteBuffer;
    :cond_2
    move-object/from16 v16, v6

    .end local v6    # "level":Ljava/nio/ByteBuffer;
    .restart local v16    # "level":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 489
    invoke-static {v7}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    .line 490
    .local v6, "encodedCert":[B
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 491
    .local v11, "signedSigAlgorithm":I
    if-eqz v3, :cond_4

    if-ne v2, v11, :cond_3

    goto :goto_2

    .line 492
    :cond_3
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Signing algorithm ID mismatch for certificate #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " when verifying Proof-of-rotation record"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 495
    :cond_4
    :goto_2
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 496
    move-object/from16 v13, p1

    :try_start_1
    invoke-virtual {v13, v12}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    move-object v3, v12

    .line 497
    new-instance v12, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v12, v3, v6}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    move-object v3, v12

    .line 499
    move v2, v9

    .line 500
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 505
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v6    # "encodedCert":[B
    .end local v7    # "signedData":Ljava/nio/ByteBuffer;
    .end local v8    # "flags":I
    .end local v9    # "sigAlgorithm":I
    .end local v10    # "signature":[B
    .end local v11    # "signedSigAlgorithm":I
    .end local v16    # "level":Ljava/nio/ByteBuffer;
    goto/16 :goto_0

    .line 501
    .restart local v6    # "encodedCert":[B
    .restart local v7    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v8    # "flags":I
    .restart local v9    # "sigAlgorithm":I
    .restart local v10    # "signature":[B
    .restart local v11    # "signedSigAlgorithm":I
    .restart local v16    # "level":Ljava/nio/ByteBuffer;
    :cond_5
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Encountered duplicate entries in Proof-of-rotation record at certificate #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ".  All signing certificates should be unique"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 516
    .end local v0    # "certHistorySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "encodedCert":[B
    .end local v7    # "signedData":Ljava/nio/ByteBuffer;
    .end local v8    # "flags":I
    .end local v9    # "sigAlgorithm":I
    .end local v10    # "signature":[B
    .end local v11    # "signedSigAlgorithm":I
    .end local v16    # "level":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 511
    :catch_1
    move-exception v0

    goto :goto_4

    .line 509
    :catch_2
    move-exception v0

    goto :goto_5

    .line 519
    :cond_6
    move-object/from16 v13, p1

    .line 520
    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    invoke-direct {v0, v4, v5}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 516
    :catch_3
    move-exception v0

    move-object/from16 v13, p1

    .line 517
    .local v0, "e":Ljava/security/cert/CertificateException;
    :goto_3
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to decode certificate #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " when verifying Proof-of-rotation record"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 511
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_4
    move-exception v0

    move-object/from16 v13, p1

    .line 513
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_4
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to verify signature over signed data for certificate #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " when verifying Proof-of-rotation record"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 509
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_5
    move-exception v0

    move-object/from16 v13, p1

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Failed to parse Proof-of-rotation record"

    invoke-direct {v6, v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .locals 37
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
            ")",
            "Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
        }
    .end annotation

    .line 231
    .local p1, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    move-object/from16 v1, p2

    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 232
    .local v2, "signedData":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 233
    .local v3, "minSdkVersion":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 235
    .local v4, "maxSdkVersion":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v4, :cond_14

    .line 244
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 245
    .local v5, "signatures":Ljava/nio/ByteBuffer;
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    .line 247
    .local v6, "publicKeyBytes":[B
    const/4 v0, 0x0

    .line 248
    .local v0, "signatureCount":I
    const/4 v7, -0x1

    .line 249
    .local v7, "bestSigAlgorithm":I
    const/4 v8, 0x0

    .line 250
    .local v8, "bestSigAlgorithmSignatureBytes":[B
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v8

    move v8, v7

    move v7, v0

    .line 251
    .end local v0    # "signatureCount":I
    .local v7, "signatureCount":I
    .local v8, "bestSigAlgorithm":I
    .local v9, "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v10, "bestSigAlgorithmSignatureBytes":[B
    :goto_0
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v11, -0x1

    const/16 v12, 0x8

    if-eqz v0, :cond_4

    .line 252
    add-int/lit8 v7, v7, 0x1

    .line 254
    :try_start_0
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 255
    .local v0, "signature":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-lt v13, v12, :cond_3

    .line 258
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 259
    .local v12, "sigAlgorithm":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-static {v12}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->isSupportedSignatureAlgorithm(I)Z

    move-result v13

    if-nez v13, :cond_0

    .line 261
    goto :goto_0

    .line 263
    :cond_0
    if-eq v8, v11, :cond_1

    .line 264
    invoke-static {v12, v8}, Landroid/util/apk/ApkSigningBlockUtils;->compareSignatureAlgorithm(II)I

    move-result v11

    if-lez v11, :cond_2

    .line 265
    :cond_1
    move v8, v12

    .line 266
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v11

    move-object v0, v11

    .line 272
    .end local v10    # "bestSigAlgorithmSignatureBytes":[B
    .end local v12    # "sigAlgorithm":I
    .local v0, "bestSigAlgorithmSignatureBytes":[B
    move-object v10, v0

    .line 272
    .end local v0    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v10    # "bestSigAlgorithmSignatureBytes":[B
    :cond_2
    goto :goto_0

    .line 256
    .local v0, "signature":Ljava/nio/ByteBuffer;
    :cond_3
    new-instance v11, Ljava/lang/SecurityException;

    const-string v12, "Signature record too short"

    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0    # "signature":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to parse signature record #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    if-ne v8, v11, :cond_6

    .line 275
    if-nez v7, :cond_5

    .line 276
    new-instance v0, Ljava/lang/SecurityException;

    const-string v11, "No signatures found"

    invoke-direct {v0, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v11, "No supported signatures found"

    invoke-direct {v0, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_6
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v11

    .line 283
    .local v11, "keyAlgorithm":Ljava/lang/String;
    nop

    .line 284
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v13

    .line 285
    .local v13, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 286
    .local v14, "jcaSignatureAlgorithm":Ljava/lang/String;
    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    move-object v15, v0

    .line 289
    .local v15, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    nop

    .line 290
    :try_start_1
    invoke-static {v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v12, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v12, v6}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 291
    invoke-virtual {v0, v12}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 292
    .local v0, "publicKey":Ljava/security/PublicKey;
    invoke-static {v14}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v12

    .line 293
    .local v12, "sig":Ljava/security/Signature;
    invoke-virtual {v12, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_8

    .line 294
    if-eqz v15, :cond_7

    .line 295
    :try_start_2
    invoke-virtual {v12, v15}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 299
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    .end local v12    # "sig":Ljava/security/Signature;
    :catch_1
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v21, v7

    move/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v22, v10

    move-object/from16 v25, v11

    move-object/from16 v27, v13

    move-object/from16 v10, p1

    goto/16 :goto_7

    .line 297
    .restart local v0    # "publicKey":Ljava/security/PublicKey;
    .restart local v12    # "sig":Ljava/security/Signature;
    :cond_7
    :goto_1
    :try_start_3
    invoke-virtual {v12, v2}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 298
    invoke-virtual {v12, v10}, Ljava/security/Signature;->verify([B)Z

    move-result v17
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_8

    .line 298
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    .end local v12    # "sig":Ljava/security/Signature;
    move/from16 v12, v17

    .line 303
    .local v12, "sigVerified":Z
    nop

    .line 301
    nop

    .line 304
    if-eqz v12, :cond_13

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "contentDigest":[B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 312
    move-object/from16 v18, v5

    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 313
    .local v5, "digests":Ljava/nio/ByteBuffer;
    .local v18, "signatures":Ljava/nio/ByteBuffer;
    move-object/from16 v19, v0

    new-instance v0, Ljava/util/ArrayList;

    .line 313
    .end local v0    # "contentDigest":[B
    .local v19, "contentDigest":[B
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v0

    .line 314
    .local v20, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v21, v7

    move-object/from16 v7, v19

    const/16 v17, 0x0

    .line 315
    .end local v19    # "contentDigest":[B
    .local v7, "contentDigest":[B
    .local v17, "digestCount":I
    .local v21, "signatureCount":I
    :goto_2
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 316
    move-object/from16 v22, v10

    add-int/lit8 v10, v17, 0x1

    .line 318
    .end local v17    # "digestCount":I
    .local v10, "digestCount":I
    .local v22, "bestSigAlgorithmSignatureBytes":[B
    :try_start_4
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v17
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v23, v17

    .line 319
    .local v23, "digest":Ljava/nio/ByteBuffer;
    move-object/from16 v24, v5

    move-object/from16 v0, v23

    :try_start_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_5} :catch_4

    .line 319
    .end local v5    # "digests":Ljava/nio/ByteBuffer;
    .end local v23    # "digest":Ljava/nio/ByteBuffer;
    .local v0, "digest":Ljava/nio/ByteBuffer;
    .local v24, "digests":Ljava/nio/ByteBuffer;
    move-object/from16 v25, v11

    const/16 v11, 0x8

    if-lt v5, v11, :cond_9

    .line 322
    .end local v11    # "keyAlgorithm":Ljava/lang/String;
    .local v25, "keyAlgorithm":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 323
    .local v5, "sigAlgorithm":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_6 .. :try_end_6} :catch_2

    move/from16 v26, v12

    move-object/from16 v12, v20

    :try_start_7
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v26, "sigVerified":Z
    if-ne v5, v8, :cond_8

    .line 325
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v11

    move-object v0, v11

    .line 329
    .end local v5    # "sigAlgorithm":I
    .end local v7    # "contentDigest":[B
    .local v0, "contentDigest":[B
    move-object v7, v0

    .line 314
    .end local v0    # "contentDigest":[B
    .restart local v7    # "contentDigest":[B
    :cond_8
    move/from16 v17, v10

    move-object/from16 v20, v12

    move-object/from16 v10, v22

    move-object/from16 v5, v24

    move-object/from16 v11, v25

    move/from16 v12, v26

    goto :goto_2

    .line 327
    .end local v26    # "sigVerified":Z
    .local v12, "sigVerified":Z
    .restart local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_2
    move-exception v0

    move/from16 v26, v12

    move-object/from16 v12, v20

    .line 327
    .end local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v26    # "sigVerified":Z
    goto :goto_3

    .line 320
    .end local v26    # "sigVerified":Z
    .local v0, "digest":Ljava/nio/ByteBuffer;
    .local v12, "sigVerified":Z
    .restart local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_9
    move/from16 v26, v12

    move-object/from16 v12, v20

    .line 320
    .end local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v26    # "sigVerified":Z
    new-instance v5, Ljava/io/IOException;

    const-string v11, "Record too short"

    invoke-direct {v5, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_7 .. :try_end_7} :catch_3

    .line 327
    .end local v0    # "digest":Ljava/nio/ByteBuffer;
    :catch_3
    move-exception v0

    goto :goto_3

    .line 327
    .end local v25    # "keyAlgorithm":Ljava/lang/String;
    .end local v26    # "sigVerified":Z
    .restart local v11    # "keyAlgorithm":Ljava/lang/String;
    .local v12, "sigVerified":Z
    .restart local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_4
    move-exception v0

    move-object/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v12, v20

    .line 327
    .end local v11    # "keyAlgorithm":Ljava/lang/String;
    .end local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v25    # "keyAlgorithm":Ljava/lang/String;
    .restart local v26    # "sigVerified":Z
    goto :goto_3

    .line 327
    .end local v24    # "digests":Ljava/nio/ByteBuffer;
    .end local v25    # "keyAlgorithm":Ljava/lang/String;
    .end local v26    # "sigVerified":Z
    .local v5, "digests":Ljava/nio/ByteBuffer;
    .restart local v11    # "keyAlgorithm":Ljava/lang/String;
    .local v12, "sigVerified":Z
    .restart local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_5
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v12, v20

    .line 328
    .end local v5    # "digests":Ljava/nio/ByteBuffer;
    .end local v11    # "keyAlgorithm":Ljava/lang/String;
    .end local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v0, "e":Ljava/lang/Exception;
    .local v12, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v24    # "digests":Ljava/nio/ByteBuffer;
    .restart local v25    # "keyAlgorithm":Ljava/lang/String;
    .restart local v26    # "sigVerified":Z
    :goto_3
    new-instance v5, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v13

    const-string v13, "Failed to parse digest record #"

    .line 328
    .end local v13    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .local v27, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v22    # "bestSigAlgorithmSignatureBytes":[B
    .end local v24    # "digests":Ljava/nio/ByteBuffer;
    .end local v25    # "keyAlgorithm":Ljava/lang/String;
    .end local v26    # "sigVerified":Z
    .end local v27    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .restart local v5    # "digests":Ljava/nio/ByteBuffer;
    .local v10, "bestSigAlgorithmSignatureBytes":[B
    .restart local v11    # "keyAlgorithm":Ljava/lang/String;
    .local v12, "sigVerified":Z
    .restart local v13    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .restart local v17    # "digestCount":I
    .restart local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_a
    move-object/from16 v24, v5

    move-object/from16 v22, v10

    move-object/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v12, v20

    .line 332
    .end local v5    # "digests":Ljava/nio/ByteBuffer;
    .end local v10    # "bestSigAlgorithmSignatureBytes":[B
    .end local v11    # "keyAlgorithm":Ljava/lang/String;
    .end local v13    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v22    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v24    # "digests":Ljava/nio/ByteBuffer;
    .restart local v25    # "keyAlgorithm":Ljava/lang/String;
    .restart local v26    # "sigVerified":Z
    .restart local v27    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    invoke-interface {v9, v12}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 336
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v5

    .line 337
    .local v5, "digestAlgorithm":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v10, p1

    invoke-interface {v10, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [B

    .line 338
    .local v11, "previousSignerDigest":[B
    if-eqz v11, :cond_c

    .line 339
    invoke-static {v11, v7}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 345
    move-object/from16 v28, v7

    goto :goto_4

    .line 340
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    move-object/from16 v28, v7

    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v7

    .line 341
    .end local v7    # "contentDigest":[B
    .local v28, "contentDigest":[B
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    .end local v28    # "contentDigest":[B
    .restart local v7    # "contentDigest":[B
    :cond_c
    move-object/from16 v28, v7

    .line 345
    .end local v7    # "contentDigest":[B
    .restart local v28    # "contentDigest":[B
    :goto_4
    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 346
    .local v7, "certificates":Ljava/nio/ByteBuffer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 347
    .local v13, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v0, 0x0

    .line 348
    .local v0, "certificateCount":I
    :goto_5
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 349
    move/from16 v29, v5

    add-int/lit8 v5, v0, 0x1

    .line 350
    .end local v0    # "certificateCount":I
    .local v5, "certificateCount":I
    .local v29, "digestAlgorithm":I
    invoke-static {v7}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    move-object/from16 v30, v0

    .line 353
    .local v30, "encodedCert":[B
    :try_start_8
    new-instance v0, Ljava/io/ByteArrayInputStream;
    :try_end_8
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_7

    move-object/from16 v31, v7

    move-object/from16 v7, v30

    :try_start_9
    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 354
    .end local v30    # "encodedCert":[B
    .local v7, "encodedCert":[B
    .local v31, "certificates":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_9
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_6

    .line 357
    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    nop

    .line 356
    nop

    .line 358
    move/from16 v32, v8

    new-instance v8, Landroid/util/apk/VerbatimX509Certificate;

    .line 358
    .end local v8    # "bestSigAlgorithm":I
    .local v32, "bestSigAlgorithm":I
    invoke-direct {v8, v0, v7}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    move-object v0, v8

    .line 360
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v7    # "encodedCert":[B
    nop

    .line 347
    move v0, v5

    move/from16 v5, v29

    move-object/from16 v7, v31

    move/from16 v8, v32

    goto :goto_5

    .line 355
    .end local v32    # "bestSigAlgorithm":I
    .restart local v7    # "encodedCert":[B
    .restart local v8    # "bestSigAlgorithm":I
    :catch_6
    move-exception v0

    move/from16 v32, v8

    .line 355
    .end local v8    # "bestSigAlgorithm":I
    .restart local v32    # "bestSigAlgorithm":I
    goto :goto_6

    .line 355
    .end local v31    # "certificates":Ljava/nio/ByteBuffer;
    .end local v32    # "bestSigAlgorithm":I
    .local v7, "certificates":Ljava/nio/ByteBuffer;
    .restart local v8    # "bestSigAlgorithm":I
    .restart local v30    # "encodedCert":[B
    :catch_7
    move-exception v0

    move-object/from16 v31, v7

    move/from16 v32, v8

    move-object/from16 v7, v30

    .line 356
    .end local v8    # "bestSigAlgorithm":I
    .end local v30    # "encodedCert":[B
    .local v0, "e":Ljava/security/cert/CertificateException;
    .local v7, "encodedCert":[B
    .restart local v31    # "certificates":Ljava/nio/ByteBuffer;
    .restart local v32    # "bestSigAlgorithm":I
    :goto_6
    new-instance v8, Ljava/lang/SecurityException;

    move-object/from16 v33, v7

    new-instance v7, Ljava/lang/StringBuilder;

    .line 356
    .end local v7    # "encodedCert":[B
    .local v33, "encodedCert":[B
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v9

    const-string v9, "Failed to decode certificate #"

    .line 356
    .end local v9    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v34, "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 363
    .end local v29    # "digestAlgorithm":I
    .end local v31    # "certificates":Ljava/nio/ByteBuffer;
    .end local v32    # "bestSigAlgorithm":I
    .end local v33    # "encodedCert":[B
    .end local v34    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v0, "certificateCount":I
    .local v5, "digestAlgorithm":I
    .local v7, "certificates":Ljava/nio/ByteBuffer;
    .restart local v8    # "bestSigAlgorithm":I
    .restart local v9    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_d
    move/from16 v29, v5

    move-object/from16 v31, v7

    move/from16 v32, v8

    move-object/from16 v34, v9

    .line 363
    .end local v5    # "digestAlgorithm":I
    .end local v7    # "certificates":Ljava/nio/ByteBuffer;
    .end local v8    # "bestSigAlgorithm":I
    .end local v9    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v29    # "digestAlgorithm":I
    .restart local v31    # "certificates":Ljava/nio/ByteBuffer;
    .restart local v32    # "bestSigAlgorithm":I
    .restart local v34    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 366
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 367
    .local v5, "mainCertificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    .line 368
    .local v7, "certificatePublicKeyBytes":[B
    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 373
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 374
    .local v8, "signedMinSDK":I
    if-ne v8, v3, :cond_f

    .line 379
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 380
    .local v9, "signedMaxSDK":I
    if-ne v9, v4, :cond_e

    .line 385
    move/from16 v35, v0

    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 386
    .local v0, "additionalAttrs":Ljava/nio/ByteBuffer;
    .local v35, "certificateCount":I
    invoke-static {v0, v13, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verifyAdditionalAttributes(Ljava/nio/ByteBuffer;Ljava/util/List;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v16

    return-object v16

    .line 381
    .end local v35    # "certificateCount":I
    .local v0, "certificateCount":I
    :cond_e
    move/from16 v35, v0

    .line 381
    .end local v0    # "certificateCount":I
    .restart local v35    # "certificateCount":I
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "maxSdkVersion mismatch between signed and unsigned in v3 signer block."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    .end local v9    # "signedMaxSDK":I
    .end local v35    # "certificateCount":I
    .restart local v0    # "certificateCount":I
    :cond_f
    move/from16 v35, v0

    .line 375
    .end local v0    # "certificateCount":I
    .restart local v35    # "certificateCount":I
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "minSdkVersion mismatch between signed and unsigned in v3 signer block."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    .end local v8    # "signedMinSDK":I
    .end local v35    # "certificateCount":I
    .restart local v0    # "certificateCount":I
    :cond_10
    move/from16 v35, v0

    .line 369
    .end local v0    # "certificateCount":I
    .restart local v35    # "certificateCount":I
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Public key mismatch between certificate and signature record"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    .end local v5    # "mainCertificate":Ljava/security/cert/X509Certificate;
    .end local v7    # "certificatePublicKeyBytes":[B
    .end local v35    # "certificateCount":I
    .restart local v0    # "certificateCount":I
    :cond_11
    move/from16 v35, v0

    .line 364
    .end local v0    # "certificateCount":I
    .restart local v35    # "certificateCount":I
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No certificates listed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    .end local v11    # "previousSignerDigest":[B
    .end local v13    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v28    # "contentDigest":[B
    .end local v29    # "digestAlgorithm":I
    .end local v31    # "certificates":Ljava/nio/ByteBuffer;
    .end local v32    # "bestSigAlgorithm":I
    .end local v34    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v35    # "certificateCount":I
    .local v7, "contentDigest":[B
    .local v8, "bestSigAlgorithm":I
    .local v9, "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_12
    move-object/from16 v10, p1

    move-object/from16 v28, v7

    move/from16 v32, v8

    move-object/from16 v34, v9

    .line 333
    .end local v7    # "contentDigest":[B
    .end local v8    # "bestSigAlgorithm":I
    .end local v9    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v28    # "contentDigest":[B
    .restart local v32    # "bestSigAlgorithm":I
    .restart local v34    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    .end local v17    # "digestCount":I
    .end local v18    # "signatures":Ljava/nio/ByteBuffer;
    .end local v21    # "signatureCount":I
    .end local v22    # "bestSigAlgorithmSignatureBytes":[B
    .end local v24    # "digests":Ljava/nio/ByteBuffer;
    .end local v25    # "keyAlgorithm":Ljava/lang/String;
    .end local v26    # "sigVerified":Z
    .end local v27    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v28    # "contentDigest":[B
    .end local v32    # "bestSigAlgorithm":I
    .end local v34    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v5, "signatures":Ljava/nio/ByteBuffer;
    .local v7, "signatureCount":I
    .restart local v8    # "bestSigAlgorithm":I
    .restart local v9    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "bestSigAlgorithmSignatureBytes":[B
    .local v11, "keyAlgorithm":Ljava/lang/String;
    .local v12, "sigVerified":Z
    .local v13, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    :cond_13
    move-object/from16 v18, v5

    move/from16 v21, v7

    move/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v22, v10

    move-object/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v10, p1

    .end local v5    # "signatures":Ljava/nio/ByteBuffer;
    .end local v7    # "signatureCount":I
    .end local v8    # "bestSigAlgorithm":I
    .end local v9    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "bestSigAlgorithmSignatureBytes":[B
    .end local v11    # "keyAlgorithm":Ljava/lang/String;
    .end local v12    # "sigVerified":Z
    .end local v13    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .restart local v18    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v21    # "signatureCount":I
    .restart local v22    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v25    # "keyAlgorithm":Ljava/lang/String;
    .restart local v26    # "sigVerified":Z
    .restart local v27    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .restart local v32    # "bestSigAlgorithm":I
    .restart local v34    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " signature did not verify"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    .end local v18    # "signatures":Ljava/nio/ByteBuffer;
    .end local v21    # "signatureCount":I
    .end local v22    # "bestSigAlgorithmSignatureBytes":[B
    .end local v25    # "keyAlgorithm":Ljava/lang/String;
    .end local v26    # "sigVerified":Z
    .end local v27    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v32    # "bestSigAlgorithm":I
    .end local v34    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v7    # "signatureCount":I
    .restart local v8    # "bestSigAlgorithm":I
    .restart local v9    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v11    # "keyAlgorithm":Ljava/lang/String;
    .restart local v13    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    :catch_8
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v21, v7

    move/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v22, v10

    move-object/from16 v25, v11

    move-object/from16 v27, v13

    move-object/from16 v10, p1

    .line 301
    .end local v5    # "signatures":Ljava/nio/ByteBuffer;
    .end local v7    # "signatureCount":I
    .end local v8    # "bestSigAlgorithm":I
    .end local v9    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "bestSigAlgorithmSignatureBytes":[B
    .end local v11    # "keyAlgorithm":Ljava/lang/String;
    .end local v13    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .local v0, "e":Ljava/security/GeneralSecurityException;
    .restart local v18    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v21    # "signatureCount":I
    .restart local v22    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v25    # "keyAlgorithm":Ljava/lang/String;
    .restart local v27    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .restart local v32    # "bestSigAlgorithm":I
    .restart local v34    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_7
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to verify "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " signature"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 237
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v6    # "publicKeyBytes":[B
    .end local v14    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .end local v15    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v18    # "signatures":Ljava/nio/ByteBuffer;
    .end local v21    # "signatureCount":I
    .end local v22    # "bestSigAlgorithmSignatureBytes":[B
    .end local v25    # "keyAlgorithm":Ljava/lang/String;
    .end local v27    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v32    # "bestSigAlgorithm":I
    .end local v34    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_14
    move-object/from16 v10, p1

    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signer not supported by this platform version. This platform: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", signer minSdkVersion: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", maxSdkVersion: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
