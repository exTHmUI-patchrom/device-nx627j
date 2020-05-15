.class public Lcom/android/server/wifi/hotspot2/CertificateVerifier;
.super Ljava/lang/Object;
.source "CertificateVerifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verifyCaCert(Ljava/security/cert/X509Certificate;)V
    .locals 6
    .param p1, "caCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 48
    .local v0, "factory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljava/security/cert/CertPathValidator;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v1

    .line 49
    .local v1, "validator":Ljava/security/cert/CertPathValidator;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 50
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v2

    .line 51
    .local v2, "path":Ljava/security/cert/CertPath;
    const-string v4, "AndroidCAStore"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 52
    .local v4, "ks":Ljava/security/KeyStore;
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 53
    new-instance v5, Ljava/security/cert/PKIXParameters;

    invoke-direct {v5, v4}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    .line 54
    .local v5, "params":Ljava/security/cert/PKIXParameters;
    invoke-virtual {v5, v3}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 55
    invoke-virtual {v1, v2, v5}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    .line 56
    return-void
.end method
