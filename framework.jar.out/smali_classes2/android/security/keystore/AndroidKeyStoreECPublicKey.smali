.class public Landroid/security/keystore/AndroidKeyStoreECPublicKey;
.super Landroid/security/keystore/AndroidKeyStorePublicKey;
.source "AndroidKeyStoreECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;


# instance fields
.field private final mParams:Ljava/security/spec/ECParameterSpec;

.field private final mW:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/security/interfaces/ECPublicKey;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "info"    # Ljava/security/interfaces/ECPublicKey;

    .line 41
    invoke-interface {p3}, Ljava/security/interfaces/ECPublicKey;->getEncoded()[B

    move-result-object v3

    invoke-interface {p3}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-interface {p3}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;-><init>(Ljava/lang/String;I[BLjava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)V

    .line 42
    const-string v0, "X.509"

    invoke-interface {p3}, Ljava/security/interfaces/ECPublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key export format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-interface {p3}, Ljava/security/interfaces/ECPublicKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;I[BLjava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "x509EncodedForm"    # [B
    .param p4, "params"    # Ljava/security/spec/ECParameterSpec;
    .param p5, "w"    # Ljava/security/spec/ECPoint;

    .line 35
    const-string v0, "EC"

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/security/keystore/AndroidKeyStorePublicKey;-><init>(Ljava/lang/String;ILjava/lang/String;[B)V

    .line 36
    iput-object p4, p0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->mParams:Ljava/security/spec/ECParameterSpec;

    .line 37
    iput-object p5, p0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->mW:Ljava/security/spec/ECPoint;

    .line 38
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 50
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->mParams:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->mW:Ljava/security/spec/ECPoint;

    return-object v0
.end method
