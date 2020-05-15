.class public final Landroid/security/net/config/UserCertificateSource;
.super Landroid/security/net/config/DirectoryCertificateSource;
.source "UserCertificateSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/UserCertificateSource$NoPreloadHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 33
    new-instance v0, Ljava/io/File;

    .line 34
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "cacerts-added"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, v0}, Landroid/security/net/config/DirectoryCertificateSource;-><init>(Ljava/io/File;)V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/security/net/config/UserCertificateSource$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/security/net/config/UserCertificateSource$1;

    .line 27
    invoke-direct {p0}, Landroid/security/net/config/UserCertificateSource;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/security/net/config/UserCertificateSource;
    .locals 1

    .line 38
    invoke-static {}, Landroid/security/net/config/UserCertificateSource$NoPreloadHolder;->access$100()Landroid/security/net/config/UserCertificateSource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCertificates()Ljava/util/Set;
    .locals 1

    .line 27
    invoke-super {p0}, Landroid/security/net/config/DirectoryCertificateSource;->getCertificates()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleTrustStorageUpdate()V
    .locals 0

    .line 27
    invoke-super {p0}, Landroid/security/net/config/DirectoryCertificateSource;->handleTrustStorageUpdate()V

    return-void
.end method

.method protected isCertMarkedAsRemoved(Ljava/lang/String;)Z
    .locals 1
    .param p1, "caFile"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    return v0
.end method
