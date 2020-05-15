.class public Landroid/security/keystore/AndroidKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "AndroidKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "AndroidKeyStore"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    return-void
.end method

.method private getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "encodedCert"    # [B

    .line 179
    invoke-static {p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 180
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    .line 182
    const/4 v1, 0x0

    return-object v1

    .line 185
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "privateKeyAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v2, v1, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v1, v2, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->wrapIntoKeyStoreCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    move-result-object v2

    return-object v2

    .line 198
    :cond_1
    return-object v0
.end method

.method private getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "encodedCert"    # [B

    .line 162
    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method private static getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;
    .locals 10
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 288
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 291
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 296
    .local v1, "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const-string v3, "NONE"

    const-string v4, "SHA-1"

    const-string v5, "SHA-224"

    const-string v6, "SHA-256"

    const-string v7, "SHA-384"

    const-string v8, "SHA-512"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    goto :goto_0

    .line 303
    .end local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    :cond_0
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v3, 0xf

    invoke-direct {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 311
    .restart local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const-string v3, "NONE"

    const-string v4, "MD5"

    const-string v5, "SHA-1"

    const-string v6, "SHA-224"

    const-string v7, "SHA-256"

    const-string v8, "SHA-384"

    const-string v9, "SHA-512"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 321
    const-string v3, "NoPadding"

    const-string v4, "PKCS1Padding"

    const-string v5, "OAEPPadding"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 325
    const-string v3, "PKCS1"

    const-string v4, "PSS"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 330
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 332
    :goto_0
    nop

    .line 334
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 336
    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v2

    return-object v2

    .line 332
    .end local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    :cond_1
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getModificationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, p1, v1}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;I)J

    move-result-wide v0

    .line 239
    .local v0, "epochMillis":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 240
    const/4 v2, 0x0

    return-object v2

    .line 243
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method private getUniqueAliases()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 868
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string v1, ""

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, "rawAliases":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 870
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    .line 873
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 874
    .local v1, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 875
    .local v4, "alias":Ljava/lang/String;
    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 876
    .local v5, "idx":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v5, :cond_1

    goto :goto_1

    .line 881
    :cond_1
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "idx":I
    goto :goto_2

    .line 877
    .restart local v4    # "alias":Ljava/lang/String;
    .restart local v5    # "idx":I
    :cond_2
    :goto_1
    const-string v6, "AndroidKeyStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid alias: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    nop

    .line 874
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "idx":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 884
    :cond_3
    return-object v1
.end method

.method private isCertificateEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 921
    if-eqz p1, :cond_0

    .line 925
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 922
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isKeyEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 915
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 916
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 915
    :goto_1
    return v0
.end method

.method private setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 25
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .param p4, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 341
    move-object/from16 v5, p4

    const/4 v0, 0x0

    .line 343
    .local v0, "flags":I
    if-nez v5, :cond_1

    .line 344
    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v6

    .line 364
    .end local v0    # "flags":I
    .local v6, "spec":Landroid/security/keystore/KeyProtection;
    .local v15, "flags":I
    :cond_0
    :goto_0
    move v15, v0

    goto :goto_1

    .line 345
    .end local v6    # "spec":Landroid/security/keystore/KeyProtection;
    .end local v15    # "flags":I
    .restart local v0    # "flags":I
    :cond_1
    instance-of v6, v5, Landroid/security/KeyStoreParameter;

    if-eqz v6, :cond_3

    .line 346
    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v6

    .line 347
    .restart local v6    # "spec":Landroid/security/keystore/KeyProtection;
    move-object v7, v5

    check-cast v7, Landroid/security/KeyStoreParameter;

    .line 348
    .local v7, "legacySpec":Landroid/security/KeyStoreParameter;
    invoke-virtual {v7}, Landroid/security/KeyStoreParameter;->isEncryptionRequired()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 349
    const/4 v0, 0x1

    .line 351
    .end local v7    # "legacySpec":Landroid/security/KeyStoreParameter;
    :cond_2
    goto :goto_0

    .end local v6    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_3
    instance-of v6, v5, Landroid/security/keystore/KeyProtection;

    if-eqz v6, :cond_1d

    .line 352
    move-object v6, v5

    check-cast v6, Landroid/security/keystore/KeyProtection;

    .line 353
    .restart local v6    # "spec":Landroid/security/keystore/KeyProtection;
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 354
    or-int/lit8 v0, v0, 0x8

    .line 357
    :cond_4
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 358
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 364
    .end local v0    # "flags":I
    .restart local v15    # "flags":I
    :goto_1
    nop

    .line 368
    if-eqz v4, :cond_1c

    array-length v0, v4

    if-eqz v0, :cond_1c

    .line 373
    array-length v0, v4

    new-array v13, v0, [Ljava/security/cert/X509Certificate;

    .line 374
    .local v13, "x509chain":[Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_2
    array-length v8, v4

    if-ge v7, v8, :cond_7

    .line 375
    const-string v8, "X.509"

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 380
    aget-object v8, v4, v7

    instance-of v8, v8, Ljava/security/cert/X509Certificate;

    if-eqz v8, :cond_5

    .line 385
    aget-object v8, v4, v7

    check-cast v8, Ljava/security/cert/X509Certificate;

    aput-object v8, v13, v7

    .line 374
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 381
    :cond_5
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_6
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    .end local v7    # "i":I
    :cond_7
    :try_start_0
    aget-object v7, v13, v0

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v7
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_7

    move-object v12, v7

    .line 393
    .local v12, "userCertBytes":[B
    nop

    .line 392
    nop

    .line 401
    array-length v7, v4

    const/4 v11, 0x1

    if-le v7, v11, :cond_a

    .line 406
    array-length v7, v13

    sub-int/2addr v7, v11

    new-array v7, v7, [[B

    .line 407
    .local v7, "certsBytes":[[B
    const/4 v9, 0x0

    .line 408
    .local v9, "totalCertLength":I
    move v10, v9

    move v9, v0

    .local v9, "i":I
    .local v10, "totalCertLength":I
    :goto_3
    array-length v14, v7

    if-ge v9, v14, :cond_8

    .line 410
    add-int/lit8 v14, v9, 0x1

    :try_start_1
    aget-object v14, v13, v14

    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v14

    aput-object v14, v7, v9

    .line 411
    aget-object v14, v7, v9

    array-length v14, v14
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v10, v14

    .line 414
    nop

    .line 408
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v8, Ljava/security/KeyStoreException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to encode certificate #"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 421
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v9    # "i":I
    :cond_8
    new-array v9, v10, [B

    .line 422
    .local v9, "chainBytes":[B
    const/4 v14, 0x0

    .line 423
    .local v14, "outputOffset":I
    move v11, v14

    move v14, v0

    .local v11, "outputOffset":I
    .local v14, "i":I
    :goto_4
    array-length v8, v7

    if-ge v14, v8, :cond_9

    .line 424
    aget-object v8, v7, v14

    array-length v8, v8

    .line 425
    .local v8, "certLength":I
    aget-object v4, v7, v14

    invoke-static {v4, v0, v9, v11, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 426
    add-int/2addr v11, v8

    .line 427
    const/4 v4, 0x0

    aput-object v4, v7, v14

    .line 423
    .end local v8    # "certLength":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p3

    goto :goto_4

    .line 429
    .end local v7    # "certsBytes":[[B
    .end local v10    # "totalCertLength":I
    .end local v11    # "outputOffset":I
    .end local v14    # "i":I
    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    .line 430
    .end local v9    # "chainBytes":[B
    :cond_a
    const/4 v4, 0x0

    move-object v9, v4

    .restart local v9    # "chainBytes":[B
    :goto_5
    move-object v11, v9

    .line 434
    .end local v9    # "chainBytes":[B
    .local v11, "chainBytes":[B
    instance-of v7, v3, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v7, :cond_b

    .line 435
    move-object v4, v3

    check-cast v4, Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v4}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v8

    .line 437
    .local v8, "pkeyAlias":Ljava/lang/String;
    move-object v4, v8

    nop

    .line 443
    .end local v8    # "pkeyAlias":Ljava/lang/String;
    .local v4, "pkeyAlias":Ljava/lang/String;
    :cond_b
    if-eqz v4, :cond_d

    const-string v7, "USRPKEY_"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 444
    const-string v7, "USRPKEY_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 445
    .local v7, "keySubalias":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 449
    const/4 v8, 0x0

    .line 450
    .local v8, "shouldReplacePrivateKey":Z
    const/4 v9, 0x0

    .line 451
    .local v9, "importArgs":Landroid/security/keymaster/KeymasterArguments;
    const/4 v7, 0x0

    .line 452
    .local v7, "pkcs8EncodedPrivateKeyBytes":[B
    nop

    .line 518
    move-object/from16 v20, v4

    move-object v4, v7

    move/from16 v21, v8

    move-object v3, v9

    goto/16 :goto_a

    .line 446
    .end local v8    # "shouldReplacePrivateKey":Z
    .end local v9    # "importArgs":Landroid/security/keymaster/KeymasterArguments;
    .local v7, "keySubalias":Ljava/lang/String;
    :cond_c
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can only replace keys with same alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " != "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    .end local v7    # "keySubalias":Ljava/lang/String;
    :cond_d
    const/4 v8, 0x1

    .line 455
    .restart local v8    # "shouldReplacePrivateKey":Z
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v7

    .line 456
    .local v7, "keyFormat":Ljava/lang/String;
    if-eqz v7, :cond_1b

    const-string v9, "PKCS#8"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 464
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v9

    .line 465
    .local v9, "pkcs8EncodedPrivateKeyBytes":[B
    if-eqz v9, :cond_1a

    .line 469
    new-instance v10, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v10}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 471
    .local v10, "importArgs":Landroid/security/keymaster/KeymasterArguments;
    const v14, 0x10000002

    .line 473
    :try_start_2
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v0

    .line 471
    invoke-virtual {v10, v14, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 474
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v0

    .line 475
    .local v0, "purposes":I
    nop

    .line 476
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v14

    .line 475
    const v3, 0x20000001

    invoke-virtual {v10, v3, v14}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 477
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6

    if-eqz v3, :cond_e

    .line 478
    const v3, 0x20000005

    .line 479
    :try_start_3
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v14

    .line 478
    invoke-virtual {v10, v3, v14}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    .line 512
    .end local v0    # "purposes":I
    :catch_1
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v21, v8

    .end local v4    # "pkeyAlias":Ljava/lang/String;
    .end local v8    # "shouldReplacePrivateKey":Z
    .end local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    .local v11, "userCertBytes":[B
    .local v12, "chainBytes":[B
    .local v16, "x509chain":[Ljava/security/cert/X509Certificate;
    .local v20, "pkeyAlias":Ljava/lang/String;
    .local v21, "shouldReplacePrivateKey":Z
    :goto_6
    move-object/from16 v16, v13

    move-object/from16 v24, v12

    move-object v12, v11

    move-object/from16 v11, v24

    goto/16 :goto_f

    .line 482
    .end local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    .end local v20    # "pkeyAlias":Ljava/lang/String;
    .end local v21    # "shouldReplacePrivateKey":Z
    .restart local v0    # "purposes":I
    .restart local v4    # "pkeyAlias":Ljava/lang/String;
    .restart local v8    # "shouldReplacePrivateKey":Z
    .local v11, "chainBytes":[B
    .local v12, "userCertBytes":[B
    .restart local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    :cond_e
    :goto_7
    const v3, 0x20000004

    .line 483
    :try_start_4
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v14

    .line 482
    invoke-virtual {v10, v3, v14}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 484
    nop

    .line 486
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v3

    .line 485
    invoke-static {v3}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_6

    .line 487
    .local v3, "keymasterEncryptionPaddings":[I
    and-int/lit8 v14, v0, 0x1

    if-eqz v14, :cond_11

    .line 488
    :try_start_5
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 489
    array-length v14, v3

    move/from16 v18, v0

    const/4 v0, 0x0

    .end local v0    # "purposes":I
    .local v18, "purposes":I
    :goto_8
    if-ge v0, v14, :cond_10

    aget v17, v3, v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4

    move/from16 v19, v17

    .line 490
    .local v19, "keymasterPadding":I
    nop

    .line 491
    move-object/from16 v20, v4

    move/from16 v4, v19

    :try_start_6
    invoke-static {v4}, Landroid/security/keystore/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v17

    .end local v19    # "keymasterPadding":I
    .local v4, "keymasterPadding":I
    .restart local v20    # "pkeyAlias":Ljava/lang/String;
    if-eqz v17, :cond_f

    .line 489
    .end local v4    # "keymasterPadding":I
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v20

    goto :goto_8

    .line 493
    .restart local v4    # "keymasterPadding":I
    :cond_f
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3

    move/from16 v21, v8

    :try_start_7
    const-string v8, "Randomized encryption (IND-CPA) required but is violated by encryption padding mode: "

    .end local v8    # "shouldReplacePrivateKey":Z
    .restart local v21    # "shouldReplacePrivateKey":Z
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". See KeyProtection documentation."

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2

    .line 512
    .end local v3    # "keymasterEncryptionPaddings":[I
    .end local v4    # "keymasterPadding":I
    .end local v18    # "purposes":I
    :catch_2
    move-exception v0

    goto :goto_6

    .end local v21    # "shouldReplacePrivateKey":Z
    .restart local v8    # "shouldReplacePrivateKey":Z
    :catch_3
    move-exception v0

    move/from16 v21, v8

    move-object/from16 v16, v13

    move-object/from16 v24, v12

    move-object v12, v11

    move-object/from16 v11, v24

    .end local v8    # "shouldReplacePrivateKey":Z
    .restart local v21    # "shouldReplacePrivateKey":Z
    goto/16 :goto_f

    .line 502
    .end local v20    # "pkeyAlias":Ljava/lang/String;
    .end local v21    # "shouldReplacePrivateKey":Z
    .restart local v3    # "keymasterEncryptionPaddings":[I
    .local v4, "pkeyAlias":Ljava/lang/String;
    .restart local v8    # "shouldReplacePrivateKey":Z
    .restart local v18    # "purposes":I
    :cond_10
    move-object/from16 v20, v4

    move/from16 v21, v8

    .end local v4    # "pkeyAlias":Ljava/lang/String;
    .end local v8    # "shouldReplacePrivateKey":Z
    .restart local v20    # "pkeyAlias":Ljava/lang/String;
    .restart local v21    # "shouldReplacePrivateKey":Z
    goto :goto_9

    .line 512
    .end local v3    # "keymasterEncryptionPaddings":[I
    .end local v18    # "purposes":I
    .end local v20    # "pkeyAlias":Ljava/lang/String;
    .end local v21    # "shouldReplacePrivateKey":Z
    .restart local v4    # "pkeyAlias":Ljava/lang/String;
    .restart local v8    # "shouldReplacePrivateKey":Z
    :catch_4
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v21, v8

    move-object/from16 v16, v13

    move-object/from16 v24, v12

    move-object v12, v11

    move-object/from16 v11, v24

    .end local v4    # "pkeyAlias":Ljava/lang/String;
    .end local v8    # "shouldReplacePrivateKey":Z
    .restart local v20    # "pkeyAlias":Ljava/lang/String;
    .restart local v21    # "shouldReplacePrivateKey":Z
    goto/16 :goto_f

    .line 502
    .end local v20    # "pkeyAlias":Ljava/lang/String;
    .end local v21    # "shouldReplacePrivateKey":Z
    .restart local v0    # "purposes":I
    .restart local v3    # "keymasterEncryptionPaddings":[I
    .restart local v4    # "pkeyAlias":Ljava/lang/String;
    .restart local v8    # "shouldReplacePrivateKey":Z
    :cond_11
    move/from16 v18, v0

    move-object/from16 v20, v4

    move/from16 v21, v8

    .end local v0    # "purposes":I
    .end local v4    # "pkeyAlias":Ljava/lang/String;
    .end local v8    # "shouldReplacePrivateKey":Z
    .restart local v18    # "purposes":I
    .restart local v20    # "pkeyAlias":Ljava/lang/String;
    .restart local v21    # "shouldReplacePrivateKey":Z
    :goto_9
    const v0, 0x20000006

    :try_start_8
    invoke-virtual {v10, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 503
    nop

    .line 504
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v4

    .line 503
    invoke-virtual {v10, v0, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 505
    invoke-static {v10, v6}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keystore/UserAuthArgs;)V

    .line 506
    const v0, 0x60000190

    .line 507
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v4

    .line 506
    invoke-virtual {v10, v0, v4}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 508
    const v0, 0x60000191

    .line 509
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v4

    .line 508
    invoke-virtual {v10, v0, v4}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 510
    const v0, 0x60000192

    .line 511
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v4

    .line 510
    invoke-virtual {v10, v0, v4}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_5

    .line 514
    .end local v3    # "keymasterEncryptionPaddings":[I
    .end local v18    # "purposes":I
    nop

    .line 518
    move-object v4, v9

    move-object v3, v10

    .end local v7    # "keyFormat":Ljava/lang/String;
    .end local v9    # "pkcs8EncodedPrivateKeyBytes":[B
    .end local v10    # "importArgs":Landroid/security/keymaster/KeymasterArguments;
    .local v3, "importArgs":Landroid/security/keymaster/KeymasterArguments;
    .local v4, "pkcs8EncodedPrivateKeyBytes":[B
    :goto_a
    const/4 v0, 0x0

    move/from16 v17, v0

    .line 521
    .local v17, "success":Z
    if-eqz v21, :cond_13

    .line 524
    :try_start_9
    iget-object v0, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v0, v2, v7}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 525
    new-instance v14, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v14}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 526
    .local v14, "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    iget-object v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRPKEY_"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    iget v0, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v9, v3

    move-object/from16 v22, v11

    move-object v11, v4

    .end local v11    # "chainBytes":[B
    .local v22, "chainBytes":[B
    move-object/from16 v23, v12

    move v12, v0

    .end local v12    # "userCertBytes":[B
    .local v23, "userCertBytes":[B
    move-object/from16 v16, v13

    move v13, v15

    .end local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    .restart local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    :try_start_a
    invoke-virtual/range {v7 .. v14}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    .line 534
    .local v0, "errorCode":I
    const/4 v7, 0x1

    if-ne v0, v7, :cond_12

    .line 538
    .end local v0    # "errorCode":I
    .end local v14    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    goto :goto_b

    .line 535
    .restart local v0    # "errorCode":I
    .restart local v14    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    :cond_12
    new-instance v7, Ljava/security/KeyStoreException;

    const-string v8, "Failed to store private key"

    .line 536
    invoke-static {v0}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 561
    .end local v0    # "errorCode":I
    .end local v14    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    :catchall_0
    move-exception v0

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    goto/16 :goto_d

    .end local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    .end local v22    # "chainBytes":[B
    .end local v23    # "userCertBytes":[B
    .restart local v11    # "chainBytes":[B
    .restart local v12    # "userCertBytes":[B
    .restart local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v24, v12

    move-object v12, v11

    move-object/from16 v11, v24

    .end local v11    # "chainBytes":[B
    .end local v12    # "userCertBytes":[B
    .end local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    .restart local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    .restart local v22    # "chainBytes":[B
    .restart local v23    # "userCertBytes":[B
    goto/16 :goto_d

    .line 540
    .end local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    .end local v22    # "chainBytes":[B
    .end local v23    # "userCertBytes":[B
    .restart local v11    # "chainBytes":[B
    .restart local v12    # "userCertBytes":[B
    .restart local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    :cond_13
    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move-object/from16 v16, v13

    const/4 v7, 0x1

    .end local v11    # "chainBytes":[B
    .end local v12    # "userCertBytes":[B
    .end local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    .restart local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    .restart local v22    # "chainBytes":[B
    .restart local v23    # "userCertBytes":[B
    :try_start_b
    iget-object v0, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v8, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v0, v2, v8}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 541
    iget-object v0, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v8, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v0, v2, v8}, Landroid/security/Credentials;->deleteLegacyKeyForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 545
    :goto_b
    iget-object v0, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object/from16 v11, v23

    :try_start_c
    invoke-virtual {v0, v8, v11, v9, v15}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v0

    .line 547
    .end local v23    # "userCertBytes":[B
    .restart local v0    # "errorCode":I
    .local v11, "userCertBytes":[B
    if-ne v0, v7, :cond_17

    .line 553
    iget-object v8, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CACERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object/from16 v12, v22

    :try_start_d
    invoke-virtual {v8, v9, v12, v10, v15}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .end local v22    # "chainBytes":[B
    .local v12, "chainBytes":[B
    move v0, v8

    .line 555
    if-ne v0, v7, :cond_16

    .line 559
    const/4 v0, 0x1

    .line 561
    .end local v17    # "success":Z
    .local v0, "success":Z
    if-nez v0, :cond_15

    .line 562
    if-eqz v21, :cond_14

    .line 563
    iget-object v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v8, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v7, v2, v8}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    goto :goto_c

    .line 565
    :cond_14
    iget-object v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v8, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v7, v2, v8}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 566
    iget-object v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v8, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v7, v2, v8}, Landroid/security/Credentials;->deleteLegacyKeyForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 570
    :cond_15
    :goto_c
    return-void

    .line 556
    .local v0, "errorCode":I
    .restart local v17    # "success":Z
    :cond_16
    :try_start_e
    new-instance v7, Ljava/security/KeyStoreException;

    const-string v8, "Failed to store certificate chain"

    .line 557
    invoke-static {v0}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 548
    .end local v12    # "chainBytes":[B
    .restart local v22    # "chainBytes":[B
    :cond_17
    move-object/from16 v12, v22

    .end local v22    # "chainBytes":[B
    .restart local v12    # "chainBytes":[B
    new-instance v7, Ljava/security/KeyStoreException;

    const-string v8, "Failed to store certificate #0"

    .line 549
    invoke-static {v0}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 561
    .end local v0    # "errorCode":I
    :catchall_2
    move-exception v0

    goto :goto_d

    .end local v12    # "chainBytes":[B
    .restart local v22    # "chainBytes":[B
    :catchall_3
    move-exception v0

    move-object/from16 v12, v22

    .end local v22    # "chainBytes":[B
    .restart local v12    # "chainBytes":[B
    goto :goto_d

    .end local v11    # "userCertBytes":[B
    .end local v12    # "chainBytes":[B
    .restart local v22    # "chainBytes":[B
    .restart local v23    # "userCertBytes":[B
    :catchall_4
    move-exception v0

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    .end local v22    # "chainBytes":[B
    .end local v23    # "userCertBytes":[B
    .restart local v11    # "userCertBytes":[B
    .restart local v12    # "chainBytes":[B
    :goto_d
    if-nez v17, :cond_19

    .line 562
    if-eqz v21, :cond_18

    .line 563
    iget-object v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v8, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v7, v2, v8}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    goto :goto_e

    .line 565
    :cond_18
    iget-object v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v8, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v7, v2, v8}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 566
    iget-object v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v8, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v7, v2, v8}, Landroid/security/Credentials;->deleteLegacyKeyForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    :cond_19
    :goto_e
    throw v0

    .line 512
    .end local v3    # "importArgs":Landroid/security/keymaster/KeymasterArguments;
    .end local v4    # "pkcs8EncodedPrivateKeyBytes":[B
    .end local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    .end local v17    # "success":Z
    .restart local v7    # "keyFormat":Ljava/lang/String;
    .restart local v9    # "pkcs8EncodedPrivateKeyBytes":[B
    .restart local v10    # "importArgs":Landroid/security/keymaster/KeymasterArguments;
    .local v11, "chainBytes":[B
    .local v12, "userCertBytes":[B
    .restart local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    :catch_5
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v24, v12

    move-object v12, v11

    move-object/from16 v11, v24

    .end local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    .local v11, "userCertBytes":[B
    .local v12, "chainBytes":[B
    .restart local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    goto :goto_f

    .end local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    .end local v20    # "pkeyAlias":Ljava/lang/String;
    .end local v21    # "shouldReplacePrivateKey":Z
    .local v4, "pkeyAlias":Ljava/lang/String;
    .restart local v8    # "shouldReplacePrivateKey":Z
    .local v11, "chainBytes":[B
    .local v12, "userCertBytes":[B
    .restart local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    :catch_6
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v21, v8

    move-object/from16 v16, v13

    move-object/from16 v24, v12

    move-object v12, v11

    move-object/from16 v11, v24

    .line 513
    .end local v4    # "pkeyAlias":Ljava/lang/String;
    .end local v8    # "shouldReplacePrivateKey":Z
    .end local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    .local v0, "e":Ljava/lang/RuntimeException;
    .local v11, "userCertBytes":[B
    .local v12, "chainBytes":[B
    .restart local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    .restart local v20    # "pkeyAlias":Ljava/lang/String;
    .restart local v21    # "shouldReplacePrivateKey":Z
    :goto_f
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 466
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "importArgs":Landroid/security/keymaster/KeymasterArguments;
    .end local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    .end local v20    # "pkeyAlias":Ljava/lang/String;
    .end local v21    # "shouldReplacePrivateKey":Z
    .restart local v4    # "pkeyAlias":Ljava/lang/String;
    .restart local v8    # "shouldReplacePrivateKey":Z
    .local v11, "chainBytes":[B
    .local v12, "userCertBytes":[B
    .restart local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    :cond_1a
    move-object/from16 v20, v4

    move/from16 v21, v8

    move-object/from16 v16, v13

    move-object/from16 v24, v12

    move-object v12, v11

    move-object/from16 v11, v24

    .end local v4    # "pkeyAlias":Ljava/lang/String;
    .end local v8    # "shouldReplacePrivateKey":Z
    .end local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    .local v11, "userCertBytes":[B
    .local v12, "chainBytes":[B
    .restart local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    .restart local v20    # "pkeyAlias":Ljava/lang/String;
    .restart local v21    # "shouldReplacePrivateKey":Z
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v3, "Private key did not export any key material"

    invoke-direct {v0, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    .end local v9    # "pkcs8EncodedPrivateKeyBytes":[B
    .end local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    .end local v20    # "pkeyAlias":Ljava/lang/String;
    .end local v21    # "shouldReplacePrivateKey":Z
    .restart local v4    # "pkeyAlias":Ljava/lang/String;
    .restart local v8    # "shouldReplacePrivateKey":Z
    .local v11, "chainBytes":[B
    .local v12, "userCertBytes":[B
    .restart local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    :cond_1b
    move-object/from16 v20, v4

    move/from16 v21, v8

    move-object/from16 v16, v13

    move-object/from16 v24, v12

    move-object v12, v11

    move-object/from16 v11, v24

    .end local v4    # "pkeyAlias":Ljava/lang/String;
    .end local v8    # "shouldReplacePrivateKey":Z
    .end local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    .local v11, "userCertBytes":[B
    .local v12, "chainBytes":[B
    .restart local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    .restart local v20    # "pkeyAlias":Ljava/lang/String;
    .restart local v21    # "shouldReplacePrivateKey":Z
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported private key export format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Only private keys which export their key material in PKCS#8 format are supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    .end local v7    # "keyFormat":Ljava/lang/String;
    .end local v11    # "userCertBytes":[B
    .end local v12    # "chainBytes":[B
    .end local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    .end local v20    # "pkeyAlias":Ljava/lang/String;
    .end local v21    # "shouldReplacePrivateKey":Z
    .restart local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    :catch_7
    move-exception v0

    move-object/from16 v16, v13

    .line 392
    .end local v13    # "x509chain":[Ljava/security/cert/X509Certificate;
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    new-instance v3, Ljava/security/KeyStoreException;

    const-string v4, "Failed to encode certificate #0"

    invoke-direct {v3, v4, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 369
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v16    # "x509chain":[Ljava/security/cert/X509Certificate;
    :cond_1c
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v3, "Must supply at least one Certificate with PrivateKey"

    invoke-direct {v0, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    .end local v6    # "spec":Landroid/security/keystore/KeyProtection;
    .end local v15    # "flags":I
    .local v0, "flags":I
    :cond_1d
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported protection parameter class:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Supported: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v6, Landroid/security/keystore/KeyProtection;

    .line 363
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v6, Landroid/security/KeyStoreParameter;

    .line 364
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 19
    .param p1, "entryAlias"    # Ljava/lang/String;
    .param p2, "key"    # Ljavax/crypto/SecretKey;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 575
    move-object/from16 v4, p3

    if-eqz v4, :cond_1

    instance-of v0, v4, Landroid/security/keystore/KeyProtection;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported protection parameter class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v6, Landroid/security/keystore/KeyProtection;

    .line 578
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_1
    :goto_0
    move-object v5, v4

    check-cast v5, Landroid/security/keystore/KeyProtection;

    .line 582
    .local v5, "params":Landroid/security/keystore/KeyProtection;
    instance-of v0, v3, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_7

    .line 585
    move-object v0, v3

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreSecretKey;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "keyAliasInKeystore":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 589
    const-string v6, "USRPKEY_"

    .line 590
    .local v6, "keyAliasPrefix":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 592
    const-string v6, "USRSKEY_"

    .line 593
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 594
    :cond_2
    new-instance v7, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeyStore-backed secret key has invalid alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 598
    :cond_3
    :goto_1
    nop

    .line 599
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 600
    .local v7, "keyEntryAlias":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 605
    if-nez v5, :cond_4

    .line 609
    return-void

    .line 606
    :cond_4
    new-instance v8, Ljava/security/KeyStoreException;

    const-string v9, "Modifying KeyStore-backed key using protection parameters not supported"

    invoke-direct {v8, v9}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 601
    :cond_5
    new-instance v8, Ljava/security/KeyStoreException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can only replace KeyStore-backed keys with same alias: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " != "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 587
    .end local v6    # "keyAliasPrefix":Ljava/lang/String;
    .end local v7    # "keyEntryAlias":Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/security/KeyStoreException;

    const-string v7, "KeyStore-backed secret key does not have an alias"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 612
    .end local v0    # "keyAliasInKeystore":Ljava/lang/String;
    :cond_7
    if-eqz v5, :cond_17

    .line 618
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 619
    .local v6, "keyExportFormat":Ljava/lang/String;
    if-eqz v6, :cond_16

    .line 622
    const-string v0, "RAW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 626
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v15

    .line 627
    .local v15, "keyMaterial":[B
    if-eqz v15, :cond_14

    .line 632
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object v14, v0

    .line 634
    .local v14, "args":Landroid/security/keymaster/KeymasterArguments;
    nop

    .line 635
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    move-result v0

    .line 636
    .local v0, "keymasterAlgorithm":I
    const v7, 0x10000002

    invoke-virtual {v14, v7, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 639
    const/16 v7, 0x80

    const/4 v8, 0x0

    const/4 v13, 0x1

    if-ne v0, v7, :cond_b

    .line 645
    nop

    .line 646
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterDigest(Ljava/lang/String;)I

    move-result v7

    .line 647
    .local v7, "keymasterImpliedDigest":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_a

    .line 652
    new-array v9, v13, [I

    aput v7, v9, v8

    .line 653
    .local v9, "keymasterDigests":[I
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 656
    nop

    .line 657
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v10

    .line 658
    .local v10, "keymasterDigestsFromParams":[I
    array-length v11, v10

    if-ne v11, v13, :cond_8

    aget v11, v10, v8

    if-ne v11, v7, :cond_8

    .end local v7    # "keymasterImpliedDigest":I
    .end local v10    # "keymasterDigestsFromParams":[I
    goto :goto_2

    .line 660
    .restart local v7    # "keymasterImpliedDigest":I
    .restart local v10    # "keymasterDigestsFromParams":[I
    :cond_8
    new-instance v8, Ljava/security/KeyStoreException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported digests specification: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ". Only "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " supported for HMAC key algorithm "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 667
    .end local v7    # "keymasterImpliedDigest":I
    .end local v10    # "keymasterDigestsFromParams":[I
    :cond_9
    :goto_2
    goto :goto_3

    .line 648
    .end local v9    # "keymasterDigests":[I
    .restart local v7    # "keymasterImpliedDigest":I
    :cond_a
    new-instance v8, Ljava/security/ProviderException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HMAC key algorithm digest unknown for key algorithm "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 720
    .end local v0    # "keymasterAlgorithm":I
    .end local v7    # "keymasterImpliedDigest":I
    :catch_0
    move-exception v0

    move-object/from16 v18, v14

    goto/16 :goto_5

    .line 669
    .restart local v0    # "keymasterAlgorithm":I
    :cond_b
    :try_start_2
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v7, :cond_c

    .line 670
    :try_start_3
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v9, v7

    .restart local v9    # "keymasterDigests":[I
    goto :goto_3

    .line 672
    .end local v9    # "keymasterDigests":[I
    :cond_c
    :try_start_4
    sget-object v9, Llibcore/util/EmptyArray;->INT:[I

    .restart local v9    # "keymasterDigests":[I
    :goto_3
    move-object v7, v9

    .line 675
    .end local v9    # "keymasterDigests":[I
    .local v7, "keymasterDigests":[I
    const v9, 0x20000005

    invoke-virtual {v14, v9, v7}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 677
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v9

    .line 678
    .local v9, "purposes":I
    nop

    .line 679
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    .line 680
    .local v10, "keymasterBlockModes":[I
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_e

    .line 681
    :try_start_5
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 682
    array-length v11, v10

    :goto_4
    if-ge v8, v11, :cond_e

    aget v12, v10, v8

    .line 683
    .local v12, "keymasterBlockMode":I
    invoke-static {v12}, Landroid/security/keystore/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 682
    .end local v12    # "keymasterBlockMode":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 685
    .restart local v12    # "keymasterBlockMode":I
    :cond_d
    new-instance v8, Ljava/security/KeyStoreException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-static {v12}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ". See KeyProtection documentation."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    .line 693
    .end local v12    # "keymasterBlockMode":I
    :cond_e
    const v8, 0x20000001

    .line 694
    :try_start_6
    invoke-static {v9}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v11

    .line 693
    invoke-virtual {v14, v8, v11}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 695
    const v8, 0x20000004

    invoke-virtual {v14, v8, v10}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 696
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-gtz v8, :cond_13

    .line 699
    nop

    .line 700
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v8

    .line 699
    invoke-static {v8}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v8

    .line 701
    .local v8, "keymasterPaddings":[I
    const v11, 0x20000006

    invoke-virtual {v14, v11, v8}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 702
    invoke-static {v14, v5}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keystore/UserAuthArgs;)V

    .line 703
    invoke-static {v14, v0, v10, v7}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    .line 708
    const v11, 0x60000190

    .line 709
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v12

    .line 708
    invoke-virtual {v14, v11, v12}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 710
    const v11, 0x60000191

    .line 711
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v12

    .line 710
    invoke-virtual {v14, v11, v12}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 712
    const v11, 0x60000192

    .line 713
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v12

    .line 712
    invoke-virtual {v14, v11, v12}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2

    .line 715
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_f

    .line 716
    :try_start_7
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v11

    if-nez v11, :cond_f

    .line 718
    const v11, 0x70000007

    invoke-virtual {v14, v11}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0

    .line 722
    .end local v0    # "keymasterAlgorithm":I
    .end local v7    # "keymasterDigests":[I
    .end local v8    # "keymasterPaddings":[I
    .end local v9    # "purposes":I
    .end local v10    # "keymasterBlockModes":[I
    :cond_f
    nop

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, "flags":I
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 725
    or-int/lit8 v0, v0, 0x8

    .line 727
    :cond_10
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 728
    or-int/lit8 v0, v0, 0x10

    .line 731
    :cond_11
    iget-object v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v8, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v7, v2, v8}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 732
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRPKEY_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 733
    .local v16, "keyAliasInKeystore":Ljava/lang/String;
    iget-object v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const/4 v10, 0x3

    iget v12, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    new-instance v11, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v11}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    move-object/from16 v8, v16

    move-object v9, v14

    move-object/from16 v17, v11

    move-object v11, v15

    move v13, v0

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    .end local v14    # "args":Landroid/security/keymaster/KeymasterArguments;
    .local v18, "args":Landroid/security/keymaster/KeymasterArguments;
    invoke-virtual/range {v7 .. v14}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v7

    .line 741
    .local v7, "errorCode":I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_12

    .line 745
    return-void

    .line 742
    :cond_12
    new-instance v8, Ljava/security/KeyStoreException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to import secret key. Keystore error code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 697
    .end local v16    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v18    # "args":Landroid/security/keymaster/KeymasterArguments;
    .local v0, "keymasterAlgorithm":I
    .local v7, "keymasterDigests":[I
    .restart local v9    # "purposes":I
    .restart local v10    # "keymasterBlockModes":[I
    .restart local v14    # "args":Landroid/security/keymaster/KeymasterArguments;
    :cond_13
    move-object/from16 v18, v14

    .end local v14    # "args":Landroid/security/keymaster/KeymasterArguments;
    .restart local v18    # "args":Landroid/security/keymaster/KeymasterArguments;
    :try_start_8
    new-instance v8, Ljava/security/KeyStoreException;

    const-string v11, "Signature paddings not supported for symmetric keys"

    invoke-direct {v8, v11}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1

    .line 720
    .end local v0    # "keymasterAlgorithm":I
    .end local v7    # "keymasterDigests":[I
    .end local v9    # "purposes":I
    .end local v10    # "keymasterBlockModes":[I
    :catch_1
    move-exception v0

    goto :goto_5

    .end local v18    # "args":Landroid/security/keymaster/KeymasterArguments;
    .restart local v14    # "args":Landroid/security/keymaster/KeymasterArguments;
    :catch_2
    move-exception v0

    move-object/from16 v18, v14

    .line 721
    .end local v14    # "args":Landroid/security/keymaster/KeymasterArguments;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v18    # "args":Landroid/security/keymaster/KeymasterArguments;
    :goto_5
    new-instance v7, Ljava/security/KeyStoreException;

    invoke-direct {v7, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 628
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v18    # "args":Landroid/security/keymaster/KeymasterArguments;
    :cond_14
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v7, "Key did not export its key material despite supporting RAW format export"

    invoke-direct {v0, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    .end local v15    # "keyMaterial":[B
    :cond_15
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported secret key material export format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_16
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v7, "Only secret keys that export their key material are supported"

    invoke-direct {v0, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    .end local v6    # "keyExportFormat":Ljava/lang/String;
    :cond_17
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v6, "Protection parameters must be specified when importing a symmetric key"

    invoke-direct {v0, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setWrappedKeyEntry(Ljava/lang/String;Landroid/security/keystore/WrappedKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 22
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Landroid/security/keystore/WrappedKeyEntry;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 749
    if-nez p3, :cond_13

    .line 753
    const/16 v1, 0x20

    new-array v14, v1, [B

    .line 756
    .local v14, "maskingKey":[B
    new-instance v2, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v2}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object v13, v2

    .line 757
    .local v13, "args":Landroid/security/keymaster/KeymasterArguments;
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getTransformation()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 759
    .local v12, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v10, v12, v2

    .line 760
    .local v10, "algorithm":Ljava/lang/String;
    const-string v3, "RSA"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x10000002

    const/4 v11, 0x1

    if-eqz v3, :cond_0

    .line 761
    invoke-virtual {v13, v4, v11}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    goto :goto_0

    .line 762
    :cond_0
    const-string v3, "EC"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 763
    invoke-virtual {v13, v4, v11}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 766
    :cond_1
    :goto_0
    array-length v3, v12

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-le v3, v11, :cond_5

    .line 767
    aget-object v3, v12, v11

    .line 768
    .local v3, "mode":Ljava/lang/String;
    const-string v6, "ECB"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const v7, 0x20000004

    if-eqz v6, :cond_2

    .line 769
    new-array v1, v11, [I

    aput v11, v1, v2

    invoke-virtual {v13, v7, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_1

    .line 770
    :cond_2
    const-string v6, "CBC"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 771
    new-array v1, v11, [I

    aput v5, v1, v2

    invoke-virtual {v13, v7, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_1

    .line 772
    :cond_3
    const-string v6, "CTR"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 773
    new-array v1, v11, [I

    aput v4, v1, v2

    invoke-virtual {v13, v7, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_1

    .line 774
    :cond_4
    const-string v6, "GCM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 775
    new-array v6, v11, [I

    aput v1, v6, v2

    invoke-virtual {v13, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 779
    .end local v3    # "mode":Ljava/lang/String;
    :cond_5
    :goto_1
    array-length v1, v12

    const/4 v3, 0x4

    if-le v1, v5, :cond_9

    .line 780
    aget-object v1, v12, v5

    .line 781
    .local v1, "padding":Ljava/lang/String;
    const-string v6, "NoPadding"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .end local v1    # "padding":Ljava/lang/String;
    goto :goto_2

    .line 783
    .restart local v1    # "padding":Ljava/lang/String;
    :cond_6
    const-string v6, "PKCS7Padding"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const v7, 0x20000006

    if-eqz v6, :cond_7

    .line 784
    new-array v6, v11, [I

    const/16 v8, 0x40

    aput v8, v6, v2

    invoke-virtual {v13, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_2

    .line 785
    :cond_7
    const-string v6, "PKCS1Padding"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 786
    new-array v6, v11, [I

    aput v3, v6, v2

    invoke-virtual {v13, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_2

    .line 788
    :cond_8
    const-string v6, "OAEPPadding"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 789
    new-array v6, v11, [I

    aput v5, v6, v2

    invoke-virtual {v13, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 793
    .end local v1    # "padding":Ljava/lang/String;
    :cond_9
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/KeyGenParameterSpec;

    .line 794
    .local v1, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 795
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    .line 796
    .local v6, "digest":Ljava/lang/String;
    const-string v7, "NONE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .end local v6    # "digest":Ljava/lang/String;
    goto :goto_3

    .line 798
    .restart local v6    # "digest":Ljava/lang/String;
    :cond_a
    const-string v7, "MD5"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const v8, 0x20000005

    if-eqz v7, :cond_b

    .line 799
    new-array v3, v11, [I

    aput v11, v3, v2

    invoke-virtual {v13, v8, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_3

    .line 800
    :cond_b
    const-string v7, "SHA-1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 801
    new-array v3, v11, [I

    aput v5, v3, v2

    invoke-virtual {v13, v8, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_3

    .line 802
    :cond_c
    const-string v5, "SHA-224"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 803
    new-array v3, v11, [I

    aput v4, v3, v2

    invoke-virtual {v13, v8, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_3

    .line 804
    :cond_d
    const-string v4, "SHA-256"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 805
    new-array v4, v11, [I

    aput v3, v4, v2

    invoke-virtual {v13, v8, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_3

    .line 806
    :cond_e
    const-string v3, "SHA-384"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 807
    new-array v3, v11, [I

    const/4 v4, 0x5

    aput v4, v3, v2

    invoke-virtual {v13, v8, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_3

    .line 808
    :cond_f
    const-string v3, "SHA-512"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 809
    new-array v3, v11, [I

    const/4 v4, 0x6

    aput v4, v3, v2

    invoke-virtual {v13, v8, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 813
    .end local v6    # "digest":Ljava/lang/String;
    :cond_10
    :goto_3
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappedKeyBytes()[B

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappingKeyAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 819
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    iget v9, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    new-instance v7, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v7}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 813
    move-object v6, v14

    move-object/from16 v19, v7

    move-object v7, v13

    move/from16 v20, v9

    move-wide v8, v15

    move-object v15, v10

    move v0, v11

    move-wide/from16 v10, v17

    .end local v10    # "algorithm":Ljava/lang/String;
    .local v15, "algorithm":Ljava/lang/String;
    move-object/from16 v16, v12

    move/from16 v12, v20

    .end local v12    # "parts":[Ljava/lang/String;
    .local v16, "parts":[Ljava/lang/String;
    move-object/from16 v17, v13

    move-object/from16 v13, v19

    .end local v13    # "args":Landroid/security/keymaster/KeymasterArguments;
    .local v17, "args":Landroid/security/keymaster/KeymasterArguments;
    invoke-virtual/range {v2 .. v13}, Landroid/security/KeyStore;->importWrappedKey(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v2

    .line 823
    .local v2, "errorCode":I
    const/16 v3, -0x64

    if-eq v2, v3, :cond_12

    .line 825
    if-ne v2, v0, :cond_11

    .line 829
    return-void

    .line 826
    :cond_11
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to import wrapped key. Keystore error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_12
    new-instance v0, Landroid/security/keystore/SecureKeyImportUnavailableException;

    const-string v3, "Could not import wrapped key"

    invoke-direct {v0, v3}, Landroid/security/keystore/SecureKeyImportUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v2    # "errorCode":I
    .end local v14    # "maskingKey":[B
    .end local v15    # "algorithm":Ljava/lang/String;
    .end local v16    # "parts":[Ljava/lang/String;
    .end local v17    # "args":Landroid/security/keymaster/KeymasterArguments;
    :cond_13
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Protection parameters are specified inside wrapped keys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p0, "bytes"    # [B

    .line 216
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 217
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 219
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "AndroidKeyStore"

    const-string v2, "Couldn\'t parse certificate in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    const/4 v1, 0x0

    return-object v1
.end method

.method private static toCertificates([B)Ljava/util/Collection;
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 228
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 229
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 231
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "AndroidKeyStore"

    const-string v2, "Couldn\'t parse certificates in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method private static wrapIntoKeyStoreCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    .locals 1
    .param p0, "privateKeyAlias"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 210
    if-eqz p2, :cond_0

    .line 211
    new-instance v0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    invoke-direct {v0, p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;-><init>(Ljava/lang/String;ILjava/security/cert/X509Certificate;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 889
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 894
    if-eqz p1, :cond_2

    .line 898
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 899
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 900
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 901
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 898
    :goto_1
    return v0

    .line 895
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 862
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v0, p1, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    return-void

    .line 863
    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 140
    if-eqz p1, :cond_2

    .line 144
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    .line 145
    .local v0, "encodedCert":[B
    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;

    move-result-object v1

    return-object v1

    .line 149
    :cond_0
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v1, v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    .line 150
    if-eqz v0, :cond_1

    .line 151
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;

    move-result-object v1

    return-object v1

    .line 155
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 141
    .end local v0    # "encodedCert":[B
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 11
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 935
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 936
    return-object v0

    .line 938
    :cond_0
    const-string v1, "X.509"

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 940
    return-object v0

    .line 944
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    .local v1, "targetCertBytes":[B
    nop

    .line 946
    nop

    .line 948
    if-nez v1, :cond_2

    .line 949
    return-object v0

    .line 952
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 960
    .local v2, "nonCaEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string v4, "USRCERT_"

    iget v5, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v3, v4, v5}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 961
    .local v3, "certAliases":[Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 962
    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v3, v6

    .line 963
    .local v7, "alias":Ljava/lang/String;
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRCERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v8, v9, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v8

    .line 964
    .local v8, "certBytes":[B
    if-nez v8, :cond_3

    .line 965
    goto :goto_1

    .line 968
    :cond_3
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 970
    invoke-static {v8, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 971
    return-object v7

    .line 962
    .end local v7    # "alias":Ljava/lang/String;
    .end local v8    # "certBytes":[B
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 980
    :cond_5
    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string v6, "CACERT_"

    iget v7, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v5, v6, v7}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 981
    .local v5, "caAliases":[Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 982
    array-length v6, v5

    :goto_2
    if-ge v4, v6, :cond_9

    aget-object v7, v5, v4

    .line 983
    .restart local v7    # "alias":Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 984
    goto :goto_3

    .line 987
    :cond_6
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CACERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v8, v9, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v8

    .line 988
    .restart local v8    # "certBytes":[B
    if-nez v8, :cond_7

    .line 989
    goto :goto_3

    .line 992
    :cond_7
    invoke-static {v8, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 993
    return-object v7

    .line 982
    .end local v7    # "alias":Ljava/lang/String;
    .end local v8    # "certBytes":[B
    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 998
    :cond_9
    return-object v0

    .line 945
    .end local v1    # "targetCertBytes":[B
    .end local v2    # "nonCaEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "certAliases":[Ljava/lang/String;
    .end local v5    # "caAliases":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 946
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    return-object v0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;

    .line 107
    if-eqz p1, :cond_3

    .line 111
    invoke-virtual {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 112
    .local v0, "leaf":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    .line 113
    const/4 v1, 0x0

    return-object v1

    .line 118
    :cond_0
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v1, v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v1

    .line 119
    .local v1, "caBytes":[B
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 120
    invoke-static {v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificates([B)Ljava/util/Collection;

    move-result-object v3

    .line 122
    .local v3, "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v4, v2

    new-array v4, v4, [Ljava/security/cert/Certificate;

    .line 124
    .local v4, "caList":[Ljava/security/cert/Certificate;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 125
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    nop

    .line 126
    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 127
    add-int/lit8 v6, v2, 0x1

    .local v6, "i":I
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Certificate;

    aput-object v7, v4, v2

    .line 125
    .end local v2    # "i":I
    move v2, v6

    goto :goto_0

    .line 129
    .end local v3    # "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "i":I
    :cond_1
    goto :goto_1

    .line 130
    .end local v4    # "caList":[Ljava/security/cert/Certificate;
    :cond_2
    new-array v4, v2, [Ljava/security/cert/Certificate;

    .restart local v4    # "caList":[Ljava/security/cert/Certificate;
    :goto_1
    move-object v2, v4

    .line 133
    .end local v4    # "caList":[Ljava/security/cert/Certificate;
    .local v2, "caList":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 135
    return-object v2

    .line 108
    .end local v0    # "leaf":Ljava/security/cert/X509Certificate;
    .end local v1    # "caBytes":[B
    .end local v2    # "caList":[Ljava/security/cert/Certificate;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 248
    if-eqz p1, :cond_3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USRPKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 253
    .local v0, "d":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 254
    return-object v0

    .line 257
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_1

    .line 259
    return-object v0

    .line 262
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_2

    .line 264
    return-object v0

    .line 267
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 249
    .end local v0    # "d":Ljava/util/Date;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USRPKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "userKeyAlias":Ljava/lang/String;
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v1, v0, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v1, v0, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 101
    :cond_0
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v1, v0, v2}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreKey;

    move-result-object v1

    return-object v1
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 930
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 911
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1010
    if-nez p1, :cond_1

    .line 1014
    if-nez p2, :cond_0

    .line 1019
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 1020
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 1021
    return-void

    .line 1015
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1011
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 4
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1026
    const/4 v0, -0x1

    .line 1027
    .local v0, "uid":I
    if-eqz p1, :cond_1

    .line 1028
    instance-of v1, p1, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    if-eqz v1, :cond_0

    .line 1029
    move-object v1, p1

    check-cast v1, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    invoke-virtual {v1}, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;->getUid()I

    move-result v0

    goto :goto_0

    .line 1031
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported param type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1035
    :cond_1
    :goto_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 1036
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 1037
    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 839
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 844
    if-eqz p2, :cond_1

    .line 850
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .local v0, "encoded":[B
    nop

    .line 852
    nop

    .line 855
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    return-void

    .line 856
    :cond_0
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "Couldn\'t insert certificate; is KeyStore initialized?"

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 851
    .end local v0    # "encoded":[B
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 845
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cert == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_2
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Entry exists and is not a trusted certificate"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1042
    if-eqz p2, :cond_4

    .line 1046
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v0, p1, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 1048
    instance-of v0, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v0, :cond_0

    .line 1049
    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 1051
    .local v0, "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1052
    return-void

    .line 1055
    .end local v0    # "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    :cond_0
    instance-of v0, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v0, :cond_1

    .line 1056
    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 1057
    .local v0, "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1058
    .end local v0    # "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v0, :cond_2

    .line 1059
    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    .line 1060
    .local v0, "secE":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1061
    .end local v0    # "secE":Ljava/security/KeyStore$SecretKeyEntry;
    goto :goto_0

    :cond_2
    instance-of v0, p2, Landroid/security/keystore/WrappedKeyEntry;

    if-eqz v0, :cond_3

    .line 1062
    move-object v0, p2

    check-cast v0, Landroid/security/keystore/WrappedKeyEntry;

    .line 1063
    .local v0, "wke":Landroid/security/keystore/WrappedKeyEntry;
    invoke-direct {p0, p1, v0, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setWrappedKeyEntry(Ljava/lang/String;Landroid/security/keystore/WrappedKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1064
    .end local v0    # "wke":Landroid/security/keystore/WrappedKeyEntry;
    nop

    .line 1069
    :goto_0
    return-void

    .line 1065
    :cond_3
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry must be a PrivateKeyEntry, SecretKeyEntry or TrustedCertificateEntry; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_4
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "entry == null"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 273
    if-eqz p3, :cond_1

    array-length v0, p3

    if-gtz v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "entries cannot be protected with passwords"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_1
    :goto_0
    instance-of v0, p2, Ljava/security/PrivateKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 278
    move-object v0, p2

    check-cast v0, Ljava/security/PrivateKey;

    invoke-direct {p0, p1, v0, p4, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_1

    .line 279
    :cond_2
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_3

    .line 280
    move-object v0, p2

    check-cast v0, Ljavax/crypto/SecretKey;

    invoke-direct {p0, p1, v0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 284
    :goto_1
    return-void

    .line 282
    :cond_3
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Only PrivateKey and SecretKey are supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userKey"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 834
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Operation not supported because key encoding is unknown"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 1

    .line 906
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1004
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not serialize AndroidKeyStore to OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
