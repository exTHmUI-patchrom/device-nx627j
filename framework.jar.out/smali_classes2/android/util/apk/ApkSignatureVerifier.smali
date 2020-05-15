.class public Landroid/util/apk/ApkSignatureVerifier;
.super Ljava/lang/Object;
.source "ApkSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureVerifier$Result;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_CORES:I

.field private static final TAG:Ljava/lang/String; = "ApkSignatureVerifier"

.field private static final VERIFICATION_TIME_OUT:I = 0x2710

.field private static final sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private static sPerfBoost:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 69
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    :goto_0
    sput v1, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    .line 71
    const/4 v0, 0x0

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 62
    sget v0, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    return v0
.end method

.method static synthetic access$100(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 1
    .param p0, "x0"    # Landroid/util/jar/StrictJarFile;
    .param p1, "x1"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method private static closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .locals 1
    .param p0, "jarFile"    # Landroid/util/jar/StrictJarFile;

    .line 394
    if-eqz p0, :cond_0

    .line 396
    :try_start_0
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 400
    :cond_0
    :goto_0
    return-void
.end method

.method public static convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .locals 4
    .param p0, "certs"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 386
    array-length v0, p0

    new-array v0, v0, [Landroid/content/pm/Signature;

    .line 387
    .local v0, "res":[Landroid/content/pm/Signature;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 388
    new-instance v2, Landroid/content/pm/Signature;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    aput-object v2, v0, v1

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .locals 1
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

    .line 525
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 526
    :catch_0
    move-exception v0

    .line 529
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateFsverityRootHash(Ljava/lang/String;)[B
    .locals 2
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->generateFsverityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 543
    :catch_0
    move-exception v0

    .line 547
    :try_start_1
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->generateFsverityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 548
    :catch_1
    move-exception v0

    .line 549
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getVerityRootHash(Ljava/lang/String;)[B
    .locals 1
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 507
    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 508
    :catch_0
    move-exception v0

    .line 511
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 6
    .param p0, "jarFile"    # Landroid/util/jar/StrictJarFile;
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x0

    .line 351
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 352
    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->readFullyIgnoringContents(Ljava/io/InputStream;)V

    .line 353
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 353
    return-object v1

    .line 358
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public static plsCertsNoVerifyOnlyCerts(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 14
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "minSignatureSchemeVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 414
    const/4 v0, 0x3

    const/16 v1, -0x67

    if-gt p1, v0, :cond_5

    .line 422
    const-string v2, "certsOnlyV3"

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 424
    nop

    .line 425
    const/4 v2, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->plsCertsNoVerifyOnlyCerts(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v6

    .line 426
    .local v6, "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    new-array v7, v5, [[Ljava/security/cert/Certificate;

    iget-object v8, v6, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aput-object v8, v7, v2

    .line 427
    .local v7, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v7}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v8

    .line 428
    .local v8, "signerSigs":[Landroid/content/pm/Signature;
    const/4 v9, 0x0

    .line 429
    .local v9, "pastSignerSigs":[Landroid/content/pm/Signature;
    const/4 v10, 0x0

    .line 430
    .local v10, "pastSignerSigsFlags":[I
    iget-object v11, v6, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    if-eqz v11, :cond_0

    .line 432
    iget-object v11, v6, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v11, v11, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Landroid/content/pm/Signature;

    move-object v9, v11

    .line 433
    iget-object v11, v6, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v11, v11, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [I

    move-object v10, v11

    .line 434
    move v11, v2

    .local v11, "i":I
    :goto_0
    array-length v12, v9

    if-ge v11, v12, :cond_0

    .line 435
    new-instance v12, Landroid/content/pm/Signature;

    iget-object v13, v6, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v13, v13, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509Certificate;

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v12, v9, v11

    .line 436
    iget-object v12, v6, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v12, v12, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v10, v11

    .line 434
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 439
    .end local v11    # "i":I
    :cond_0
    new-instance v11, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v11, v8, v0, v9, v10}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;[I)V
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 439
    return-object v11

    .line 454
    .end local v6    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v7    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v8    # "signerSigs":[Landroid/content/pm/Signature;
    .end local v9    # "pastSignerSigs":[Landroid/content/pm/Signature;
    .end local v10    # "pastSignerSigsFlags":[I
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 448
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to collect certificates from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " using APK Signature Scheme v3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 444
    .local v6, "e":Landroid/util/apk/SignatureNotFoundException;
    if-ge p1, v0, :cond_4

    .line 454
    .end local v6    # "e":Landroid/util/apk/SignatureNotFoundException;
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 455
    nop

    .line 458
    const/4 v0, 0x2

    if-gt p1, v0, :cond_3

    .line 466
    const-string v6, "certsOnlyV2"

    invoke-static {v3, v4, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 468
    nop

    .line 469
    :try_start_2
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->plsCertsNoVerifyOnlyCerts(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 470
    .local v6, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v7

    .line 471
    .local v7, "signerSigs":[Landroid/content/pm/Signature;
    new-instance v8, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v8, v7, v0}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I)V
    :try_end_2
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 485
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 471
    return-object v8

    .line 485
    .end local v6    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v7    # "signerSigs":[Landroid/content/pm/Signature;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 479
    :catch_2
    move-exception v0

    .line 481
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to collect certificates from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " using APK Signature Scheme v2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 473
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 475
    .local v6, "e":Landroid/util/apk/SignatureNotFoundException;
    if-ge p1, v0, :cond_2

    .line 485
    .end local v6    # "e":Landroid/util/apk/SignatureNotFoundException;
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 486
    nop

    .line 489
    if-gt p1, v5, :cond_1

    .line 497
    invoke-static {p0, v2}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Ljava/lang/String;Z)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    return-object v0

    .line 491
    :cond_1
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No signature found in package of version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or newer for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 476
    .restart local v6    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_2
    :try_start_4
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No APK Signature Scheme v2 signature in package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 485
    .end local v6    # "e":Landroid/util/apk/SignatureNotFoundException;
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 460
    :cond_3
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No signature found in package of version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or newer for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 445
    .restart local v6    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_4
    :try_start_5
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No APK Signature Scheme v3 signature in package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 454
    .end local v6    # "e":Landroid/util/apk/SignatureNotFoundException;
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 416
    :cond_5
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No signature found in package of version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or newer for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private static readFullyIgnoringContents(Ljava/io/InputStream;)V
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 364
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    .line 365
    const/16 v1, 0x1000

    new-array v0, v1, [B

    .line 368
    :cond_0
    const/4 v1, 0x0

    .line 369
    .local v1, "n":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .line 370
    .local v1, "count":I
    .local v3, "n":I
    :goto_0
    array-length v4, v0

    invoke-virtual {p0, v0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v3, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 371
    add-int/2addr v1, v3

    goto :goto_0

    .line 374
    :cond_1
    sget-object v2, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method public static verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 13
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "minSignatureSchemeVersion"    # I
        .annotation build Landroid/content/pm/PackageParser$SigningDetails$SignatureSchemeVersion;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x3

    const/16 v1, -0x67

    if-gt p1, v0, :cond_5

    .line 89
    const-string/jumbo v2, "verifyV3"

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 91
    nop

    .line 92
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v5

    .line 93
    .local v5, "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    new-array v6, v2, [[Ljava/security/cert/Certificate;

    iget-object v7, v5, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 94
    .local v6, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v7

    .line 95
    .local v7, "signerSigs":[Landroid/content/pm/Signature;
    const/4 v9, 0x0

    .line 96
    .local v9, "pastSignerSigs":[Landroid/content/pm/Signature;
    const/4 v10, 0x0

    .line 97
    .local v10, "pastSignerSigsFlags":[I
    iget-object v11, v5, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    if-eqz v11, :cond_0

    .line 99
    iget-object v11, v5, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v11, v11, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Landroid/content/pm/Signature;

    move-object v9, v11

    .line 100
    iget-object v11, v5, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v11, v11, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [I

    move-object v10, v11

    .line 101
    nop

    .line 101
    .local v8, "i":I
    :goto_0
    array-length v11, v9

    if-ge v8, v11, :cond_0

    .line 102
    new-instance v11, Landroid/content/pm/Signature;

    iget-object v12, v5, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v12, v12, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v11, v9, v8

    .line 103
    iget-object v11, v5, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v11, v11, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v10, v8

    .line 101
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 106
    .end local v8    # "i":I
    :cond_0
    new-instance v8, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v8, v7, v0, v9, v10}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;[I)V
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 106
    return-object v8

    .line 121
    .end local v5    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v6    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v7    # "signerSigs":[Landroid/content/pm/Signature;
    .end local v9    # "pastSignerSigs":[Landroid/content/pm/Signature;
    .end local v10    # "pastSignerSigsFlags":[I
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to collect certificates from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " using APK Signature Scheme v3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 111
    .local v5, "e":Landroid/util/apk/SignatureNotFoundException;
    if-ge p1, v0, :cond_4

    .line 121
    .end local v5    # "e":Landroid/util/apk/SignatureNotFoundException;
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 122
    nop

    .line 125
    const/4 v0, 0x2

    if-gt p1, v0, :cond_3

    .line 133
    const-string/jumbo v5, "verifyV2"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 135
    :try_start_2
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 136
    .local v5, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v6

    .line 138
    .local v6, "signerSigs":[Landroid/content/pm/Signature;
    new-instance v7, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v7, v6, v0}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I)V
    :try_end_2
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 138
    return-object v7

    .line 152
    .end local v5    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v6    # "signerSigs":[Landroid/content/pm/Signature;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 146
    :catch_2
    move-exception v0

    .line 148
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to collect certificates from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " using APK Signature Scheme v2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 142
    .local v5, "e":Landroid/util/apk/SignatureNotFoundException;
    if-ge p1, v0, :cond_2

    .line 152
    .end local v5    # "e":Landroid/util/apk/SignatureNotFoundException;
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 153
    nop

    .line 156
    if-gt p1, v2, :cond_1

    .line 164
    invoke-static {p0, v2}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Ljava/lang/String;Z)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    return-object v0

    .line 158
    :cond_1
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No signature found in package of version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or newer for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 143
    .restart local v5    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_2
    :try_start_4
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No APK Signature Scheme v2 signature in package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 152
    .end local v5    # "e":Landroid/util/apk/SignatureNotFoundException;
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 127
    :cond_3
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No signature found in package of version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or newer for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 112
    .restart local v5    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_4
    :try_start_5
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No APK Signature Scheme v3 signature in package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    .end local v5    # "e":Landroid/util/apk/SignatureNotFoundException;
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 83
    :cond_5
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No signature found in package of version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or newer for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private static verifyV1Signature(Ljava/lang/String;Z)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 29
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object/from16 v8, p0

    .line 177
    move/from16 v9, p1

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    sget v0, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    move v11, v0

    .line 178
    .local v11, "objectNumber":I
    const/4 v1, 0x0

    .line 179
    .local v1, "isPerfLockAcquired":Z
    new-array v12, v11, [Landroid/util/jar/StrictJarFile;

    .line 180
    .local v12, "jarFile":[Landroid/util/jar/StrictJarFile;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v13, v0

    .line 185
    .local v13, "strictJarFiles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/jar/StrictJarFile;>;"
    const-wide/32 v6, 0x40000

    const/4 v15, 0x0

    :try_start_0
    const-string/jumbo v0, "strictJarFileCtor"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 187
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v0, :cond_1

    .line 188
    :try_start_1
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 332
    :catchall_0
    move-exception v0

    move/from16 v16, v1

    .line 332
    .end local v1    # "isPerfLockAcquired":Z
    .local v16, "isPerfLockAcquired":Z
    :goto_1
    move-wide v2, v6

    goto/16 :goto_10

    .line 190
    .end local v16    # "isPerfLockAcquired":Z
    .restart local v1    # "isPerfLockAcquired":Z
    :cond_1
    :goto_2
    :try_start_2
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    if-eqz v9, :cond_2

    .line 192
    :try_start_3
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    const/16 v2, 0x1088

    const/4 v3, 0x0

    const/16 v4, 0x2710

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 194
    const-string v0, "ApkSignatureVerifier"

    const-string v2, " Perflock acquired for PackageInstall "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    const/4 v1, 0x1

    .line 199
    .end local v1    # "isPerfLockAcquired":Z
    .restart local v16    # "isPerfLockAcquired":Z
    :cond_2
    move/from16 v16, v1

    move v0, v15

    .line 199
    .local v0, "i":I
    :goto_3
    if-ge v0, v11, :cond_3

    .line 200
    :try_start_4
    new-instance v1, Landroid/util/jar/StrictJarFile;

    invoke-direct {v1, v8, v10, v9}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    aput-object v1, v12, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 332
    .end local v0    # "i":I
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 328
    :catch_0
    move-exception v0

    move-wide v2, v6

    .line 328
    .end local v16    # "isPerfLockAcquired":Z
    .restart local v1    # "isPerfLockAcquired":Z
    :goto_4
    move/from16 v1, v16

    goto/16 :goto_e

    .line 325
    .end local v1    # "isPerfLockAcquired":Z
    .restart local v16    # "isPerfLockAcquired":Z
    :catch_1
    move-exception v0

    move-wide v2, v6

    .line 325
    .end local v16    # "isPerfLockAcquired":Z
    .restart local v1    # "isPerfLockAcquired":Z
    :goto_5
    move/from16 v1, v16

    goto/16 :goto_f

    .line 205
    .end local v1    # "isPerfLockAcquired":Z
    .restart local v16    # "isPerfLockAcquired":Z
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 209
    .local v4, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    aget-object v0, v12, v15

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    move-object v3, v0

    .line 211
    .local v3, "manifestEntry":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_11

    .line 215
    aget-object v0, v12, v15

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v0

    move-object v2, v0

    .line 216
    .local v2, "lastCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 221
    invoke-static {v2}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v0

    move-object v1, v0

    .line 224
    .local v1, "lastSigs":[Landroid/content/pm/Signature;
    if-eqz v9, :cond_d

    .line 225
    aget-object v0, v12, v15

    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 225
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :goto_6
    move-object v5, v0

    .line 226
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 227
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 228
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 228
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    goto :goto_7

    .line 230
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_4
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v18, v17

    .line 231
    .local v18, "entryName":Ljava/lang/String;
    :try_start_5
    const-string v6, "META-INF/"

    move-object/from16 v7, v18

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 231
    .end local v18    # "entryName":Ljava/lang/String;
    .local v7, "entryName":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 231
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "entryName":Ljava/lang/String;
    goto :goto_7

    .line 232
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v7    # "entryName":Ljava/lang/String;
    :cond_5
    const-string v6, "AndroidManifest.xml"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 232
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "entryName":Ljava/lang/String;
    goto :goto_7

    .line 234
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v7    # "entryName":Ljava/lang/String;
    :cond_6
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "entryName":Ljava/lang/String;
    nop

    .line 225
    :goto_7
    move-object v0, v5

    const-wide/32 v6, 0x40000

    goto :goto_6

    .line 244
    :cond_7
    new-instance v0, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    invoke-direct {v0}, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;-><init>()V

    move-object v7, v0

    .line 245
    .local v7, "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v7, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    .line 246
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v20, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    sget v21, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    const-wide/16 v22, 0x1

    sget-object v24, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object/from16 v19, v0

    move-object/from16 v25, v6

    invoke-direct/range {v19 .. v25}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    move-object v6, v0

    .line 252
    .local v6, "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/zip/ZipEntry;

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    .line 253
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    .local v18, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    new-instance v17, Landroid/util/apk/ApkSignatureVerifier$1;

    move-object/from16 v26, v1

    move-object/from16 v1, v17

    .line 253
    .end local v1    # "lastSigs":[Landroid/content/pm/Signature;
    .local v26, "lastSigs":[Landroid/content/pm/Signature;
    move-object/from16 v19, v2

    move-object v2, v7

    .line 253
    .end local v2    # "lastCerts":[[Ljava/security/cert/Certificate;
    .local v19, "lastCerts":[[Ljava/security/cert/Certificate;
    move-object/from16 v20, v3

    move-object v3, v13

    .line 253
    .end local v3    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .local v20, "manifestEntry":Ljava/util/zip/ZipEntry;
    move-object/from16 v21, v4

    move-object v4, v12

    .line 253
    .end local v4    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .local v21, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    move-object v15, v6

    move-object v6, v8

    .line 253
    .end local v6    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .local v15, "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    move-object v14, v7

    move-object/from16 v7, v26

    .line 253
    .end local v7    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .local v14, "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    invoke-direct/range {v1 .. v7}, Landroid/util/apk/ApkSignatureVerifier$1;-><init>(Landroid/util/apk/ApkSignatureVerifier$1VerificationData;Landroid/util/ArrayMap;[Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;[Landroid/content/pm/Signature;)V

    move-object/from16 v1, v17

    .line 299
    .local v1, "verifyTask":Ljava/lang/Runnable;
    iget-object v2, v14, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 300
    :try_start_6
    iget v3, v14, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-nez v3, :cond_8

    .line 301
    invoke-virtual {v15, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 303
    :cond_8
    monitor-exit v2

    .line 304
    .end local v1    # "verifyTask":Ljava/lang/Runnable;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    nop

    .line 252
    move-object v7, v14

    move-object v6, v15

    move-object/from16 v5, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v1, v26

    const/4 v15, 0x0

    goto :goto_8

    .line 303
    .restart local v1    # "verifyTask":Ljava/lang/Runnable;
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .line 305
    .end local v14    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .end local v15    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v19    # "lastCerts":[[Ljava/security/cert/Certificate;
    .end local v20    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v21    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .end local v26    # "lastSigs":[Landroid/content/pm/Signature;
    .local v1, "lastSigs":[Landroid/content/pm/Signature;
    .restart local v2    # "lastCerts":[[Ljava/security/cert/Certificate;
    .restart local v3    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .restart local v6    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local v7    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    :cond_9
    move-object/from16 v26, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v18, v5

    move-object v15, v6

    move-object v14, v7

    .line 305
    .end local v1    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v2    # "lastCerts":[[Ljava/security/cert/Certificate;
    .end local v3    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v4    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .end local v5    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v6    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v7    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .restart local v14    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .restart local v15    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .restart local v19    # "lastCerts":[[Ljava/security/cert/Certificate;
    .restart local v20    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v21    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v26    # "lastSigs":[Landroid/content/pm/Signature;
    iput-boolean v10, v14, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z

    .line 306
    invoke-virtual {v15}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 307
    :goto_9
    iget-boolean v0, v14, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z
    :try_end_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_b

    .line 309
    :try_start_8
    iget v0, v14, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-eqz v0, :cond_a

    iget-boolean v0, v14, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->shutDown:Z

    if-nez v0, :cond_a

    .line 310
    const-string v0, "ApkSignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyV1 Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v14, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v15}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 312
    iput-boolean v10, v14, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->shutDown:Z

    .line 314
    :cond_a
    const-wide/16 v0, 0x32

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    xor-int/2addr v0, v10

    iput-boolean v0, v14, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_a

    .line 316
    :catch_2
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_9
    const-string v1, "ApkSignatureVerifier"

    const-string v2, "VerifyV1 interrupted while awaiting all threads done..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_a
    goto :goto_9

    .line 320
    :cond_b
    iget v0, v14, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-nez v0, :cond_c

    .line 320
    .end local v14    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .end local v15    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    goto :goto_b

    .line 321
    .restart local v14    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .restart local v15    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :cond_c
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    iget v1, v14, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to collect certificates from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v14, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_9
    .catch Ljava/security/GeneralSecurityException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 328
    .end local v14    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .end local v15    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v19    # "lastCerts":[[Ljava/security/cert/Certificate;
    .end local v20    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v21    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .end local v26    # "lastSigs":[Landroid/content/pm/Signature;
    :catch_3
    move-exception v0

    move/from16 v1, v16

    const-wide/32 v2, 0x40000

    goto/16 :goto_e

    .line 325
    :catch_4
    move-exception v0

    move/from16 v1, v16

    const-wide/32 v2, 0x40000

    goto/16 :goto_f

    .line 324
    .restart local v1    # "lastSigs":[Landroid/content/pm/Signature;
    .restart local v2    # "lastCerts":[[Ljava/security/cert/Certificate;
    .restart local v3    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_d
    move-object/from16 v26, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 324
    .end local v1    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v2    # "lastCerts":[[Ljava/security/cert/Certificate;
    .end local v3    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v4    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v19    # "lastCerts":[[Ljava/security/cert/Certificate;
    .restart local v20    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v21    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v26    # "lastSigs":[Landroid/content/pm/Signature;
    :goto_b
    :try_start_a
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails;

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v10}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I)V
    :try_end_a
    .catch Ljava/security/GeneralSecurityException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 332
    .end local v26    # "lastSigs":[Landroid/content/pm/Signature;
    .restart local v1    # "lastSigs":[Landroid/content/pm/Signature;
    if-eqz v16, :cond_e

    sget-object v2, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v2, :cond_e

    .line 333
    sget-object v2, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 334
    const/16 v16, 0x0

    .line 335
    const-string v2, "ApkSignatureVerifier"

    const-string v3, " Perflock released for PackageInstall "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_e
    invoke-virtual {v13}, Landroid/util/ArrayMap;->clear()V

    .line 338
    const-wide/32 v2, 0x40000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 339
    const/16 v27, 0x0

    .line 339
    .local v27, "i":I
    :goto_c
    move/from16 v2, v27

    .line 339
    .end local v27    # "i":I
    .local v2, "i":I
    if-ge v2, v11, :cond_f

    .line 340
    aget-object v3, v12, v2

    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 339
    add-int/lit8 v27, v2, 0x1

    .line 339
    .end local v2    # "i":I
    .restart local v27    # "i":I
    goto :goto_c

    .line 324
    .end local v27    # "i":I
    :cond_f
    return-object v0

    .line 332
    .end local v1    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v19    # "lastCerts":[[Ljava/security/cert/Certificate;
    .end local v20    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v21    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catchall_3
    move-exception v0

    const-wide/32 v2, 0x40000

    goto/16 :goto_10

    .line 328
    :catch_5
    move-exception v0

    const-wide/32 v2, 0x40000

    goto/16 :goto_4

    .line 325
    :catch_6
    move-exception v0

    const-wide/32 v2, 0x40000

    goto/16 :goto_5

    .line 217
    .local v2, "lastCerts":[[Ljava/security/cert/Certificate;
    .restart local v3    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_10
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-wide v2, v6

    .line 217
    .end local v2    # "lastCerts":[[Ljava/security/cert/Certificate;
    .end local v3    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v4    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v19    # "lastCerts":[[Ljava/security/cert/Certificate;
    .restart local v20    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v21    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :try_start_b
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has no certificates at entry "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "AndroidManifest.xml"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, -0x67

    invoke-direct {v0, v4, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 212
    .end local v19    # "lastCerts":[[Ljava/security/cert/Certificate;
    .end local v20    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v21    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v3    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_11
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-wide v2, v6

    .line 212
    .end local v3    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v4    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v20    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v21    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v1, -0x65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has no manifest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/security/GeneralSecurityException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 332
    .end local v20    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v21    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catchall_4
    move-exception v0

    goto :goto_10

    .line 328
    :catch_7
    move-exception v0

    goto/16 :goto_4

    .line 325
    :catch_8
    move-exception v0

    goto/16 :goto_5

    .line 332
    .end local v16    # "isPerfLockAcquired":Z
    .local v1, "isPerfLockAcquired":Z
    :catchall_5
    move-exception v0

    move-wide v2, v6

    .line 332
    .end local v1    # "isPerfLockAcquired":Z
    .restart local v16    # "isPerfLockAcquired":Z
    :goto_d
    move/from16 v16, v1

    goto :goto_10

    .line 328
    .end local v16    # "isPerfLockAcquired":Z
    .restart local v1    # "isPerfLockAcquired":Z
    :catch_9
    move-exception v0

    move-wide v2, v6

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    :goto_e
    :try_start_c
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to collect certificates from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, -0x67

    invoke-direct {v4, v6, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v0

    move-wide v2, v6

    .line 326
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_f
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v5, -0x69

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to collect certificates from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 332
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catchall_6
    move-exception v0

    goto :goto_d

    .line 332
    .end local v1    # "isPerfLockAcquired":Z
    .restart local v16    # "isPerfLockAcquired":Z
    :goto_10
    if-eqz v16, :cond_12

    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v1, :cond_12

    .line 333
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 334
    const/16 v16, 0x0

    .line 335
    const-string v1, "ApkSignatureVerifier"

    const-string v4, " Perflock released for PackageInstall "

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_12
    invoke-virtual {v13}, Landroid/util/ArrayMap;->clear()V

    .line 338
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 339
    const/16 v27, 0x0

    .line 339
    .restart local v27    # "i":I
    :goto_11
    move/from16 v1, v27

    .line 339
    .end local v27    # "i":I
    .local v1, "i":I
    if-ge v1, v11, :cond_13

    .line 340
    aget-object v2, v12, v1

    invoke-static {v2}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 339
    add-int/lit8 v27, v1, 0x1

    .line 339
    .end local v1    # "i":I
    .restart local v27    # "i":I
    goto :goto_11

    .line 339
    .end local v27    # "i":I
    :cond_13
    throw v0
.end method
