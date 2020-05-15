.class public Lcom/android/server/wifi/hotspot2/OsuServerConnection;
.super Ljava/lang/Object;
.source "OsuServerConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;
    }
.end annotation


# static fields
.field private static final DNS_NAME:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OsuServerConnection"


# instance fields
.field private mNetwork:Landroid/net/Network;

.field private mOsuServerCallbacks:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;

.field private mSetupComplete:Z

.field private mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mTrustManager:Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;

.field private mUrl:Ljava/net/URL;

.field private mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mSetupComplete:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/hotspot2/OsuServerConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    .line 43
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/hotspot2/OsuServerConnection;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mOsuServerCallbacks:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/hotspot2/OsuServerConnection;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mUrl:Ljava/net/URL;

    return-object v0
.end method


# virtual methods
.method public canValidateServer()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mSetupComplete:Z

    return v0
.end method

.method public cleanup()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 145
    return-void
.end method

.method public connect(Ljava/net/URL;Landroid/net/Network;)Z
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "network"    # Landroid/net/Network;

    .line 111
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mNetwork:Landroid/net/Network;

    .line 112
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mUrl:Ljava/net/URL;

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mNetwork:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mUrl:Ljava/net/URL;

    invoke-virtual {v0, v1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 116
    .local v0, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 117
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    nop

    .line 121
    nop

    .line 123
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 124
    const/4 v1, 0x1

    return v1

    .line 118
    .end local v0    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "OsuServerConnection"

    const-string v2, "Unable to establish a URL connection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 121
    const/4 v1, 0x0

    return v1
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 98
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mVerboseLoggingEnabled:Z

    .line 99
    return-void
.end method

.method public init(Ljavax/net/ssl/SSLContext;Lcom/android/org/conscrypt/TrustManagerImpl;)V
    .locals 4
    .param p1, "tlsContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "trustManagerImpl"    # Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 70
    if-nez p1, :cond_0

    .line 71
    return-void

    .line 74
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;-><init>(Lcom/android/server/wifi/hotspot2/OsuServerConnection;Lcom/android/org/conscrypt/TrustManagerImpl;)V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mTrustManager:Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;

    .line 75
    const/4 v0, 0x1

    new-array v1, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mTrustManager:Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 76
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 82
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mSetupComplete:Z

    .line 83
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/security/KeyManagementException;
    const-string v1, "OsuServerConnection"

    const-string v2, "Initialization failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    .line 80
    return-void
.end method

.method public setEventCallback(Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;

    .line 61
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mOsuServerCallbacks:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;

    .line 62
    return-void
.end method

.method public validateProvider(Ljava/lang/String;)Z
    .locals 3
    .param p1, "friendlyName"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->mTrustManager:Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->getProviderCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 133
    .local v0, "providerCert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    .line 134
    const-string v1, "OsuServerConnection"

    const-string v2, "Provider doesn\'t have valid certs"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v1, 0x0

    return v1

    .line 137
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
