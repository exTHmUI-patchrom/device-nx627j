.class public Landroid/net/SSLCertificateSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLCertificateSocketFactory.java"


# static fields
.field private static final INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

.field private static final TAG:Ljava/lang/String; = "SSLCertificateSocketFactory"


# instance fields
.field private mAlpnProtocols:[B

.field private mChannelIdPrivateKey:Ljava/security/PrivateKey;

.field private final mHandshakeTimeoutMillis:I

.field private mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mKeyManagers:[Ljavax/net/ssl/KeyManager;

.field private mNpnProtocols:[B

.field private final mSecure:Z

.field private mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

.field private mTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Landroid/net/SSLCertificateSocketFactory$1;

    invoke-direct {v1}, Landroid/net/SSLCertificateSocketFactory$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "handshakeTimeoutMillis"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    .line 108
    return-void
.end method

.method private constructor <init>(ILandroid/net/SSLSessionCache;Z)V
    .locals 1
    .param p1, "handshakeTimeoutMillis"    # I
    .param p2, "cache"    # Landroid/net/SSLSessionCache;
    .param p3, "secure"    # Z

    .line 111
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 93
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 94
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 95
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    .line 96
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    .line 97
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    .line 98
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    .line 112
    iput p1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    .line 113
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Landroid/net/SSLSessionCache;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    :goto_0
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    .line 114
    iput-boolean p3, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    .line 115
    return-void
.end method

.method private static castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;

    .line 429
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    if-eqz v0, :cond_0

    .line 434
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    return-object v0

    .line 430
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket not created by this factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefault(I)Ljavax/net/SocketFactory;
    .locals 3
    .param p0, "handshakeTimeoutMillis"    # I

    .line 125
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method public static getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2
    .param p0, "handshakeTimeoutMillis"    # I
    .param p1, "cache"    # Landroid/net/SSLSessionCache;

    .line 138
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method private declared-synchronized getDelegate()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    monitor-enter p0

    .line 238
    :try_start_0
    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 252
    :cond_1
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 239
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    .line 240
    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v0, :cond_3

    .line 241
    const-string v0, "SSLCertificateSocketFactory"

    const-string v1, "*** BYPASSING SSL SECURITY CHECKS (socket.relaxsslcheck=yes) ***"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    :cond_3
    const-string v0, "SSLCertificateSocketFactory"

    const-string v1, "Bypassing SSL security checks at caller\'s request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_1
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    sget-object v1, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 247
    :cond_4
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/net/SSLCertificateSocketFactory;
    throw v0
.end method

.method public static getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 3
    .param p0, "handshakeTimeoutMillis"    # I
    .param p1, "cache"    # Landroid/net/SSLSessionCache;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    new-instance v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    new-instance v1, Landroid/net/SSLCertificateSocketFactory;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    invoke-direct {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v0
.end method

.method public static getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2
    .param p0, "handshakeTimeoutMillis"    # I
    .param p1, "cache"    # Landroid/net/SSLSessionCache;

    .line 154
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method private static isSslCheckRelaxed()Z
    .locals 2

    .line 232
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "socket.relaxsslcheck"

    .line 233
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 232
    :cond_0
    return v1
.end method

.method private makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "trustManagers"    # [Ljavax/net/ssl/TrustManager;

    .line 221
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/Conscrypt;->newPreferredSSLContextSpi()Ljavax/net/ssl/SSLContextSpi;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLContextImpl;

    .line 222
    .local v0, "sslContext":Lcom/android/org/conscrypt/OpenSSLContextImpl;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 223
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v1

    iget-object v2, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V

    .line 224
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 225
    .end local v0    # "sslContext":Lcom/android/org/conscrypt/OpenSSLContextImpl;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/security/KeyManagementException;
    const-string v1, "SSLCertificateSocketFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocketFactory;

    return-object v1
.end method

.method static varargs toLengthPrefixedList([[B)[B
    .locals 11
    .param p0, "items"    # [[B

    .line 316
    array-length v0, p0

    if-eqz v0, :cond_4

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "totalLength":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .line 320
    .end local v0    # "totalLength":I
    .local v3, "totalLength":I
    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v4, p0, v0

    .line 321
    .local v4, "s":[B
    array-length v5, v4

    if-eqz v5, :cond_0

    array-length v5, v4

    const/16 v6, 0xff

    if-gt v5, v6, :cond_0

    .line 324
    array-length v5, v4

    const/4 v6, 0x1

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    .line 320
    .end local v4    # "s":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    .restart local v4    # "s":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "s.length == 0 || s.length > 255: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    .end local v4    # "s":[B
    :cond_1
    new-array v0, v3, [B

    .line 327
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 328
    .local v1, "pos":I
    array-length v4, p0

    move v5, v1

    move v1, v2

    .line 328
    .end local v1    # "pos":I
    .local v5, "pos":I
    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v6, p0, v1

    .line 329
    .local v6, "s":[B
    add-int/lit8 v7, v5, 0x1

    .line 329
    .local v7, "pos":I
    array-length v8, v6

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    .line 330
    .end local v5    # "pos":I
    array-length v5, v6

    move v8, v7

    move v7, v2

    .line 330
    .end local v7    # "pos":I
    .local v8, "pos":I
    :goto_2
    if-ge v7, v5, :cond_2

    aget-byte v9, v6, v7

    .line 331
    .local v9, "b":B
    add-int/lit8 v10, v8, 0x1

    .line 331
    .local v10, "pos":I
    aput-byte v9, v0, v8

    .line 330
    .end local v8    # "pos":I
    .end local v9    # "b":B
    add-int/lit8 v7, v7, 0x1

    move v8, v10

    goto :goto_2

    .line 328
    .end local v6    # "s":[B
    .end local v10    # "pos":I
    .restart local v8    # "pos":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v5, v8

    goto :goto_1

    .line 334
    .end local v8    # "pos":I
    .restart local v5    # "pos":I
    :cond_3
    return-object v0

    .line 317
    .end local v0    # "result":[B
    .end local v3    # "totalLength":I
    .end local v5    # "pos":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "items.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 5
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_3

    .line 202
    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 206
    .local v0, "ssl":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 208
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 209
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v1, :cond_1

    .line 212
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0    # "ssl":Ljavax/net/ssl/SSLSocket;
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    goto :goto_0

    .line 213
    .restart local v0    # "ssl":Ljavax/net/ssl/SSLSocket;
    .restart local v1    # "session":Ljavax/net/ssl/SSLSession;
    :cond_0
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot verify hostname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_1
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Cannot verify SSL socket without session"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    .end local v0    # "ssl":Ljavax/net/ssl/SSLSocket;
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    :cond_2
    :goto_0
    return-void

    .line 199
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to verify non-SSL socket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 467
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 468
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 469
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 470
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 471
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 540
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 541
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 542
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 543
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 544
    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_0

    .line 545
    invoke-static {v0, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 547
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 521
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 522
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 523
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 524
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 525
    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_0

    .line 526
    invoke-static {v0, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 528
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 503
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 504
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 505
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 506
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 507
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 486
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 487
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 488
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 489
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 490
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p1, "k"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 446
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 447
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 448
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 449
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 450
    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_0

    .line 451
    invoke-static {v0, p2}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 453
    :cond_0
    return-object v0
.end method

.method public getAlpnSelectedProtocol(Ljava/net/Socket;)[B
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .line 360
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getAlpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 552
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNpnSelectedProtocol(Ljava/net/Socket;)[B
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .line 346
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getNpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 557
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlpnProtocols([[B)V
    .locals 1
    .param p1, "protocols"    # [[B

    .line 308
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->toLengthPrefixedList([[B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    .line 309
    return-void
.end method

.method public setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 385
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    .line 386
    return-void
.end method

.method public setHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostName"    # Ljava/lang/String;

    .line 409
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public setKeyManagers([Ljavax/net/ssl/KeyManager;)V
    .locals 1
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;

    .line 367
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 371
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 372
    return-void
.end method

.method public setNpnProtocols([[B)V
    .locals 1
    .param p1, "npnProtocols"    # [[B

    .line 285
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->toLengthPrefixedList([[B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    .line 286
    return-void
.end method

.method public setSoWriteTimeout(Ljava/net/Socket;I)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "writeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 425
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    .line 426
    return-void
.end method

.method public setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .locals 1
    .param p1, "trustManager"    # [Ljavax/net/ssl/TrustManager;

    .line 260
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 266
    return-void
.end method

.method public setUseSessionTickets(Ljava/net/Socket;Z)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "useSessionTickets"    # Z

    .line 397
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setUseSessionTickets(Z)V

    .line 398
    return-void
.end method
