.class public final Landroid/security/keystore/KeyProtection$Builder;
.super Ljava/lang/Object;
.source "KeyProtection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProtection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBlockModes:[Ljava/lang/String;

.field private mBoundToSecureUserId:J

.field private mCriticalToDeviceEncryption:Z

.field private mDigests:[Ljava/lang/String;

.field private mEncryptionPaddings:[Ljava/lang/String;

.field private mInvalidatedByBiometricEnrollment:Z

.field private mIsStrongBoxBacked:Z

.field private mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private mKeyValidityStart:Ljava/util/Date;

.field private mPurposes:I

.field private mRandomizedEncryptionRequired:Z

.field private mSignaturePaddings:[Ljava/lang/String;

.field private mUnlockedDeviceRequired:Z

.field private mUserAuthenticationRequired:Z

.field private mUserAuthenticationValidWhileOnBody:Z

.field private mUserAuthenticationValidityDurationSeconds:I

.field private mUserConfirmationRequired:Z

.field private mUserPresenceRequired:Z


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "purposes"    # I

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    .line 557
    const/4 v1, -0x1

    iput v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    .line 558
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserPresenceRequired:Z

    .line 560
    iput-boolean v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mInvalidatedByBiometricEnrollment:Z

    .line 562
    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUnlockedDeviceRequired:Z

    .line 564
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/KeyProtection$Builder;->mBoundToSecureUserId:J

    .line 565
    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mCriticalToDeviceEncryption:Z

    .line 566
    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mIsStrongBoxBacked:Z

    .line 577
    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mPurposes:I

    .line 578
    return-void
.end method


# virtual methods
.method public build()Landroid/security/keystore/KeyProtection;
    .locals 29

    .line 993
    move-object/from16 v0, p0

    new-instance v23, Landroid/security/keystore/KeyProtection;

    iget-object v2, v0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityStart:Ljava/util/Date;

    iget-object v3, v0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    iget-object v4, v0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    iget v5, v0, Landroid/security/keystore/KeyProtection$Builder;->mPurposes:I

    iget-object v6, v0, Landroid/security/keystore/KeyProtection$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    iget-object v7, v0, Landroid/security/keystore/KeyProtection$Builder;->mSignaturePaddings:[Ljava/lang/String;

    iget-object v8, v0, Landroid/security/keystore/KeyProtection$Builder;->mDigests:[Ljava/lang/String;

    iget-object v9, v0, Landroid/security/keystore/KeyProtection$Builder;->mBlockModes:[Ljava/lang/String;

    iget-boolean v10, v0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    iget-boolean v11, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationRequired:Z

    iget v12, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    iget-boolean v13, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserPresenceRequired:Z

    iget-boolean v14, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidWhileOnBody:Z

    iget-boolean v15, v0, Landroid/security/keystore/KeyProtection$Builder;->mInvalidatedByBiometricEnrollment:Z

    move/from16 v24, v14

    move/from16 v25, v15

    iget-wide v14, v0, Landroid/security/keystore/KeyProtection$Builder;->mBoundToSecureUserId:J

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mCriticalToDeviceEncryption:Z

    move-wide/from16 v26, v14

    iget-boolean v15, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserConfirmationRequired:Z

    iget-boolean v14, v0, Landroid/security/keystore/KeyProtection$Builder;->mUnlockedDeviceRequired:Z

    move/from16 v28, v15

    iget-boolean v15, v0, Landroid/security/keystore/KeyProtection$Builder;->mIsStrongBoxBacked:Z

    const/16 v22, 0x0

    move/from16 v18, v1

    move-object/from16 v1, v23

    move/from16 v20, v14

    move-wide/from16 v16, v26

    move/from16 v14, v24

    move/from16 v21, v15

    move/from16 v19, v28

    move/from16 v15, v25

    invoke-direct/range {v1 .. v22}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIZZZJZZZZLandroid/security/keystore/KeyProtection$1;)V

    return-object v23
.end method

.method public varargs setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "blockModes"    # [Ljava/lang/String;

    .line 710
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mBlockModes:[Ljava/lang/String;

    .line 711
    return-object p0
.end method

.method public setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "secureUserId"    # J

    .line 945
    iput-wide p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mBoundToSecureUserId:J

    .line 946
    return-object p0
.end method

.method public setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "critical"    # Z

    .line 959
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mCriticalToDeviceEncryption:Z

    .line 960
    return-object p0
.end method

.method public varargs setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "digests"    # [Ljava/lang/String;

    .line 695
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mDigests:[Ljava/lang/String;

    .line 696
    return-object p0
.end method

.method public varargs setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    .line 655
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    .line 656
    return-object p0
.end method

.method public setInvalidatedByBiometricEnrollment(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "invalidateKey"    # Z

    .line 924
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mInvalidatedByBiometricEnrollment:Z

    .line 925
    return-object p0
.end method

.method public setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "isStrongBoxBacked"    # Z

    .line 982
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mIsStrongBoxBacked:Z

    .line 983
    return-object p0
.end method

.method public setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "endDate"    # Ljava/util/Date;

    .line 604
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyProtection$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    .line 605
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyProtection$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    .line 606
    return-object p0
.end method

.method public setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "endDate"    # Ljava/util/Date;

    .line 632
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 633
    return-object p0
.end method

.method public setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "endDate"    # Ljava/util/Date;

    .line 618
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 619
    return-object p0
.end method

.method public setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "startDate"    # Ljava/util/Date;

    .line 589
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityStart:Ljava/util/Date;

    .line 590
    return-object p0
.end method

.method public setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "required"    # Z

    .line 750
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    .line 751
    return-object p0
.end method

.method public varargs setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    .line 671
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mSignaturePaddings:[Ljava/lang/String;

    .line 672
    return-object p0
.end method

.method public setUnlockedDeviceRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "unlockedDeviceRequired"    # Z

    .line 972
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUnlockedDeviceRequired:Z

    .line 973
    return-object p0
.end method

.method public setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "required"    # Z

    .line 791
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationRequired:Z

    .line 792
    return-object p0
.end method

.method public setUserAuthenticationValidWhileOnBody(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "remainsValid"    # Z

    .line 900
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidWhileOnBody:Z

    .line 901
    return-object p0
.end method

.method public setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;
    .locals 2
    .param p1, "seconds"    # I

    .line 856
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    .line 859
    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    .line 860
    return-object p0

    .line 857
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "seconds must be -1 or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserConfirmationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "required"    # Z

    .line 814
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserConfirmationRequired:Z

    .line 815
    return-object p0
.end method

.method public setUserPresenceRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "required"    # Z

    .line 877
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserPresenceRequired:Z

    .line 878
    return-object p0
.end method
