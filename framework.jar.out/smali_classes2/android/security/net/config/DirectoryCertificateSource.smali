.class abstract Landroid/security/net/config/DirectoryCertificateSource;
.super Ljava/lang/Object;
.source "DirectoryCertificateSource.java"

# interfaces
.implements Landroid/security/net/config/CertificateSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/DirectoryCertificateSource$CertSelector;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DirectoryCertificateSrc"


# instance fields
.field private final mCertFactory:Ljava/security/cert/CertificateFactory;

.field private mCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDir:Ljava/io/File;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "caDir"    # Ljava/io/File;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/DirectoryCertificateSource;->mLock:Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    .line 58
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    nop

    .line 62
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private findCert(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "subj"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "selector"    # Landroid/security/net/config/DirectoryCertificateSource$CertSelector;

    .line 171
    invoke-direct {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "hash":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_5

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    goto :goto_2

    .line 177
    :cond_0
    invoke-virtual {p0, v2}, Landroid/security/net/config/DirectoryCertificateSource;->isCertMarkedAsRemoved(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    goto :goto_1

    .line 180
    :cond_1
    invoke-direct {p0, v2}, Landroid/security/net/config/DirectoryCertificateSource;->readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 181
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    if-nez v3, :cond_2

    .line 182
    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 185
    goto :goto_1

    .line 187
    :cond_3
    invoke-interface {p2, v3}, Landroid/security/net/config/DirectoryCertificateSource$CertSelector;->match(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 188
    return-object v3

    .line 172
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "index":I
    :cond_5
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private findCerts(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/util/Set;
    .locals 6
    .param p1, "subj"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "selector"    # Landroid/security/net/config/DirectoryCertificateSource$CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/x500/X500Principal;",
            "Landroid/security/net/config/DirectoryCertificateSource$CertSelector;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "hash":Ljava/lang/String;
    const/4 v1, 0x0

    .line 145
    .local v1, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_6

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    goto :goto_2

    .line 150
    :cond_0
    invoke-virtual {p0, v3}, Landroid/security/net/config/DirectoryCertificateSource;->isCertMarkedAsRemoved(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    goto :goto_1

    .line 153
    :cond_1
    invoke-direct {p0, v3}, Landroid/security/net/config/DirectoryCertificateSource;->readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 154
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    if-nez v4, :cond_2

    .line 155
    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 158
    goto :goto_1

    .line 160
    :cond_3
    invoke-interface {p2, v4}, Landroid/security/net/config/DirectoryCertificateSource$CertSelector;->match(Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 161
    if-nez v1, :cond_4

    .line 162
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v5

    .line 164
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "index":I
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    move-object v2, v1

    goto :goto_3

    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    :goto_3
    return-object v2
.end method

.method private getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljavax/security/auth/x500/X500Principal;

    .line 195
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I

    move-result v0

    .line 196
    .local v0, "hash":I
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/Hex;->intToHexString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p1, "file"    # Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    move-object v1, v0

    .line 202
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 203
    iget-object v2, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 203
    return-object v2

    .line 208
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "DirectoryCertificateSrc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read certificate from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    nop

    .line 208
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 206
    return-object v0

    .line 208
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method


# virtual methods
.method public findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    new-instance v1, Landroid/security/net/config/DirectoryCertificateSource$3;

    invoke-direct {v1, p0, p1}, Landroid/security/net/config/DirectoryCertificateSource$3;-><init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->findCerts(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 103
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    new-instance v1, Landroid/security/net/config/DirectoryCertificateSource$2;

    invoke-direct {v1, p0, p1}, Landroid/security/net/config/DirectoryCertificateSource$2;-><init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->findCert(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 93
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    new-instance v1, Landroid/security/net/config/DirectoryCertificateSource$1;

    invoke-direct {v1, p0, p1}, Landroid/security/net/config/DirectoryCertificateSource$1;-><init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->findCert(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Landroid/security/net/config/DirectoryCertificateSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 74
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 75
    .local v1, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v2, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    iget-object v2, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 77
    .local v5, "caFile":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/security/net/config/DirectoryCertificateSource;->isCertMarkedAsRemoved(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 78
    goto :goto_1

    .line 80
    :cond_1
    invoke-direct {p0, v5}, Landroid/security/net/config/DirectoryCertificateSource;->readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 81
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_2

    .line 82
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v5    # "caFile":Ljava/lang/String;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    :cond_3
    iput-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    .line 87
    iget-object v2, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    monitor-exit v0

    return-object v2

    .line 88
    .end local v1    # "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleTrustStorageUpdate()V
    .locals 2

    .line 133
    iget-object v0, p0, Landroid/security/net/config/DirectoryCertificateSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    .line 135
    monitor-exit v0

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract isCertMarkedAsRemoved(Ljava/lang/String;)Z
.end method
