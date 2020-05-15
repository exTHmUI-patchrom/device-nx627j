.class public Lcom/android/server/wifi/hotspot2/WfaKeyStore;
.super Ljava/lang/Object;
.source "WfaKeyStore.java"


# static fields
.field private static final DEFAULT_WFA_CERT_DIR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WfaKeyStore"


# instance fields
.field private mKeyStore:Ljava/security/KeyStore;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/etc/security/cacerts_wfa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hotspot2/WfaKeyStore;->DEFAULT_WFA_CERT_DIR:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/WfaKeyStore;->mVerboseLoggingEnabled:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/WfaKeyStore;->mKeyStore:Ljava/security/KeyStore;

    return-void
.end method


# virtual methods
.method public get()Ljava/security/KeyStore;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/WfaKeyStore;->mKeyStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method public load()V
    .locals 9

    .line 47
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/WfaKeyStore;->mKeyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 52
    .local v1, "index":I
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/WfaKeyStore;->mKeyStore:Ljava/security/KeyStore;

    .line 53
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/WfaKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 54
    sget-object v2, Lcom/android/server/wifi/hotspot2/WfaKeyStore;->DEFAULT_WFA_CERT_DIR:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/WfaCertBuilder;->loadCertsFromDisk(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 55
    .local v2, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 56
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/WfaKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 59
    :cond_1
    if-gtz v1, :cond_2

    .line 60
    const-string v0, "WfaKeyStore"

    const-string v3, "No certs loaded"

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v2    # "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :cond_2
    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
