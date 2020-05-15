.class public abstract Landroid/security/keystore/KeymasterUtils;
.super Ljava/lang/Object;
.source "KeymasterUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V
    .locals 5
    .param p0, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "keymasterBlockModes"    # [I
    .param p3, "keymasterDigests"    # [I

    .line 187
    const v0, 0x30000008

    const/16 v1, 0x20

    if-eq p1, v1, :cond_3

    const/16 v1, 0x80

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 207
    const/4 v1, 0x0

    aget v1, p3, v1

    .line 208
    .local v1, "keymasterDigest":I
    invoke-static {v1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v2

    .line 209
    .local v2, "digestOutputSizeBits":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 214
    int-to-long v3, v2

    invoke-virtual {p0, v0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .end local v1    # "keymasterDigest":I
    .end local v2    # "digestOutputSizeBits":I
    goto :goto_0

    .line 210
    .restart local v1    # "keymasterDigest":I
    .restart local v2    # "digestOutputSizeBits":I
    :cond_1
    new-instance v0, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    .end local v1    # "keymasterDigest":I
    .end local v2    # "digestOutputSizeBits":I
    :cond_2
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported number of authorized digests for HMAC key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Exactly one digest must be authorized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_3
    invoke-static {p2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    const-wide/16 v1, 0x60

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 217
    :cond_4
    :goto_0
    return-void
.end method

.method public static addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keystore/UserAuthArgs;)V
    .locals 10
    .param p0, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p1, "spec"    # Landroid/security/keystore/UserAuthArgs;

    .line 105
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->isUserConfirmationRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const v0, 0x700001fc

    invoke-virtual {p0, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 109
    :cond_0
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->isUserPresenceRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const v0, 0x700001fb

    invoke-virtual {p0, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 113
    :cond_1
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->isUnlockedDeviceRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const v0, 0x700001fd

    invoke-virtual {p0, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 117
    :cond_2
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->isUserAuthenticationRequired()Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    const v0, 0x700001f7

    invoke-virtual {p0, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 119
    return-void

    .line 122
    :cond_3
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getUserAuthenticationValidityDurationSeconds()I

    move-result v0

    const/4 v1, -0x1

    const v2, 0x100001f8

    const v3, -0x5ffffe0a

    const-wide/16 v4, 0x0

    if-ne v0, v1, :cond_9

    .line 126
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 130
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    move-result-wide v6

    goto :goto_0

    :cond_4
    move-wide v6, v4

    .line 131
    .local v6, "fingerprintOnlySid":J
    :goto_0
    cmp-long v1, v6, v4

    if-eqz v1, :cond_8

    .line 138
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getBoundToSpecificSecureUserId()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-eqz v1, :cond_5

    .line 139
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getBoundToSpecificSecureUserId()J

    move-result-wide v4

    .local v4, "sid":J
    :goto_1
    goto :goto_2

    .line 140
    .end local v4    # "sid":J
    :cond_5
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->isInvalidatedByBiometricEnrollment()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 143
    move-wide v4, v6

    goto :goto_1

    .line 147
    :cond_6
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    move-result-wide v4

    .line 150
    .restart local v4    # "sid":J
    :goto_2
    nop

    .line 151
    invoke-static {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 150
    invoke-virtual {p0, v3, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    .line 152
    const/4 v1, 0x2

    invoke-virtual {p0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 153
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->isUserAuthenticationValidWhileOnBody()Z

    move-result v1

    if-nez v1, :cond_7

    .line 157
    .end local v0    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v4    # "sid":J
    .end local v6    # "fingerprintOnlySid":J
    goto :goto_4

    .line 154
    .restart local v0    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .restart local v4    # "sid":J
    .restart local v6    # "fingerprintOnlySid":J
    :cond_7
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Key validity extension while device is on-body is not supported for keys requiring fingerprint authentication"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    .end local v4    # "sid":J
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "At least one fingerprint must be enrolled to create keys requiring user authentication for every use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    .end local v0    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v6    # "fingerprintOnlySid":J
    :cond_9
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getBoundToSpecificSecureUserId()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    .line 160
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getBoundToSpecificSecureUserId()J

    move-result-wide v0

    .local v0, "sid":J
    goto :goto_3

    .line 164
    .end local v0    # "sid":J
    :cond_a
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    move-result-wide v0

    .line 166
    .restart local v0    # "sid":J
    :goto_3
    nop

    .line 167
    invoke-static {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 166
    invoke-virtual {p0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    .line 168
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 170
    const v2, 0x300001f9

    .line 171
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getUserAuthenticationValidityDurationSeconds()I

    move-result v3

    int-to-long v3, v3

    .line 170
    invoke-virtual {p0, v2, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 172
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->isUserAuthenticationValidWhileOnBody()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 173
    const v2, 0x700001fa

    invoke-virtual {p0, v2}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 176
    .end local v0    # "sid":J
    :cond_b
    :goto_4
    return-void
.end method

.method public static getDigestOutputSizeBits(I)I
    .locals 3
    .param p0, "keymasterDigest"    # I

    .line 36
    packed-switch p0, :pswitch_data_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_0
    const/16 v0, 0x200

    return v0

    .line 48
    :pswitch_1
    const/16 v0, 0x180

    return v0

    .line 46
    :pswitch_2
    const/16 v0, 0x100

    return v0

    .line 44
    :pswitch_3
    const/16 v0, 0xe0

    return v0

    .line 42
    :pswitch_4
    const/16 v0, 0xa0

    return v0

    .line 40
    :pswitch_5
    const/16 v0, 0x80

    return v0

    .line 38
    :pswitch_6
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getRootSid()J
    .locals 4

    .line 220
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    .line 221
    .local v0, "rootSid":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 225
    return-wide v0

    .line 222
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Secure lock screen must be enabled to create keys requiring user authentication"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z
    .locals 3
    .param p0, "keymasterBlockMode"    # I

    .line 58
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_0
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .locals 3
    .param p0, "keymasterPadding"    # I

    .line 72
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported asymmetric encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 77
    :cond_0
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
