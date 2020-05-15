.class public Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$DESede;
.super Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;
.source "AndroidKeyStoreKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESede"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    const/16 v0, 0x21

    const/16 v1, 0xa8

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;-><init>(II)V

    .line 66
    return-void
.end method
