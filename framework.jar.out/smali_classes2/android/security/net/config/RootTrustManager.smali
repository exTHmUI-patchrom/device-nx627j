.class public Landroid/security/net/config/RootTrustManager;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "RootTrustManager.java"


# instance fields
.field private final mConfig:Landroid/security/net/config/ApplicationConfig;


# direct methods
.method public constructor <init>(Landroid/security/net/config/ApplicationConfig;)V
    .locals 2
    .param p1, "config"    # Landroid/security/net/config/ApplicationConfig;

    .line 43
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    .line 48
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "config must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 56
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 2
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 65
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 66
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 2
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 74
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 75
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
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

    .line 126
    if-nez p3, :cond_1

    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Domain specific configurations require that the hostname be provided"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0, p3}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 131
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 116
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 117
    return-void

    .line 111
    .end local v0    # "config":Landroid/security/net/config/NetworkSecurityConfig;
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Domain specific configurations require that hostname aware checkServerTrusted(X509Certificate[], String, String) is used"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 5
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 80
    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    .line 81
    move-object v0, p3

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 82
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 83
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v1, :cond_0

    .line 86
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "host":Ljava/lang/String;
    iget-object v3, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v3, v2}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v3

    .line 88
    .local v3, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v3}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 89
    .end local v0    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "config":Landroid/security/net/config/NetworkSecurityConfig;
    goto :goto_0

    .line 84
    .restart local v0    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local v1    # "session":Ljavax/net/ssl/SSLSession;
    :cond_0
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Not in handshake; no session available"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    .end local v0    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/security/net/config/RootTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 4
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 98
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 99
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "host":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v2, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v2

    .line 104
    .local v2, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v2}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 105
    return-void

    .line 100
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "config":Landroid/security/net/config/NetworkSecurityConfig;
    :cond_0
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Not in handshake; no session available"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .line 139
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 140
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/net/config/NetworkSecurityTrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public isSameTrustConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "hostname1"    # Ljava/lang/String;
    .param p2, "hostname2"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0, p1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    iget-object v1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    .line 151
    invoke-virtual {v1, p2}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 150
    return v0
.end method
