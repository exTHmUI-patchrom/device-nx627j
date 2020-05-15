.class abstract Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;
.super Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;
.source "AndroidKeyStoreECDSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA512;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA384;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA256;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA224;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA1;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE;
    }
.end annotation


# instance fields
.field private mGroupSizeBits:I

.field private final mKeymasterDigest:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "keymasterDigest"    # I

    .line 145
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;-><init>()V

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    .line 146
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mKeymasterDigest:I

    .line 147
    return-void
.end method


# virtual methods
.method protected final addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 2
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .line 187
    const v0, 0x10000002

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 188
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mKeymasterDigest:I

    const v1, 0x20000005

    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 189
    return-void
.end method

.method protected final getAdditionalEntropyAmountForSign()I
    .locals 1

    .line 193
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected final getGroupSizeBits()I
    .locals 2

    .line 197
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 200
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    return v0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .locals 7
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 151
    const-string v0, "EC"

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 157
    .local v0, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v1

    .line 158
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v5

    .line 157
    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    .line 159
    .local v1, "errorCode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 162
    const v2, 0x30000003

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v5

    .line 163
    .local v5, "keySizeBits":J
    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    .line 165
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v5, v2

    if-gtz v2, :cond_0

    .line 168
    long-to-int v2, v5

    iput v2, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    .line 170
    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    .line 171
    return-void

    .line 166
    :cond_0
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bits"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_1
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Size of key not known"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    .end local v5    # "keySizeBits":J
    :cond_2
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;II)Ljava/security/InvalidKeyException;

    move-result-object v2

    throw v2

    .line 152
    .end local v0    # "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .end local v1    # "errorCode":I
    :cond_3
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final resetAll()V
    .locals 1

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    .line 176
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    .line 177
    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .locals 0

    .line 181
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    .line 182
    return-void
.end method
