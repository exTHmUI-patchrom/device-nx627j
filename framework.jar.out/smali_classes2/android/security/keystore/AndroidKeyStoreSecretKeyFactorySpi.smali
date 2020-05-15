.class public Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "AndroidKeyStoreSecretKeyFactorySpi.java"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    .line 45
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method private static getGateKeeperSecureUserId()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    .line 218
    :try_start_0
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to get GateKeeper secure user ID"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;
    .locals 37
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "entryAlias"    # Ljava/lang/String;
    .param p2, "keyAliasInKeystore"    # Ljava/lang/String;
    .param p3, "keyUid"    # I

    .line 81
    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    move-object v7, v0

    .line 82
    .local v7, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v5, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    .line 84
    .local v1, "errorCode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 101
    :try_start_0
    iget-object v0, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x100002be

    invoke-virtual {v0, v3}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 103
    .local v0, "insideSecureHardware":Z
    iget-object v5, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 104
    invoke-virtual {v5, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v3

    .line 103
    invoke-static {v3}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v3

    .line 110
    .end local v0    # "insideSecureHardware":Z
    .local v3, "origin":I
    .local v10, "insideSecureHardware":Z
    .local v11, "origin":I
    :goto_0
    move v10, v0

    move v11, v3

    goto :goto_1

    .line 105
    .end local v3    # "origin":I
    .end local v10    # "insideSecureHardware":Z
    .end local v11    # "origin":I
    :cond_0
    iget-object v0, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, v3}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 106
    const/4 v0, 0x0

    .line 107
    .restart local v0    # "insideSecureHardware":Z
    iget-object v5, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 108
    invoke-virtual {v5, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v3

    .line 107
    invoke-static {v3}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v3

    goto :goto_0

    .line 110
    .end local v0    # "insideSecureHardware":Z
    .restart local v10    # "insideSecureHardware":Z
    .restart local v11    # "origin":I
    :goto_1
    nop

    .line 112
    const v0, 0x30000003

    .line 113
    const-wide/16 v3, -0x1

    invoke-virtual {v7, v0, v3, v4}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v5

    .line 114
    .local v5, "keySizeUnsigned":J
    cmp-long v0, v5, v3

    if-eqz v0, :cond_8

    .line 116
    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v5, v8

    if-gtz v0, :cond_7

    .line 119
    long-to-int v15, v5

    .line 120
    .local v15, "keySize":I
    const v0, 0x20000001

    .line 121
    invoke-virtual {v7, v0}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->allFromKeymaster(Ljava/util/Collection;)I

    move-result v16

    .line 123
    .local v16, "purposes":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 124
    .local v12, "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 126
    .local v13, "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v0, 0x20000006

    invoke-virtual {v7, v0}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v28, v0

    .line 128
    .local v28, "keymasterPadding":I
    nop

    .line 129
    move/from16 v8, v28

    :try_start_1
    invoke-static {v8}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    .end local v28    # "keymasterPadding":I
    .local v0, "jcaPadding":Ljava/lang/String;
    .local v8, "keymasterPadding":I
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    .end local v0    # "jcaPadding":Ljava/lang/String;
    goto :goto_3

    .line 131
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 133
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 134
    :try_start_2
    invoke-static {v8}, Landroid/security/keystore/KeyProperties$SignaturePadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "padding":Ljava/lang/String;
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    .end local v0    # "padding":Ljava/lang/String;
    nop

    .line 142
    .end local v8    # "keymasterPadding":I
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    nop

    .line 126
    const-wide/32 v8, 0x7fffffff

    goto :goto_2

    .line 136
    .restart local v8    # "keymasterPadding":I
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 137
    .local v0, "e2":Ljava/lang/IllegalArgumentException;
    :try_start_3
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encryption padding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    .end local v0    # "e2":Ljava/lang/IllegalArgumentException;
    .end local v8    # "keymasterPadding":I
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    nop

    .line 144
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [Ljava/lang/String;

    .line 145
    .local v17, "encryptionPaddings":[Ljava/lang/String;
    nop

    .line 146
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    .line 148
    .local v18, "signaturePaddings":[Ljava/lang/String;
    const v0, 0x20000005

    .line 149
    invoke-virtual {v7, v0}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v19

    .line 150
    .local v19, "digests":[Ljava/lang/String;
    const v0, 0x20000004

    .line 151
    invoke-virtual {v7, v0}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$BlockMode;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v20

    .line 152
    .local v20, "blockModes":[Ljava/lang/String;
    iget-object v0, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 153
    const v8, 0x100001f8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v0

    .line 154
    .local v0, "keymasterSwEnforcedUserAuthenticators":I
    iget-object v14, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 155
    invoke-virtual {v14, v8, v9}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v8

    move v14, v8

    .line 156
    .local v14, "keymasterHwEnforcedUserAuthenticators":I
    const v8, -0x5ffffe0a

    .line 157
    invoke-virtual {v7, v8}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v5    # "keySizeUnsigned":J
    .end local v12    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v8

    .line 160
    .local v5, "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    nop

    .line 159
    nop

    .line 162
    const v6, 0x60000190

    invoke-virtual {v7, v6}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v6

    .line 163
    .local v6, "keyValidityStart":Ljava/util/Date;
    const v8, 0x60000191

    .line 164
    invoke-virtual {v7, v8}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v28

    .line 165
    .local v28, "keyValidityForOriginationEnd":Ljava/util/Date;
    const v8, 0x60000192

    .line 166
    invoke-virtual {v7, v8}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v31

    .line 167
    .local v31, "keyValidityForConsumptionEnd":Ljava/util/Date;
    const v8, 0x700001f7

    .line 168
    invoke-virtual {v7, v8}, Landroid/security/keymaster/KeyCharacteristics;->getBoolean(I)Z

    move-result v8

    xor-int/2addr v8, v2

    move/from16 v32, v8

    .line 169
    .local v32, "userAuthenticationRequired":Z
    const v8, 0x300001f9

    .line 170
    invoke-virtual {v7, v8, v3, v4}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v3

    .line 171
    .local v3, "userAuthenticationValidityDurationSeconds":J
    const-wide/32 v12, 0x7fffffff

    cmp-long v8, v3, v12

    if-gtz v8, :cond_6

    .line 175
    if-eqz v32, :cond_2

    if-eqz v14, :cond_2

    if-nez v0, :cond_2

    move/from16 v23, v2

    goto :goto_4

    :cond_2
    move/from16 v23, v9

    .line 178
    .local v23, "userAuthenticationRequirementEnforcedBySecureHardware":Z
    :goto_4
    iget-object v8, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v12, 0x700001fa

    .line 179
    invoke-virtual {v8, v12}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v29

    .line 180
    .local v29, "userAuthenticationValidWhileOnBody":Z
    iget-object v8, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v12, 0x700001fb

    .line 181
    invoke-virtual {v8, v12}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v30

    .line 184
    .local v30, "trustedUserPresenceRequred":Z
    const/4 v8, 0x0

    .line 185
    .local v8, "invalidatedByBiometricEnrollment":Z
    const/4 v12, 0x2

    if-eq v0, v12, :cond_4

    if-ne v14, v12, :cond_3

    goto :goto_5

    .line 193
    :cond_3
    move v2, v8

    goto :goto_6

    .line 188
    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    .line 189
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 190
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getGateKeeperSecureUserId()Ljava/math/BigInteger;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_6

    :cond_5
    move v2, v9

    .line 193
    .end local v8    # "invalidatedByBiometricEnrollment":Z
    .local v2, "invalidatedByBiometricEnrollment":Z
    :goto_6
    iget-object v8, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v9, 0x700001fc

    invoke-virtual {v8, v9}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v33

    .line 195
    .local v33, "userConfirmationRequired":Z
    new-instance v34, Landroid/security/keystore/KeyInfo;

    long-to-int v13, v3

    move-object/from16 v8, v34

    move-object/from16 v9, p1

    move v12, v15

    move/from16 v22, v13

    move-object v13, v6

    move/from16 v35, v14

    move-object/from16 v14, v28

    .end local v14    # "keymasterHwEnforcedUserAuthenticators":I
    .local v35, "keymasterHwEnforcedUserAuthenticators":I
    move/from16 v36, v15

    move-object/from16 v15, v31

    .end local v15    # "keySize":I
    .local v36, "keySize":I
    move/from16 v21, v32

    move/from16 v24, v29

    move/from16 v25, v30

    move/from16 v26, v2

    move/from16 v27, v33

    invoke-direct/range {v8 .. v27}, Landroid/security/keystore/KeyInfo;-><init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIZZZZZ)V

    return-object v34

    .line 172
    .end local v2    # "invalidatedByBiometricEnrollment":Z
    .end local v23    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    .end local v29    # "userAuthenticationValidWhileOnBody":Z
    .end local v30    # "trustedUserPresenceRequred":Z
    .end local v33    # "userConfirmationRequired":Z
    .end local v35    # "keymasterHwEnforcedUserAuthenticators":I
    .end local v36    # "keySize":I
    .restart local v14    # "keymasterHwEnforcedUserAuthenticators":I
    .restart local v15    # "keySize":I
    :cond_6
    move/from16 v35, v14

    move/from16 v36, v15

    .end local v14    # "keymasterHwEnforcedUserAuthenticators":I
    .end local v15    # "keySize":I
    .restart local v35    # "keymasterHwEnforcedUserAuthenticators":I
    .restart local v36    # "keySize":I
    new-instance v2, Ljava/security/ProviderException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User authentication timeout validity too long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    .end local v0    # "keymasterSwEnforcedUserAuthenticators":I
    .end local v3    # "userAuthenticationValidityDurationSeconds":J
    .end local v6    # "keyValidityStart":Ljava/util/Date;
    .end local v16    # "purposes":I
    .end local v17    # "encryptionPaddings":[Ljava/lang/String;
    .end local v18    # "signaturePaddings":[Ljava/lang/String;
    .end local v19    # "digests":[Ljava/lang/String;
    .end local v20    # "blockModes":[Ljava/lang/String;
    .end local v28    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v31    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v32    # "userAuthenticationRequired":Z
    .end local v35    # "keymasterHwEnforcedUserAuthenticators":I
    .end local v36    # "keySize":I
    .local v5, "keySizeUnsigned":J
    :cond_7
    :try_start_4
    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_8
    new-instance v0, Ljava/security/ProviderException;

    const-string v2, "Key size not available"

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    .end local v5    # "keySizeUnsigned":J
    .end local v10    # "insideSecureHardware":Z
    .end local v11    # "origin":I
    :cond_9
    new-instance v0, Ljava/security/ProviderException;

    const-string v2, "Key origin not available"

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 158
    :catch_2
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Unsupported key characteristic"

    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 85
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_a
    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to obtain information about key. Keystore error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To generate secret key in Android Keystore, use KeyGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    .line 228
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpecClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 50
    if-eqz p2, :cond_6

    .line 53
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Android KeyStore secret keys supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    const-class v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 61
    const-class v0, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    move-object v0, p1

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreKey;

    .line 65
    .local v0, "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "keyAliasInKeystore":Ljava/lang/String;
    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    const-string v2, "USRPKEY_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "entryAlias":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 69
    .end local v2    # "entryAlias":Ljava/lang/String;
    :cond_2
    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    const-string v2, "USRSKEY_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 73
    .restart local v2    # "entryAlias":Ljava/lang/String;
    :goto_2
    nop

    .line 76
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v4

    invoke-static {v3, v2, v1, v4}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;

    move-result-object v3

    return-object v3

    .line 73
    .end local v2    # "entryAlias":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key alias: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    .end local v0    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    .end local v1    # "keyAliasInKeystore":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_5
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Key material export of Android KeyStore keys is not supported"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_6
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpecClass == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 233
    if-eqz p1, :cond_1

    .line 235
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_0

    .line 240
    return-object p1

    .line 236
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "To import a secret key into Android Keystore, use KeyStore.setEntry"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
