.class public Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;
.super Ljava/lang/Object;
.source "PasspointObjectFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 2
    .param p1, "tlsVersion"    # Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "tlsContext":Ljavax/net/ssl/SSLContext;
    :try_start_0
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 158
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-object v0
.end method

.method public getTrustManagerImpl(Ljava/security/KeyStore;)Lcom/android/org/conscrypt/TrustManagerImpl;
    .locals 1
    .param p1, "ks"    # Ljava/security/KeyStore;

    .line 168
    new-instance v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;)V

    return-object v0
.end method

.method public makeANQPRequestManager(Lcom/android/server/wifi/hotspot2/PasspointEventHandler;Lcom/android/server/wifi/Clock;)Lcom/android/server/wifi/hotspot2/ANQPRequestManager;
    .locals 1
    .param p1, "handler"    # Lcom/android/server/wifi/hotspot2/PasspointEventHandler;
    .param p2, "clock"    # Lcom/android/server/wifi/Clock;

    .line 94
    new-instance v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;-><init>(Lcom/android/server/wifi/hotspot2/PasspointEventHandler;Lcom/android/server/wifi/Clock;)V

    return-object v0
.end method

.method public makeAnqpCache(Lcom/android/server/wifi/Clock;)Lcom/android/server/wifi/hotspot2/AnqpCache;
    .locals 1
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;

    .line 83
    new-instance v0, Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/hotspot2/AnqpCache;-><init>(Lcom/android/server/wifi/Clock;)V

    return-object v0
.end method

.method public makeCertificateVerifier()Lcom/android/server/wifi/hotspot2/CertificateVerifier;
    .locals 1

    .line 103
    new-instance v0, Lcom/android/server/wifi/hotspot2/CertificateVerifier;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/CertificateVerifier;-><init>()V

    return-object v0
.end method

.method public makeOsuNetworkConnection(Landroid/content/Context;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    new-instance v0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeOsuServerConnection()Lcom/android/server/wifi/hotspot2/OsuServerConnection;
    .locals 1

    .line 132
    new-instance v0, Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;-><init>()V

    return-object v0
.end method

.method public makePasspointConfigStoreData(Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;)Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;
    .locals 1
    .param p1, "keyStore"    # Lcom/android/server/wifi/WifiKeyStore;
    .param p2, "simAccessor"    # Lcom/android/server/wifi/SIMAccessor;
    .param p3, "dataSource"    # Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    .line 73
    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;-><init>(Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;)V

    return-object v0
.end method

.method public makePasspointEventHandler(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;)Lcom/android/server/wifi/hotspot2/PasspointEventHandler;
    .locals 1
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "callbacks"    # Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;

    .line 47
    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;)V

    return-object v0
.end method

.method public makePasspointProvider(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JI)Lcom/android/server/wifi/hotspot2/PasspointProvider;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .param p2, "keyStore"    # Lcom/android/server/wifi/WifiKeyStore;
    .param p3, "simAccessor"    # Lcom/android/server/wifi/SIMAccessor;
    .param p4, "providerId"    # J
    .param p6, "creatorUid"    # I

    .line 60
    new-instance v7, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/hotspot2/PasspointProvider;-><init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JI)V

    return-object v7
.end method

.method public makePasspointProvisioner(Landroid/content/Context;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-direct {v0, p1, p0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;-><init>(Landroid/content/Context;Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;)V

    return-object v0
.end method

.method public makeWfaKeyStore()Lcom/android/server/wifi/hotspot2/WfaKeyStore;
    .locals 1

    .line 142
    new-instance v0, Lcom/android/server/wifi/hotspot2/WfaKeyStore;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/WfaKeyStore;-><init>()V

    return-object v0
.end method
