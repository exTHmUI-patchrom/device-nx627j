.class public Landroid/security/keystore/StrongBoxUnavailableException;
.super Ljava/security/ProviderException;
.source "StrongBoxUnavailableException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/security/ProviderException;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "No StrongBox available"

    const/16 v2, -0x44

    invoke-direct {v0, v2, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 45
    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method
