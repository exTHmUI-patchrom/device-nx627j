.class public final Landroid/security/net/config/NetworkSecurityConfig;
.super Ljava/lang/Object;
.source "NetworkSecurityConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/NetworkSecurityConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CLEARTEXT_TRAFFIC_PERMITTED:Z = true

.field public static final DEFAULT_HSTS_ENFORCED:Z = false


# instance fields
.field private mAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/security/net/config/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnchorsLock:Ljava/lang/Object;

.field private final mCertificatesEntryRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation
.end field

.field private final mCleartextTrafficPermitted:Z

.field private final mHstsEnforced:Z

.field private final mPins:Landroid/security/net/config/PinSet;

.field private mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

.field private final mTrustManagerLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(ZZLandroid/security/net/config/PinSet;Ljava/util/List;)V
    .locals 2
    .param p1, "cleartextTrafficPermitted"    # Z
    .param p2, "hstsEnforced"    # Z
    .param p3, "pins"    # Landroid/security/net/config/PinSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/security/net/config/PinSet;",
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p4, "certificatesEntryRefs":Ljava/util/List;, "Ljava/util/List<Landroid/security/net/config/CertificatesEntryRef;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchorsLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManagerLock:Ljava/lang/Object;

    .line 53
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCleartextTrafficPermitted:Z

    .line 54
    iput-boolean p2, p0, Landroid/security/net/config/NetworkSecurityConfig;->mHstsEnforced:Z

    .line 55
    iput-object p3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mPins:Landroid/security/net/config/PinSet;

    .line 56
    iput-object p4, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    .line 60
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    new-instance v1, Landroid/security/net/config/NetworkSecurityConfig$1;

    invoke-direct {v1, p0}, Landroid/security/net/config/NetworkSecurityConfig$1;-><init>(Landroid/security/net/config/NetworkSecurityConfig;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    return-void
.end method

.method synthetic constructor <init>(ZZLandroid/security/net/config/PinSet;Ljava/util/List;Landroid/security/net/config/NetworkSecurityConfig$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Z
    .param p3, "x2"    # Landroid/security/net/config/PinSet;
    .param p4, "x3"    # Ljava/util/List;
    .param p5, "x4"    # Landroid/security/net/config/NetworkSecurityConfig$1;

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/security/net/config/NetworkSecurityConfig;-><init>(ZZLandroid/security/net/config/PinSet;Ljava/util/List;)V

    return-void
.end method

.method public static getDefaultBuilder(Landroid/content/pm/ApplicationInfo;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 5
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 182
    new-instance v0, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;-><init>()V

    .line 183
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    new-instance v2, Landroid/security/net/config/CertificatesEntryRef;

    .line 186
    invoke-static {}, Landroid/security/net/config/SystemCertificateSource;->getInstance()Landroid/security/net/config/SystemCertificateSource;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;Z)V

    .line 185
    invoke-virtual {v0, v2}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    .line 187
    .local v0, "builder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_0

    iget v2, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 189
    .local v2, "cleartextTrafficPermitted":Z
    :goto_0
    invoke-virtual {v0, v2}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 192
    iget v3, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x17

    if-gt v3, v4, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    new-instance v3, Landroid/security/net/config/CertificatesEntryRef;

    .line 195
    invoke-static {}, Landroid/security/net/config/UserCertificateSource;->getInstance()Landroid/security/net/config/UserCertificateSource;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;Z)V

    .line 194
    invoke-virtual {v0, v3}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 197
    :cond_1
    return-object v0
.end method


# virtual methods
.method public findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 4
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

    .line 144
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 145
    .local v0, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/net/config/CertificatesEntryRef;

    .line 146
    .local v2, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v2, p1}, Landroid/security/net/config/CertificatesEntryRef;->findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 147
    .end local v2    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    goto :goto_0

    .line 148
    :cond_0
    return-object v0
.end method

.method public findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 133
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/net/config/CertificatesEntryRef;

    .line 134
    .local v1, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v1, p1}, Landroid/security/net/config/CertificatesEntryRef;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v2

    .line 135
    .local v2, "anchor":Landroid/security/net/config/TrustAnchor;
    if-eqz v2, :cond_0

    .line 136
    return-object v2

    .line 138
    .end local v1    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    .end local v2    # "anchor":Landroid/security/net/config/TrustAnchor;
    :cond_0
    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 122
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/net/config/CertificatesEntryRef;

    .line 123
    .local v1, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v1, p1}, Landroid/security/net/config/CertificatesEntryRef;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v2

    .line 124
    .local v2, "anchor":Landroid/security/net/config/TrustAnchor;
    if-eqz v2, :cond_0

    .line 125
    return-object v2

    .line 127
    .end local v1    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    .end local v2    # "anchor":Landroid/security/net/config/TrustAnchor;
    :cond_0
    goto :goto_0

    .line 128
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPins()Landroid/security/net/config/PinSet;
    .locals 1

    .line 108
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mPins:Landroid/security/net/config/PinSet;

    return-object v0
.end method

.method public getTrustAnchors()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/security/net/config/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchorsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 82
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 83
    .local v1, "anchorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;Landroid/security/net/config/TrustAnchor;>;"
    iget-object v2, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/net/config/CertificatesEntryRef;

    .line 84
    .local v3, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v3}, Landroid/security/net/config/CertificatesEntryRef;->getTrustAnchors()Ljava/util/Set;

    move-result-object v4

    .line 85
    .local v4, "anchors":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/TrustAnchor;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/security/net/config/TrustAnchor;

    .line 86
    .local v6, "anchor":Landroid/security/net/config/TrustAnchor;
    iget-object v7, v6, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    .line 87
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 88
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v6    # "anchor":Landroid/security/net/config/TrustAnchor;
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    goto :goto_1

    .line 91
    .end local v3    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    .end local v4    # "anchors":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/TrustAnchor;>;"
    :cond_2
    goto :goto_0

    .line 92
    :cond_3
    new-instance v2, Landroid/util/ArraySet;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 93
    .local v2, "anchors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/security/net/config/TrustAnchor;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 94
    iput-object v2, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    .line 95
    iget-object v3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    monitor-exit v0

    return-object v3

    .line 96
    .end local v1    # "anchorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;Landroid/security/net/config/TrustAnchor;>;"
    .end local v2    # "anchors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/security/net/config/TrustAnchor;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;
    .locals 2

    .line 112
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Landroid/security/net/config/NetworkSecurityTrustManager;

    invoke-direct {v1, p0}, Landroid/security/net/config/NetworkSecurityTrustManager;-><init>(Landroid/security/net/config/NetworkSecurityConfig;)V

    iput-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

    .line 116
    :cond_0
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

    monitor-exit v0

    return-object v1

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleTrustStorageUpdate()V
    .locals 3

    .line 152
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchorsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    .line 154
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/net/config/CertificatesEntryRef;

    .line 155
    .local v2, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v2}, Landroid/security/net/config/CertificatesEntryRef;->handleTrustStorageUpdate()V

    .line 156
    .end local v2    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    goto :goto_0

    .line 157
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {p0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->handleTrustStorageUpdate()V

    .line 159
    return-void

    .line 157
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isCleartextTrafficPermitted()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCleartextTrafficPermitted:Z

    return v0
.end method

.method public isHstsEnforced()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mHstsEnforced:Z

    return v0
.end method
