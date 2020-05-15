.class abstract Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;
.super Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA512AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA384AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA256AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA224AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$PKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$NoPadding;
    }
.end annotation


# instance fields
.field private final mKeymasterPadding:I

.field private mKeymasterPaddingOverride:I

.field private mModulusSizeBytes:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "keymasterPadding"    # I

    .line 352
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;-><init>()V

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 353
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 354
    return-void
.end method


# virtual methods
.method protected addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 4
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .line 461
    const v0, 0x10000002

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 462
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeymasterPaddingOverride()I

    move-result v0

    .line 463
    .local v0, "keymasterPadding":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 464
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 466
    :cond_0
    const v2, 0x20000006

    invoke-virtual {p1, v2, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 467
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeymasterPurposeOverride()I

    move-result v2

    .line 468
    .local v2, "purposeOverride":I
    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-ne v2, v1, :cond_2

    .line 472
    :cond_1
    const v1, 0x20000005

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 474
    :cond_2
    return-void
.end method

.method protected adjustConfigForEncryptingWithPrivateKey()Z
    .locals 1

    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method protected final engineGetBlockSize()I
    .locals 1

    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method protected final engineGetIV()[B
    .locals 1

    .line 490
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .line 495
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getModulusSizeBytes()I

    move-result v0

    return v0
.end method

.method protected final getKeymasterPaddingOverride()I
    .locals 1

    .line 513
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    return v0
.end method

.method protected final getModulusSizeBytes()I
    .locals 2

    .line 499
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 502
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    return v0

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final initKey(ILjava/security/Key;)V
    .locals 10
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 358
    if-eqz p2, :cond_8

    .line 361
    const-string v0, "RSA"

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 366
    instance-of v0, p2, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_0

    .line 367
    move-object v0, p2

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreKey;

    .local v0, "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :goto_0
    goto :goto_1

    .line 368
    .end local v0    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :cond_0
    instance-of v0, p2, Landroid/security/keystore/AndroidKeyStorePublicKey;

    if-eqz v0, :cond_6

    .line 369
    move-object v0, p2

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreKey;

    goto :goto_0

    .line 371
    .restart local v0    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :goto_1
    nop

    .line 374
    instance-of v1, v0, Ljava/security/PrivateKey;

    if-eqz v1, :cond_2

    .line 376
    packed-switch p1, :pswitch_data_0

    .line 392
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSA private keys cannot be used with opmode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 380
    :pswitch_0
    goto/16 :goto_2

    .line 383
    :pswitch_1
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->adjustConfigForEncryptingWithPrivateKey()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 384
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSA private keys cannot be used with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and padding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 387
    invoke-static {v3}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Only RSA public keys supported for this mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_2
    packed-switch p1, :pswitch_data_1

    .line 411
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSA public keys cannot be used with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    :pswitch_2
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSA public keys cannot be used with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and padding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 407
    invoke-static {v3}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Only RSA private keys supported for this opmode."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :pswitch_3
    nop

    .line 416
    :goto_2
    new-instance v1, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v1}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 417
    .local v1, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v2

    .line 418
    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v6

    .line 417
    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v2

    .line 419
    .local v2, "errorCode":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 423
    const v3, 0x30000003

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v6

    .line 424
    .local v6, "keySizeBits":J
    cmp-long v3, v6, v4

    if-eqz v3, :cond_4

    .line 426
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v6, v3

    if-gtz v3, :cond_3

    .line 429
    const-wide/16 v3, 0x7

    add-long/2addr v3, v6

    const-wide/16 v8, 0x8

    div-long/2addr v3, v8

    long-to-int v3, v3

    iput v3, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 431
    invoke-virtual {p0, v0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    .line 432
    return-void

    .line 427
    :cond_3
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bits"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 425
    :cond_4
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Size of key not known"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 420
    .end local v6    # "keySizeBits":J
    :cond_5
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v3

    .line 421
    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v5

    .line 420
    invoke-virtual {v3, v4, v5, v2}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;II)Ljava/security/InvalidKeyException;

    move-result-object v3

    throw v3

    .line 371
    .end local v0    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    .end local v1    # "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .end local v2    # "errorCode":I
    :cond_6
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_7
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RSA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_8
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Unsupported key: null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 0
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .line 479
    return-void
.end method

.method protected final resetAll()V
    .locals 1

    .line 448
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 449
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    .line 450
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 451
    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .locals 0

    .line 455
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    .line 456
    return-void
.end method

.method protected final setKeymasterPaddingOverride(I)V
    .locals 0
    .param p1, "keymasterPadding"    # I

    .line 509
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    .line 510
    return-void
.end method
