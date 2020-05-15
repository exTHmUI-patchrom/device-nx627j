.class public Landroid/security/keystore/AndroidKeyStorePublicKey;
.super Landroid/security/keystore/AndroidKeyStoreKey;
.source "AndroidKeyStorePublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final mEncoded:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[B)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "x509EncodedForm"    # [B

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    invoke-static {p4}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 56
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 57
    return v0

    .line 59
    :cond_0
    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 60
    return v2

    .line 62
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    .line 63
    return v2

    .line 65
    :cond_2
    move-object v1, p1

    check-cast v1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    .line 66
    .local v1, "other":Landroid/security/keystore/AndroidKeyStorePublicKey;
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    iget-object v4, v1, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    .line 67
    return v2

    .line 69
    :cond_3
    return v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 43
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 48
    const/16 v0, 0x1f

    .line 49
    .local v0, "prime":I
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreKey;->hashCode()I

    move-result v1

    .line 50
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int/2addr v2, v1

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v2, v3

    .line 51
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method
