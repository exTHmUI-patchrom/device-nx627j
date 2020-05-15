.class public final Landroid/security/keystore/KeyGenParameterSpec;
.super Ljava/lang/Object;
.source "KeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Landroid/security/keystore/UserAuthArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyGenParameterSpec$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

.field private static final DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

.field private static final DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

.field private static final DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;


# instance fields
.field private final mAttestationChallenge:[B

.field private final mBlockModes:[Ljava/lang/String;

.field private final mCertificateNotAfter:Ljava/util/Date;

.field private final mCertificateNotBefore:Ljava/util/Date;

.field private final mCertificateSerialNumber:Ljava/math/BigInteger;

.field private final mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mInvalidatedByBiometricEnrollment:Z

.field private final mIsStrongBoxBacked:Z

.field private final mKeySize:I

.field private final mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final mKeyValidityStart:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mPurposes:I

.field private final mRandomizedEncryptionRequired:Z

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mUid:I

.field private final mUniqueIdIncluded:Z

.field private final mUnlockedDeviceRequired:Z

.field private final mUserAuthenticationRequired:Z

.field private final mUserAuthenticationValidWhileOnBody:Z

.field private final mUserAuthenticationValidityDurationSeconds:I

.field private final mUserConfirmationRequired:Z

.field private final mUserPresenceRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 239
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=fake"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    .line 240
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    .line 241
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    .line 242
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x23d19d43c00L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIZ[BZZZZZZ)V
    .locals 18
    .param p1, "keyStoreAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keySize"    # I
    .param p4, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p5, "certificateSubject"    # Ljavax/security/auth/x500/X500Principal;
    .param p6, "certificateSerialNumber"    # Ljava/math/BigInteger;
    .param p7, "certificateNotBefore"    # Ljava/util/Date;
    .param p8, "certificateNotAfter"    # Ljava/util/Date;
    .param p9, "keyValidityStart"    # Ljava/util/Date;
    .param p10, "keyValidityForOriginationEnd"    # Ljava/util/Date;
    .param p11, "keyValidityForConsumptionEnd"    # Ljava/util/Date;
    .param p12, "purposes"    # I
    .param p13, "digests"    # [Ljava/lang/String;
    .param p14, "encryptionPaddings"    # [Ljava/lang/String;
    .param p15, "signaturePaddings"    # [Ljava/lang/String;
    .param p16, "blockModes"    # [Ljava/lang/String;
    .param p17, "randomizedEncryptionRequired"    # Z
    .param p18, "userAuthenticationRequired"    # Z
    .param p19, "userAuthenticationValidityDurationSeconds"    # I
    .param p20, "userPresenceRequired"    # Z
    .param p21, "attestationChallenge"    # [B
    .param p22, "uniqueIdIncluded"    # Z
    .param p23, "userAuthenticationValidWhileOnBody"    # Z
    .param p24, "invalidatedByBiometricEnrollment"    # Z
    .param p25, "isStrongBoxBacked"    # Z
    .param p26, "userConfirmationRequired"    # Z
    .param p27, "unlockedDeviceRequired"    # Z

    move-object/from16 v0, p0

    .line 307
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 308
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 312
    if-nez p5, :cond_0

    .line 313
    sget-object v1, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    .end local p5    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .local v1, "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    goto :goto_0

    .line 315
    .end local v1    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local p5    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    :cond_0
    move-object/from16 v1, p5

    .end local p5    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local v1    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    :goto_0
    if-nez p7, :cond_1

    .line 316
    sget-object v2, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    .end local p7    # "certificateNotBefore":Ljava/util/Date;
    .local v2, "certificateNotBefore":Ljava/util/Date;
    goto :goto_1

    .line 318
    .end local v2    # "certificateNotBefore":Ljava/util/Date;
    .restart local p7    # "certificateNotBefore":Ljava/util/Date;
    :cond_1
    move-object/from16 v2, p7

    .end local p7    # "certificateNotBefore":Ljava/util/Date;
    .restart local v2    # "certificateNotBefore":Ljava/util/Date;
    :goto_1
    if-nez p8, :cond_2

    .line 319
    sget-object v3, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    .end local p8    # "certificateNotAfter":Ljava/util/Date;
    .local v3, "certificateNotAfter":Ljava/util/Date;
    goto :goto_2

    .line 321
    .end local v3    # "certificateNotAfter":Ljava/util/Date;
    .restart local p8    # "certificateNotAfter":Ljava/util/Date;
    :cond_2
    move-object/from16 v3, p8

    .end local p8    # "certificateNotAfter":Ljava/util/Date;
    .restart local v3    # "certificateNotAfter":Ljava/util/Date;
    :goto_2
    if-nez p6, :cond_3

    .line 322
    sget-object v4, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    .end local p6    # "certificateSerialNumber":Ljava/math/BigInteger;
    .local v4, "certificateSerialNumber":Ljava/math/BigInteger;
    goto :goto_3

    .line 325
    .end local v4    # "certificateSerialNumber":Ljava/math/BigInteger;
    .restart local p6    # "certificateSerialNumber":Ljava/math/BigInteger;
    :cond_3
    move-object/from16 v4, p6

    .end local p6    # "certificateSerialNumber":Ljava/math/BigInteger;
    .restart local v4    # "certificateSerialNumber":Ljava/math/BigInteger;
    :goto_3
    invoke-virtual {v3, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 329
    move-object/from16 v5, p1

    iput-object v5, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    .line 330
    move/from16 v6, p2

    iput v6, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUid:I

    .line 331
    move/from16 v7, p3

    iput v7, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    .line 332
    move-object/from16 v8, p4

    iput-object v8, v0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 333
    iput-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 334
    iput-object v4, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    .line 335
    invoke-static {v2}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    .line 336
    invoke-static {v3}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    .line 337
    invoke-static/range {p9 .. p9}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    .line 338
    invoke-static/range {p10 .. p10}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 339
    invoke-static/range {p11 .. p11}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 340
    move/from16 v9, p12

    iput v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    .line 341
    invoke-static/range {p13 .. p13}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    .line 342
    nop

    .line 343
    invoke-static/range {p14 .. p14}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    .line 344
    invoke-static/range {p15 .. p15}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    .line 345
    invoke-static/range {p16 .. p16}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    .line 346
    move/from16 v10, p17

    iput-boolean v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    .line 347
    move/from16 v11, p18

    iput-boolean v11, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    .line 348
    move/from16 v12, p20

    iput-boolean v12, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserPresenceRequired:Z

    .line 349
    move/from16 v13, p19

    iput v13, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    .line 350
    invoke-static/range {p21 .. p21}, Landroid/security/keystore/Utils;->cloneIfNotNull([B)[B

    move-result-object v14

    iput-object v14, v0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationChallenge:[B

    .line 351
    move/from16 v14, p22

    iput-boolean v14, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUniqueIdIncluded:Z

    .line 352
    move/from16 v15, p23

    iput-boolean v15, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidWhileOnBody:Z

    .line 353
    move-object/from16 v16, v1

    move/from16 v1, p24

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mInvalidatedByBiometricEnrollment:Z

    .line 354
    .end local v1    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .local v16, "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    move/from16 v1, p25

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mIsStrongBoxBacked:Z

    .line 355
    move/from16 v1, p26

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserConfirmationRequired:Z

    .line 356
    move/from16 v1, p27

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUnlockedDeviceRequired:Z

    .line 357
    return-void

    .line 326
    .end local v16    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local v1    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    :cond_4
    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p12

    move/from16 v10, p17

    move/from16 v11, p18

    move/from16 v13, p19

    move/from16 v12, p20

    move/from16 v14, p22

    move/from16 v15, p23

    move-object/from16 v16, v1

    move/from16 v1, p27

    .end local v1    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local v16    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "certificateNotAfter < certificateNotBefore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    .end local v2    # "certificateNotBefore":Ljava/util/Date;
    .end local v3    # "certificateNotAfter":Ljava/util/Date;
    .end local v4    # "certificateSerialNumber":Ljava/math/BigInteger;
    .end local v16    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local p5    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local p6    # "certificateSerialNumber":Ljava/math/BigInteger;
    .restart local p7    # "certificateNotBefore":Ljava/util/Date;
    .restart local p8    # "certificateNotAfter":Ljava/util/Date;
    :cond_5
    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p12

    move/from16 v10, p17

    move/from16 v11, p18

    move/from16 v13, p19

    move/from16 v12, p20

    move/from16 v14, p22

    move/from16 v15, p23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyStoreAlias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .line 393
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getAttestationChallenge()[B
    .locals 1

    .line 640
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationChallenge:[B

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getBlockModes()[Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundToSpecificSecureUserId()J
    .locals 2

    .line 704
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCertificateNotAfter()Ljava/util/Date;
    .locals 1

    .line 429
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateNotBefore()Ljava/util/Date;
    .locals 1

    .line 420
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 411
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCertificateSubject()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .line 402
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getDigests()[Ljava/lang/String;
    .locals 2

    .line 481
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Digests not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncryptionPaddings()[Ljava/lang/String;
    .locals 1

    .line 508
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 384
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    return v0
.end method

.method public getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 1

    .line 447
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 1

    .line 456
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityStart()Ljava/util/Date;
    .locals 1

    .line 438
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getPurposes()I
    .locals 1

    .line 466
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    return v0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    .line 520
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 375
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUid:I

    return v0
.end method

.method public getUserAuthenticationValidityDurationSeconds()I
    .locals 1

    .line 597
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public isDigestsSpecified()Z
    .locals 1

    .line 495
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidatedByBiometricEnrollment()Z
    .locals 1

    .line 679
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mInvalidatedByBiometricEnrollment:Z

    return v0
.end method

.method public isRandomizedEncryptionRequired()Z
    .locals 1

    .line 545
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    return v0
.end method

.method public isStrongBoxBacked()Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mIsStrongBoxBacked:Z

    return v0
.end method

.method public isUniqueIdIncluded()Z
    .locals 1

    .line 649
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUniqueIdIncluded:Z

    return v0
.end method

.method public isUnlockedDeviceRequired()Z
    .locals 1

    .line 697
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUnlockedDeviceRequired:Z

    return v0
.end method

.method public isUserAuthenticationRequired()Z
    .locals 1

    .line 559
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    return v0
.end method

.method public isUserAuthenticationValidWhileOnBody()Z
    .locals 1

    .line 666
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidWhileOnBody:Z

    return v0
.end method

.method public isUserConfirmationRequired()Z
    .locals 1

    .line 579
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserConfirmationRequired:Z

    return v0
.end method

.method public isUserPresenceRequired()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserPresenceRequired:Z

    return v0
.end method
