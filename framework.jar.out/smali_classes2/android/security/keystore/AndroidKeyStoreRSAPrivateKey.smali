.class public Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;
.super Landroid/security/keystore/AndroidKeyStorePrivateKey;
.source "AndroidKeyStoreRSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAKey;


# instance fields
.field private final mModulus:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/math/BigInteger;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "modulus"    # Ljava/math/BigInteger;

    .line 33
    const-string v0, "RSA"

    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore/AndroidKeyStorePrivateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    iput-object p3, p0, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    .line 35
    return-void
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 39
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    return-object v0
.end method
