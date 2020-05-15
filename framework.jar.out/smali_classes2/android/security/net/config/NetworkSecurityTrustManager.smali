.class public Landroid/security/net/config/NetworkSecurityTrustManager;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "NetworkSecurityTrustManager.java"


# instance fields
.field private final mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

.field private mIssuers:[Ljava/security/cert/X509Certificate;

.field private final mIssuersLock:Ljava/lang/Object;

.field private final mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor <init>(Landroid/security/net/config/NetworkSecurityConfig;)V
    .locals 4
    .param p1, "config"    # Landroid/security/net/config/NetworkSecurityConfig;

    .line 49
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuersLock:Ljava/lang/Object;

    .line 50
    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 55
    :try_start_0
    new-instance v0, Landroid/security/net/config/TrustedCertificateStoreAdapter;

    invoke-direct {v0, p1}, Landroid/security/net/config/TrustedCertificateStoreAdapter;-><init>(Landroid/security/net/config/NetworkSecurityConfig;)V

    .line 58
    .local v0, "certStore":Landroid/security/net/config/TrustedCertificateStoreAdapter;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 59
    .local v1, "store":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 60
    new-instance v3, Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;)V

    iput-object v3, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "certStore":Landroid/security/net/config/TrustedCertificateStoreAdapter;
    .end local v1    # "store":Ljava/security/KeyStore;
    nop

    .line 64
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "config must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPins(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 119
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getPins()Landroid/security/net/config/PinSet;

    move-result-object v0

    .line 120
    .local v0, "pinSet":Landroid/security/net/config/PinSet;
    iget-object v1, v0, Landroid/security/net/config/PinSet;->pins:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/security/net/config/PinSet;->expirationTime:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_5

    .line 122
    invoke-direct {p0, p1}, Landroid/security/net/config/NetworkSecurityTrustManager;->isPinningEnforced(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 125
    :cond_0
    invoke-virtual {v0}, Landroid/security/net/config/PinSet;->getPinAlgorithms()Ljava/util/Set;

    move-result-object v1

    .line 126
    .local v1, "pinAlgorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Landroid/util/ArrayMap;

    .line 127
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 128
    .local v2, "digestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/MessageDigest;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 129
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 130
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    .line 131
    .local v5, "encodedSPKI":[B
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 132
    .local v7, "algorithm":Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/MessageDigest;

    .line 133
    .local v8, "md":Ljava/security/MessageDigest;
    if-nez v8, :cond_1

    .line 135
    :try_start_0
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v9

    .line 138
    nop

    .line 139
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 136
    :catch_0
    move-exception v6

    .line 137
    .local v6, "e":Ljava/security/GeneralSecurityException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 141
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    :goto_2
    iget-object v9, v0, Landroid/security/net/config/PinSet;->pins:Ljava/util/Set;

    new-instance v10, Landroid/security/net/config/Pin;

    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v11

    invoke-direct {v10, v7, v11}, Landroid/security/net/config/Pin;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 142
    return-void

    .line 144
    .end local v7    # "algorithm":Ljava/lang/String;
    .end local v8    # "md":Ljava/security/MessageDigest;
    :cond_2
    goto :goto_1

    .line 128
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "encodedSPKI":[B
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 148
    .end local v3    # "i":I
    :cond_4
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "Pin verification failed"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    .end local v1    # "pinAlgorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "digestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/MessageDigest;>;"
    :cond_5
    :goto_3
    return-void
.end method

.method private isPinningEnforced(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 152
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    return v0

    .line 155
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 156
    .local v0, "anchorCert":Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 157
    invoke-virtual {v1, v0}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v1

    .line 158
    .local v1, "chainAnchor":Landroid/security/net/config/TrustAnchor;
    if-eqz v1, :cond_1

    .line 161
    iget-boolean v2, v1, Landroid/security/net/config/TrustAnchor;->overridesPins:Z

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 159
    :cond_1
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Trusted chain does not end in a TrustAnchor"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 76
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 82
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "trustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    .line 115
    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 88
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 94
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "trustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    .line 96
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 102
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, "trustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    .line 104
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 8

    .line 168
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_1

    .line 170
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v1}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    .line 171
    .local v1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/TrustAnchor;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    .line 172
    .local v2, "issuers":[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .line 173
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/net/config/TrustAnchor;

    .line 174
    .local v5, "anchor":Landroid/security/net/config/TrustAnchor;
    add-int/lit8 v6, v3, 0x1

    .local v6, "i":I
    iget-object v7, v5, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    aput-object v7, v2, v3

    .line 175
    .end local v3    # "i":I
    .end local v5    # "anchor":Landroid/security/net/config/TrustAnchor;
    nop

    .line 173
    move v3, v6

    goto :goto_0

    .line 176
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_0
    iput-object v2, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    .line 178
    .end local v1    # "anchors":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/TrustAnchor;>;"
    .end local v2    # "issuers":[Ljava/security/cert/X509Certificate;
    .end local v3    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    monitor-exit v0

    return-object v1

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleTrustStorageUpdate()V
    .locals 2

    .line 183
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    .line 185
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->handleTrustStorageUpdate()V

    .line 186
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
