.class public Landroid/security/keystore/AndroidKeyStorePrivateKey;
.super Landroid/security/keystore/AndroidKeyStoreKey;
.source "AndroidKeyStorePrivateKey.java"

# interfaces
.implements Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 30
    return-void
.end method
