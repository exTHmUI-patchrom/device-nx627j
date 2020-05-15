.class abstract Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.super Ljavax/crypto/CipherSpi;
.source "AndroidKeyStoreCipherSpiBase.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# instance fields
.field private mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mAdditionalAuthenticationDataStreamerClosed:Z

.field private mCachedException:Ljava/lang/Exception;

.field private mEncrypting:Z

.field private mKey:Landroid/security/keystore/AndroidKeyStoreKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mKeymasterPurposeOverride:I

.field private mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;

.field private mRng:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 96
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    .line 97
    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 230
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    if-eqz v0, :cond_a

    .line 236
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 237
    .local v0, "keymasterInputArgs":Landroid/security/keymaster/KeymasterArguments;
    invoke-virtual {p0, v0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V

    .line 238
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 239
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getAdditionalEntropyAmountForBegin()I

    move-result v2

    .line 238
    invoke-static {v1, v2}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v8

    .line 242
    .local v8, "additionalEntropy":[B
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    const/4 v2, -0x1

    const/4 v9, 0x0

    if-eq v1, v2, :cond_2

    .line 243
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 246
    .local v3, "purpose":I
    :goto_0
    move v3, v1

    goto :goto_1

    .line 245
    .end local v3    # "purpose":I
    :cond_2
    iget-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    if-eqz v1, :cond_3

    .line 246
    move v1, v9

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 248
    .restart local v3    # "purpose":I
    :goto_1
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 249
    invoke-virtual {v2}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 254
    invoke-virtual {v5}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v7

    .line 248
    move-object v5, v0

    move-object v6, v8

    invoke-virtual/range {v1 .. v7}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object v1

    .line 255
    .local v1, "opResult":Landroid/security/keymaster/OperationResult;
    if-eqz v1, :cond_9

    .line 261
    iget-object v2, v1, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    iput-object v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 262
    iget-wide v4, v1, Landroid/security/keymaster/OperationResult;->operationHandle:J

    iput-wide v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    .line 265
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    iget v5, v1, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v2, v4, v5}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getExceptionForCipherInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/GeneralSecurityException;

    move-result-object v2

    .line 267
    .local v2, "e":Ljava/security/GeneralSecurityException;
    if-eqz v2, :cond_6

    .line 268
    instance-of v4, v2, Ljava/security/InvalidKeyException;

    if-nez v4, :cond_5

    .line 270
    instance-of v4, v2, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v4, :cond_4

    .line 271
    move-object v4, v2

    check-cast v4, Ljava/security/InvalidAlgorithmParameterException;

    throw v4

    .line 273
    :cond_4
    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Unexpected exception type"

    invoke-direct {v4, v5, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 269
    :cond_5
    move-object v4, v2

    check-cast v4, Ljava/security/InvalidKeyException;

    throw v4

    .line 277
    :cond_6
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    if-eqz v4, :cond_8

    .line 280
    iget-wide v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    .line 284
    iget-object v4, v1, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {p0, v4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V

    .line 285
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v5, v1, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v4, v5}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    move-result-object v4

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 286
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v5, v1, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    .line 287
    invoke-virtual {p0, v4, v5}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    move-result-object v4

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 288
    iput-boolean v9, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 289
    return-void

    .line 281
    :cond_7
    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Keystore returned invalid operation handle"

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 278
    :cond_8
    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Keystore returned null operation token"

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 256
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :cond_9
    new-instance v2, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v2}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v2

    .line 233
    .end local v0    # "keymasterInputArgs":Landroid/security/keymaster/KeymasterArguments;
    .end local v1    # "opResult":Landroid/security/keymaster/OperationResult;
    .end local v3    # "purpose":I
    .end local v8    # "additionalEntropy":[B
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private flushAAD()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    if-nez v0, :cond_1

    .line 356
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    .local v1, "output":[B
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 363
    nop

    .line 362
    nop

    .line 364
    if-eqz v1, :cond_1

    array-length v0, v1

    if-gtz v0, :cond_0

    .end local v1    # "output":[B
    goto :goto_0

    .line 365
    .restart local v1    # "output":[B
    :cond_0
    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AAD update unexpectedly returned data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    .end local v1    # "output":[B
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    throw v1

    .line 369
    :cond_1
    :goto_0
    return-void
.end method

.method private init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 168
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported opmode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 166
    goto :goto_0

    .line 161
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 162
    nop

    .line 170
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initKey(ILjava/security/Key;)V

    .line 171
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    if-eqz v0, :cond_0

    .line 174
    iput-object p3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 175
    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "initKey did not initialize the key"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static opmodeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "opmode"    # I

    .line 799
    packed-switch p0, :pswitch_data_0

    .line 809
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 807
    :pswitch_0
    const-string v0, "UNWRAP_MODE"

    return-object v0

    .line 805
    :pswitch_1
    const-string v0, "WRAP_MODE"

    return-object v0

    .line 803
    :pswitch_2
    const-string v0, "DECRYPT_MODE"

    return-object v0

    .line 801
    :pswitch_3
    const-string v0, "ENCRYPT_MODE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected abstract addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
.end method

.method protected createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 1
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "operationToken"    # Landroid/os/IBinder;

    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 2
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "operationToken"    # Landroid/os/IBinder;

    .line 300
    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1, p2}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    return-object v0
.end method

.method protected final engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 547
    if-eqz p1, :cond_4

    .line 550
    if-eqz p2, :cond_3

    .line 554
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 556
    .local v0, "inputSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 557
    nop

    .line 559
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    .line 558
    invoke-virtual {p0, v1, v3, v0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v1

    .line 560
    .local v1, "outputArray":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 562
    .end local v1    # "outputArray":[B
    :cond_0
    new-array v1, v0, [B

    .line 563
    .local v1, "inputArray":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 564
    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v1

    .line 567
    .local v1, "outputArray":[B
    :goto_0
    if-eqz v1, :cond_1

    array-length v2, v1

    nop

    .line 568
    .local v2, "outputSize":I
    :cond_1
    if-lez v2, :cond_2

    .line 569
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 571
    .local v3, "outputBufferAvailable":I
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    goto :goto_1

    .line 572
    :catch_0
    move-exception v4

    .line 573
    .local v4, "e":Ljava/nio/BufferOverflowException;
    new-instance v5, Ljavax/crypto/ShortBufferException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Output buffer too small. Produced: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 578
    .end local v3    # "outputBufferAvailable":I
    .end local v4    # "e":Ljava/nio/BufferOverflowException;
    :cond_2
    :goto_1
    return v2

    .line 551
    .end local v0    # "inputSize":I
    .end local v1    # "outputArray":[B
    .end local v2    # "outputSize":I
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineDoFinal([BII[BI)I
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 531
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v0

    .line 532
    .local v0, "outputCopy":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 533
    return v1

    .line 535
    :cond_0
    array-length v2, p4

    sub-int/2addr v2, p5

    .line 536
    .local v2, "outputAvailable":I
    array-length v3, v0

    if-gt v3, v2, :cond_1

    .line 540
    array-length v3, v0

    invoke-static {v0, v1, p4, p5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 541
    array-length v1, v0

    return v1

    .line 537
    :cond_1
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output buffer too short. Produced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final engineDoFinal([BII)[B
    .locals 8
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_3

    .line 495
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 498
    nop

    .line 502
    :try_start_1
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    .line 503
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 505
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getAdditionalEntropyAmountForFinish()I

    move-result v1

    .line 504
    invoke-static {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v7

    .line 506
    .local v7, "additionalEntropy":[B
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v2 .. v7}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B

    move-result-object v0
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 521
    .end local v7    # "additionalEntropy":[B
    .local v0, "output":[B
    nop

    .line 519
    nop

    .line 523
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    .line 524
    return-object v0

    .line 510
    .end local v0    # "output":[B
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v1

    const/16 v2, -0x26

    if-eq v1, v2, :cond_2

    const/16 v2, -0x1e

    if-eq v1, v2, :cond_1

    const/16 v2, -0x15

    if-eq v1, v2, :cond_0

    .line 519
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/IllegalBlockSizeException;

    throw v1

    .line 513
    :cond_0
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/IllegalBlockSizeException;

    throw v1

    .line 517
    :cond_1
    new-instance v1, Ljavax/crypto/AEADBadTagException;

    invoke-direct {v1}, Ljavax/crypto/AEADBadTagException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/AEADBadTagException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/AEADBadTagException;

    throw v1

    .line 515
    :cond_2
    new-instance v1, Ljavax/crypto/BadPaddingException;

    invoke-direct {v1}, Ljavax/crypto/BadPaddingException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/BadPaddingException;

    throw v1

    .line 496
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 497
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/IllegalBlockSizeException;

    throw v1

    .line 490
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_3
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 491
    invoke-virtual {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    throw v0
.end method

.method protected final engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 735
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "success":Z
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 129
    invoke-virtual {p0, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V

    .line 130
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    const/4 v0, 0x1

    .line 133
    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 137
    :cond_0
    return-void

    .line 133
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 134
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_1
    throw v1
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "success":Z
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 107
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    nop

    .line 113
    const/4 v0, 0x1

    .line 115
    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 119
    :cond_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    :try_start_2
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 116
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_1
    throw v1
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "success":Z
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 147
    invoke-virtual {p0, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 148
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    const/4 v0, 0x1

    .line 151
    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 155
    :cond_0
    return-void

    .line 151
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_1
    throw v1
.end method

.method protected final engineSetMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 723
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final engineSetPadding(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 730
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 5
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 665
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    if-eqz v0, :cond_2

    .line 669
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 674
    if-eqz p1, :cond_0

    .line 680
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 683
    .local v0, "encoded":[B
    nop

    .line 682
    nop

    .line 685
    packed-switch p3, :pswitch_data_0

    .line 714
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported wrappedKeyType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 688
    :pswitch_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 693
    :pswitch_1
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 695
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    :try_start_1
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 696
    :catch_0
    move-exception v2

    .line 697
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Failed to create private key from its PKCS#8 encoded form"

    invoke-direct {v3, v4, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 704
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :pswitch_2
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 706
    .restart local v1    # "keyFactory":Ljava/security/KeyFactory;
    :try_start_2
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    .line 707
    :catch_1
    move-exception v2

    .line 708
    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Failed to create public key from its X.509 encoded form"

    invoke-direct {v3, v4, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 681
    .end local v0    # "encoded":[B
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v0

    .line 682
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Failed to unwrap key"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 675
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "wrappedKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initilized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 390
    if-eqz p1, :cond_4

    .line 393
    if-eqz p2, :cond_3

    .line 397
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 399
    .local v0, "inputSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 400
    nop

    .line 402
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    .line 401
    invoke-virtual {p0, v1, v3, v0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v1

    .line 403
    .local v1, "outputArray":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 405
    .end local v1    # "outputArray":[B
    :cond_0
    new-array v1, v0, [B

    .line 406
    .local v1, "inputArray":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 407
    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v1

    .line 410
    .local v1, "outputArray":[B
    :goto_0
    if-eqz v1, :cond_1

    array-length v2, v1

    nop

    .line 411
    .local v2, "outputSize":I
    :cond_1
    if-lez v2, :cond_2

    .line 412
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 414
    .local v3, "outputBufferAvailable":I
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    goto :goto_1

    .line 415
    :catch_0
    move-exception v4

    .line 416
    .local v4, "e":Ljava/nio/BufferOverflowException;
    new-instance v5, Ljavax/crypto/ShortBufferException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Output buffer too small. Produced: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 421
    .end local v3    # "outputBufferAvailable":I
    .end local v4    # "e":Ljava/nio/BufferOverflowException;
    :cond_2
    :goto_1
    return v2

    .line 394
    .end local v0    # "inputSize":I
    .end local v1    # "outputArray":[B
    .end local v2    # "outputSize":I
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineUpdate([BII[BI)I
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 374
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v0

    .line 375
    .local v0, "outputCopy":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 376
    return v1

    .line 378
    :cond_0
    array-length v2, p4

    sub-int/2addr v2, p5

    .line 379
    .local v2, "outputAvailable":I
    array-length v3, v0

    if-gt v3, v2, :cond_1

    .line 383
    array-length v3, v0

    invoke-static {v0, v1, p4, p5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 384
    array-length v1, v0

    return v1

    .line 380
    :cond_1
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output buffer too short. Produced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final engineUpdate([BII)[B
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 321
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 322
    return-object v1

    .line 325
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    nop

    .line 331
    if-nez p3, :cond_1

    .line 332
    return-object v1

    .line 337
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    .line 338
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object v0
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 342
    .local v0, "output":[B
    nop

    .line 341
    nop

    .line 344
    array-length v2, v0

    if-nez v2, :cond_2

    .line 345
    return-object v1

    .line 348
    :cond_2
    return-object v0

    .line 339
    .end local v0    # "output":[B
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/security/KeyStoreException;
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 341
    return-object v1

    .line 326
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 327
    .local v0, "e":Ljava/security/GeneralSecurityException;
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 328
    return-object v1
.end method

.method protected final engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 462
    if-eqz p1, :cond_2

    .line 465
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    return-void

    .line 472
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 474
    .local v0, "input":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 475
    .local v1, "inputOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 476
    .local v2, "inputLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 478
    .end local v0    # "input":[B
    .end local v1    # "inputOffset":I
    .end local v2    # "inputLen":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 479
    .restart local v0    # "input":[B
    const/4 v1, 0x0

    .line 480
    .restart local v1    # "inputOffset":I
    array-length v2, v0

    .line 481
    .restart local v2    # "inputLen":I
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 483
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdateAAD([BII)V

    .line 484
    return-void

    .line 463
    .end local v0    # "input":[B
    .end local v1    # "inputOffset":I
    .end local v2    # "inputLen":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineUpdateAAD([BII)V
    .locals 4
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 426
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 427
    return-void

    .line 431
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 435
    nop

    .line 437
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    if-nez v0, :cond_4

    .line 442
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_3

    .line 448
    :try_start_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object v0
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 452
    .local v0, "output":[B
    nop

    .line 451
    nop

    .line 454
    if-eqz v0, :cond_2

    array-length v1, v0

    if-gtz v1, :cond_1

    goto :goto_0

    .line 455
    :cond_1
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AAD update unexpectedly produced output: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    :cond_2
    :goto_0
    return-void

    .line 449
    .end local v0    # "output":[B
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Landroid/security/KeyStoreException;
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 451
    return-void

    .line 443
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This cipher does not support AAD"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AAD can only be provided before Cipher.update is invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :catch_1
    move-exception v0

    .line 433
    .local v0, "e":Ljava/security/GeneralSecurityException;
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 434
    return-void
.end method

.method protected final engineWrap(Ljava/security/Key;)[B
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 584
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    if-eqz v0, :cond_a

    .line 588
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 593
    if-eqz p1, :cond_8

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, "encoded":[B
    instance-of v1, p1, Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_1

    .line 598
    const-string v1, "RAW"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 601
    :cond_0
    if-nez v0, :cond_5

    .line 603
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 604
    .local v1, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    move-object v2, p1

    check-cast v2, Ljavax/crypto/SecretKey;

    const-class v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 605
    invoke-virtual {v1, v2, v3}, Ljavax/crypto/SecretKeyFactory;->getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v2

    check-cast v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 607
    .local v2, "spec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v2}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 612
    .end local v1    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    goto/16 :goto_0

    .line 608
    :catch_0
    move-exception v1

    .line 609
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Failed to wrap key because it does not export its key material"

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 614
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_3

    .line 615
    const-string v1, "PKCS8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 616
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 618
    :cond_2
    if-nez v0, :cond_5

    .line 620
    :try_start_1
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 621
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    const-class v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 622
    invoke-virtual {v1, p1, v2}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 623
    .local v2, "spec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v2}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    .line 628
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "spec":Ljava/security/spec/PKCS8EncodedKeySpec;
    goto :goto_0

    .line 624
    :catch_1
    move-exception v1

    .line 625
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Failed to wrap key because it does not export its key material"

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 630
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_3
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_7

    .line 631
    const-string v1, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 632
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 634
    :cond_4
    if-nez v0, :cond_5

    .line 636
    :try_start_2
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 637
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    const-class v2, Ljava/security/spec/X509EncodedKeySpec;

    .line 638
    invoke-virtual {v1, p1, v2}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/X509EncodedKeySpec;

    .line 639
    .local v2, "spec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v2}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v3

    .line 644
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "spec":Ljava/security/spec/X509EncodedKeySpec;
    goto :goto_0

    .line 640
    :catch_2
    move-exception v1

    .line 641
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Failed to wrap key because it does not export its key material"

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 650
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    .line 656
    const/4 v1, 0x0

    :try_start_3
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v1
    :try_end_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v1

    .line 657
    :catch_3
    move-exception v1

    .line 658
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v2, v1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/crypto/IllegalBlockSizeException;

    throw v2

    .line 651
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :cond_6
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Failed to wrap key because it does not export its key material"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 647
    :cond_7
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    .end local v0    # "encoded":[B
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initilized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 742
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 743
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 744
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    .end local v0    # "operationToken":Landroid/os/IBinder;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 748
    nop

    .line 749
    return-void

    .line 747
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected abstract getAdditionalEntropyAmountForBegin()I
.end method

.method protected abstract getAdditionalEntropyAmountForFinish()I
.end method

.method protected final getConsumedInputSizeBytes()J
    .locals 2

    .line 785
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->getConsumedInputSizeBytes()J

    move-result-wide v0

    return-wide v0

    .line 786
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final getKeyStore()Landroid/security/KeyStore;
    .locals 1

    .line 781
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method protected final getKeymasterPurposeOverride()I
    .locals 1

    .line 768
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    return v0
.end method

.method public final getOperationHandle()J
    .locals 2

    .line 753
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    return-wide v0
.end method

.method protected final getProducedOutputSizeBytes()J
    .locals 2

    .line 792
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->getProducedOutputSizeBytes()J

    move-result-wide v0

    return-wide v0

    .line 793
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract initAlgorithmSpecificParameters()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract initKey(ILjava/security/Key;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected final isEncrypting()Z
    .locals 1

    .line 776
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    return v0
.end method

.method protected abstract loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
.end method

.method protected resetAll()V
    .locals 5

    .line 186
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 187
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    .line 190
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 191
    const/4 v2, -0x1

    iput v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 192
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 193
    iput-object v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 194
    iput-object v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 195
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    .line 196
    iput-object v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 197
    iput-object v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 198
    iput-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 199
    iput-object v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 200
    return-void
.end method

.method protected resetWhilePreservingInitState()V
    .locals 4

    .line 212
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 213
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    .line 216
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 217
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    .line 218
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 219
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 220
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 221
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 222
    return-void
.end method

.method protected final setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .locals 0
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;

    .line 757
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 758
    return-void
.end method

.method protected final setKeymasterPurposeOverride(I)V
    .locals 0
    .param p1, "keymasterPurpose"    # I

    .line 764
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 765
    return-void
.end method
