.class public final Landroid/security/keystore/KeyProtection;
.super Ljava/lang/Object;
.source "KeyProtection.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;
.implements Landroid/security/keystore/UserAuthArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyProtection$Builder;
    }
.end annotation


# instance fields
.field private final mBlockModes:[Ljava/lang/String;

.field private final mBoundToSecureUserId:J

.field private final mCriticalToDeviceEncryption:Z

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mInvalidatedByBiometricEnrollment:Z

.field private final mIsStrongBoxBacked:Z

.field private final mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final mKeyValidityStart:Ljava/util/Date;

.field private final mPurposes:I

.field private final mRandomizedEncryptionRequired:Z

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mUnlockedDeviceRequired:Z

.field private final mUserAuthenticationRequired:Z

.field private final mUserAuthenticationValidWhileOnBody:Z

.field private final mUserAuthenticationValidityDurationSeconds:I

.field private final mUserConfirmationRequired:Z

.field private final mUserPresenceRequred:Z


# direct methods
.method private constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIZZZJZZZZ)V
    .locals 14
    .param p1, "keyValidityStart"    # Ljava/util/Date;
    .param p2, "keyValidityForOriginationEnd"    # Ljava/util/Date;
    .param p3, "keyValidityForConsumptionEnd"    # Ljava/util/Date;
    .param p4, "purposes"    # I
    .param p5, "encryptionPaddings"    # [Ljava/lang/String;
    .param p6, "signaturePaddings"    # [Ljava/lang/String;
    .param p7, "digests"    # [Ljava/lang/String;
    .param p8, "blockModes"    # [Ljava/lang/String;
    .param p9, "randomizedEncryptionRequired"    # Z
    .param p10, "userAuthenticationRequired"    # Z
    .param p11, "userAuthenticationValidityDurationSeconds"    # I
    .param p12, "userPresenceRequred"    # Z
    .param p13, "userAuthenticationValidWhileOnBody"    # Z
    .param p14, "invalidatedByBiometricEnrollment"    # Z
    .param p15, "boundToSecureUserId"    # J
    .param p17, "criticalToDeviceEncryption"    # Z
    .param p18, "userConfirmationRequired"    # Z
    .param p19, "unlockedDeviceRequired"    # Z
    .param p20, "isStrongBoxBacked"    # Z

    move-object v0, p0

    .line 256
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 257
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    .line 258
    invoke-static/range {p2 .. p2}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 259
    invoke-static/range {p3 .. p3}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 260
    move/from16 v1, p4

    iput v1, v0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    .line 261
    nop

    .line 262
    invoke-static/range {p5 .. p5}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    .line 263
    nop

    .line 264
    invoke-static/range {p6 .. p6}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

    .line 265
    invoke-static/range {p7 .. p7}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    .line 266
    invoke-static/range {p8 .. p8}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    .line 267
    move/from16 v2, p9

    iput-boolean v2, v0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    .line 268
    move/from16 v3, p10

    iput-boolean v3, v0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    .line 269
    move/from16 v4, p11

    iput v4, v0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    .line 270
    move/from16 v5, p12

    iput-boolean v5, v0, Landroid/security/keystore/KeyProtection;->mUserPresenceRequred:Z

    .line 271
    move/from16 v6, p13

    iput-boolean v6, v0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    .line 272
    move/from16 v7, p14

    iput-boolean v7, v0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    .line 273
    move-wide/from16 v8, p15

    iput-wide v8, v0, Landroid/security/keystore/KeyProtection;->mBoundToSecureUserId:J

    .line 274
    move/from16 v10, p17

    iput-boolean v10, v0, Landroid/security/keystore/KeyProtection;->mCriticalToDeviceEncryption:Z

    .line 275
    move/from16 v11, p18

    iput-boolean v11, v0, Landroid/security/keystore/KeyProtection;->mUserConfirmationRequired:Z

    .line 276
    move/from16 v12, p19

    iput-boolean v12, v0, Landroid/security/keystore/KeyProtection;->mUnlockedDeviceRequired:Z

    .line 277
    move/from16 v13, p20

    iput-boolean v13, v0, Landroid/security/keystore/KeyProtection;->mIsStrongBoxBacked:Z

    .line 278
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIZZZJZZZZLandroid/security/keystore/KeyProtection$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Date;
    .param p2, "x1"    # Ljava/util/Date;
    .param p3, "x2"    # Ljava/util/Date;
    .param p4, "x3"    # I
    .param p5, "x4"    # [Ljava/lang/String;
    .param p6, "x5"    # [Ljava/lang/String;
    .param p7, "x6"    # [Ljava/lang/String;
    .param p8, "x7"    # [Ljava/lang/String;
    .param p9, "x8"    # Z
    .param p10, "x9"    # Z
    .param p11, "x10"    # I
    .param p12, "x11"    # Z
    .param p13, "x12"    # Z
    .param p14, "x13"    # Z
    .param p15, "x14"    # J
    .param p17, "x15"    # Z
    .param p18, "x16"    # Z
    .param p19, "x17"    # Z
    .param p20, "x18"    # Z
    .param p21, "x19"    # Landroid/security/keystore/KeyProtection$1;

    .line 216
    invoke-direct/range {p0 .. p20}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIZZZJZZZZ)V

    return-void
.end method


# virtual methods
.method public getBlockModes()[Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundToSpecificSecureUserId()J
    .locals 2

    .line 510
    iget-wide v0, p0, Landroid/security/keystore/KeyProtection;->mBoundToSecureUserId:J

    return-wide v0
.end method

.method public getDigests()[Ljava/lang/String;
    .locals 2

    .line 356
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Digests not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncryptionPaddings()[Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 1

    .line 297
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 1

    .line 307
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityStart()Ljava/util/Date;
    .locals 1

    .line 287
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPurposes()I
    .locals 1

    .line 317
    iget v0, p0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    return v0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAuthenticationValidityDurationSeconds()I
    .locals 1

    .line 446
    iget v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public isCriticalToDeviceEncryption()Z
    .locals 1

    .line 520
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mCriticalToDeviceEncryption:Z

    return v0
.end method

.method public isDigestsSpecified()Z
    .locals 1

    .line 369
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

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

    .line 491
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    return v0
.end method

.method public isRandomizedEncryptionRequired()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    return v0
.end method

.method public isStrongBoxBacked()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mIsStrongBoxBacked:Z

    return v0
.end method

.method public isUnlockedDeviceRequired()Z
    .locals 1

    .line 531
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUnlockedDeviceRequired:Z

    return v0
.end method

.method public isUserAuthenticationRequired()Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    return v0
.end method

.method public isUserAuthenticationValidWhileOnBody()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    return v0
.end method

.method public isUserConfirmationRequired()Z
    .locals 1

    .line 428
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserConfirmationRequired:Z

    return v0
.end method

.method public isUserPresenceRequired()Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserPresenceRequred:Z

    return v0
.end method
