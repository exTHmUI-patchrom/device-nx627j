.class public Lcom/android/server/wifi/hotspot2/PasspointManager;
.super Ljava/lang/Object;
.source "PasspointManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;,
        Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PasspointManager"

.field private static sPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;


# instance fields
.field private final mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

.field private final mAnqpRequestManager:Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

.field private final mCertVerifier:Lcom/android/server/wifi/hotspot2/CertificateVerifier;

.field private final mHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

.field private final mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

.field private final mObjectFactory:Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;

.field private final mPasspointProvisioner:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

.field private mProviderIndex:J

.field private final mProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/SIMAccessor;Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiMetrics;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "keyStore"    # Lcom/android/server/wifi/WifiKeyStore;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;
    .param p5, "simAccessor"    # Lcom/android/server/wifi/SIMAccessor;
    .param p6, "objectFactory"    # Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;
    .param p7, "wifiConfigManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p8, "wifiConfigStore"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p9, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;-><init>(Lcom/android/server/wifi/hotspot2/PasspointManager;Landroid/content/Context;)V

    invoke-virtual {p6, p2, v0}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makePasspointEventHandler(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;)Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    .line 206
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    .line 207
    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    .line 208
    iput-object p6, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mObjectFactory:Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    .line 210
    invoke-virtual {p6, p4}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makeAnqpCache(Lcom/android/server/wifi/Clock;)Lcom/android/server/wifi/hotspot2/AnqpCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    .line 211
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    invoke-virtual {p6, v0, p4}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makeANQPRequestManager(Lcom/android/server/wifi/hotspot2/PasspointEventHandler;Lcom/android/server/wifi/Clock;)Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpRequestManager:Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    .line 212
    invoke-virtual {p6}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makeCertificateVerifier()Lcom/android/server/wifi/hotspot2/CertificateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mCertVerifier:Lcom/android/server/wifi/hotspot2/CertificateVerifier;

    .line 213
    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 214
    iput-object p9, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    .line 216
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    new-instance v2, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;-><init>(Lcom/android/server/wifi/hotspot2/PasspointManager;Lcom/android/server/wifi/hotspot2/PasspointManager$1;)V

    invoke-virtual {p6, v0, v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makePasspointConfigStoreData(Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;)Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;

    move-result-object v0

    invoke-virtual {p8, v0}, Lcom/android/server/wifi/WifiConfigStore;->registerStoreData(Lcom/android/server/wifi/WifiConfigStore$StoreData;)Z

    .line 218
    invoke-virtual {p6, p1}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makePasspointProvisioner(Landroid/content/Context;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mPasspointProvisioner:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    .line 219
    sput-object p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->sPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/hotspot2/PasspointManager;)Lcom/android/server/wifi/hotspot2/ANQPRequestManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/PasspointManager;

    .line 81
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpRequestManager:Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/hotspot2/PasspointManager;)Lcom/android/server/wifi/hotspot2/AnqpCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/PasspointManager;

    .line 81
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/hotspot2/PasspointManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/PasspointManager;

    .line 81
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/hotspot2/PasspointManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/PasspointManager;

    .line 81
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/hotspot2/PasspointManager;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/PasspointManager;
    .param p1, "x1"    # J

    .line 81
    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    return-wide p1
.end method

.method public static addLegacyPasspointConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 447
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->sPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    if-nez v0, :cond_0

    .line 448
    const-string v0, "PasspointManager"

    const-string v1, "PasspointManager have not been initialized yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v0, 0x0

    return v0

    .line 451
    :cond_0
    const-string v0, "PasspointManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installing legacy Passpoint configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->sPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->addWifiConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method private addWifiConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 20
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    .line 686
    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 687
    return v2

    .line 691
    :cond_0
    nop

    .line 692
    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->convertFromWifiConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v15

    .line 693
    .local v15, "passpointConfig":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    if-nez v15, :cond_1

    .line 694
    return v2

    .line 698
    :cond_1
    iget-object v14, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 699
    .local v14, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v13

    .line 700
    .local v13, "caCertificateAliasSuffix":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v12

    .line 701
    .local v12, "clientCertAndKeyAliasSuffix":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/Credential;->getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 702
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 703
    const-string v3, "PasspointManager"

    const-string v4, "Missing CA Certificate for user credential"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return v2

    .line 706
    :cond_2
    invoke-virtual {v15}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/Credential;->getCertCredential()Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 707
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 708
    const-string v3, "PasspointManager"

    const-string v4, "Missing CA certificate for Certificate credential"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return v2

    .line 711
    :cond_3
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 712
    const-string v3, "PasspointManager"

    const-string v4, "Missing client certificate and key for certificate credential"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return v2

    .line 719
    :cond_4
    new-instance v2, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    iget-object v5, v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v6, v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    iget-wide v7, v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v7

    iput-wide v3, v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 721
    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v10

    .line 722
    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v11

    .line 723
    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v3, v2

    move-object v4, v15

    move-object/from16 v19, v12

    move-object/from16 v12, v16

    .end local v12    # "clientCertAndKeyAliasSuffix":Ljava/lang/String;
    .local v19, "clientCertAndKeyAliasSuffix":Ljava/lang/String;
    move-object/from16 v16, v13

    move/from16 v13, v17

    .end local v13    # "caCertificateAliasSuffix":Ljava/lang/String;
    .local v16, "caCertificateAliasSuffix":Ljava/lang/String;
    move-object/from16 v17, v14

    move/from16 v14, v18

    .end local v14    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .local v17, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-direct/range {v3 .. v14}, Lcom/android/server/wifi/hotspot2/PasspointProvider;-><init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 724
    .local v2, "provider":Lcom/android/server/wifi/hotspot2/PasspointProvider;
    iget-object v3, v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-virtual {v15}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public addOrUpdateProvider(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)Z
    .locals 11
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .param p2, "uid"    # I

    .line 248
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumPasspointProviderInstallation()V

    .line 249
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 250
    const-string v1, "PasspointManager"

    const-string v2, "Configuration not provided"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v0

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->validate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    const-string v1, "PasspointManager"

    const-string v2, "Invalid configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return v0

    .line 263
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUpdateIdentifier()I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    .line 264
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/Credential;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mCertVerifier:Lcom/android/server/wifi/hotspot2/CertificateVerifier;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/CertificateVerifier;->verifyCaCert(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PasspointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to verify CA certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v0

    .line 274
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mObjectFactory:Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    iget-wide v8, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, v8

    iput-wide v1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    move-object v5, p1

    move v10, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makePasspointProvider(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JI)Lcom/android/server/wifi/hotspot2/PasspointProvider;

    move-result-object v1

    .line 277
    .local v1, "newProvider":Lcom/android/server/wifi/hotspot2/PasspointProvider;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->installCertsAndKeys()Z

    move-result v2

    if-nez v2, :cond_3

    .line 278
    const-string v2, "PasspointManager"

    const-string v3, "Failed to install certificates and keys to keystore"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return v0

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    const-string v0, "PasspointManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replacing configuration for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->uninstallCertsAndKeys()V

    .line 286
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 291
    const-string v0, "PasspointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added/updated Passpoint configuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumPasspointProviderInstallSuccess()V

    .line 294
    return v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 669
    const-string v0, "Dump of PasspointManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    const-string v0, "PasspointManager - Providers Begin ---"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 672
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 673
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    goto :goto_0

    .line 674
    :cond_0
    const-string v0, "PasspointManager - Providers End ---"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PasspointManager - Next provider ID to be assigned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->dump(Ljava/io/PrintWriter;)V

    .line 677
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 234
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mPasspointProvisioner:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->enableVerboseLogging(I)V

    .line 235
    return-void
.end method

.method public getANQPElements(Landroid/net/wifi/ScanResult;)Ljava/util/Map;
    .locals 8
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .line 506
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 507
    invoke-static {v0}, Lcom/android/server/wifi/util/InformationElementUtil;->getHS2VendorSpecificIE([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/android/server/wifi/util/InformationElementUtil$Vsa;

    move-result-object v0

    .line 512
    .local v0, "vsa":Lcom/android/server/wifi/util/InformationElementUtil$Vsa;
    :try_start_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .local v3, "bssid":J
    nop

    .line 515
    nop

    .line 517
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-wide v5, p1, Landroid/net/wifi/ScanResult;->hessid:J

    iget v7, v0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    invoke-static/range {v2 .. v7}, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->buildKey(Ljava/lang/String;JJI)Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;)Lcom/android/server/wifi/hotspot2/ANQPData;

    move-result-object v1

    .line 519
    .local v1, "anqpEntry":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v1, :cond_0

    .line 520
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/ANQPData;->getElements()Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 522
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    return-object v2

    .line 513
    .end local v1    # "anqpEntry":Lcom/android/server/wifi/hotspot2/ANQPData;
    .end local v3    # "bssid":J
    :catch_0
    move-exception v1

    .line 514
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "PasspointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid BSSID provided in the scan result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    return-object v2
.end method

.method public getAllMatchedProviders(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .locals 19
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 383
    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 387
    .local v3, "allMatches":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;>;"
    iget-object v0, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 388
    invoke-static {v0}, Lcom/android/server/wifi/util/InformationElementUtil;->getRoamingConsortiumIE([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;

    move-result-object v4

    .line 389
    .local v4, "roamingConsortium":Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;
    iget-object v0, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    invoke-static {v0}, Lcom/android/server/wifi/util/InformationElementUtil;->getHS2VendorSpecificIE([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/android/server/wifi/util/InformationElementUtil$Vsa;

    move-result-object v0

    move-object v5, v0

    .line 395
    .local v5, "vsa":Lcom/android/server/wifi/util/InformationElementUtil$Vsa;
    :try_start_0
    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .local v7, "bssid":J
    nop

    .line 398
    nop

    .line 400
    iget-object v6, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-wide v9, v2, Landroid/net/wifi/ScanResult;->hessid:J

    iget v11, v5, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    invoke-static/range {v6 .. v11}, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->buildKey(Ljava/lang/String;JJI)Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    move-result-object v0

    .line 402
    .local v0, "anqpKey":Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
    iget-object v6, v1, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;)Lcom/android/server/wifi/hotspot2/ANQPData;

    move-result-object v6

    .line 404
    .local v6, "anqpEntry":Lcom/android/server/wifi/hotspot2/ANQPData;
    const/4 v9, 0x0

    if-nez v6, :cond_2

    .line 405
    iget-object v12, v1, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpRequestManager:Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    iget v11, v4, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->anqpOICount:I

    if-lez v11, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v16, v9

    :goto_0
    iget-object v11, v5, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    sget-object v13, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-ne v11, v13, :cond_1

    const/16 v17, 0x1

    goto :goto_1

    :cond_1
    move/from16 v17, v9

    :goto_1
    move-wide v13, v7

    move-object v15, v0

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->requestANQPElements(JLcom/android/server/wifi/hotspot2/ANQPNetworkKey;ZZ)Z

    .line 408
    const-string v9, "PasspointManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ANQP entry not found for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-object v3

    .line 412
    :cond_2
    iget-object v11, v1, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 413
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    .line 414
    .local v13, "provider":Lcom/android/server/wifi/hotspot2/PasspointProvider;
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/ANQPData;->getElements()Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v13, v14, v4}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->match(Ljava/util/Map;Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;)Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-result-object v14

    .line 415
    .local v14, "matchStatus":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    sget-object v15, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-eq v14, v15, :cond_3

    sget-object v15, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v14, v15, :cond_4

    .line 417
    :cond_3
    invoke-static {v13, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    .end local v13    # "provider":Lcom/android/server/wifi/hotspot2/PasspointProvider;
    .end local v14    # "matchStatus":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_4
    goto :goto_2

    .line 421
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_7

    .line 422
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    .line 423
    .local v12, "match":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    const-string v13, "PasspointManager"

    const-string v14, "Matched %s to %s as %s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    iget-object v10, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v10, v15, v9

    iget-object v10, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    .line 424
    invoke-virtual {v10}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x1

    aput-object v10, v15, v16

    .line 425
    iget-object v9, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v10, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v9, v10, :cond_6

    const-string v9, "Home Provider"

    goto :goto_4

    .line 426
    :cond_6
    const-string v9, "Roaming Provider"

    :goto_4
    const/4 v10, 0x2

    aput-object v9, v15, v10

    .line 423
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v12    # "match":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    nop

    .line 422
    const/4 v9, 0x0

    goto :goto_3

    .line 429
    :cond_7
    const-string v9, "PasspointManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No matches not found for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_8
    return-object v3

    .line 396
    .end local v0    # "anqpKey":Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
    .end local v6    # "anqpEntry":Lcom/android/server/wifi/hotspot2/ANQPData;
    .end local v7    # "bssid":J
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "PasspointManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid BSSID provided in the scan result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-object v3
.end method

.method public getAllMatchingWifiConfigs(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .locals 7
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 564
    if-nez p1, :cond_0

    .line 565
    const-string v0, "PasspointManager"

    const-string v1, "Attempt to get matching config for a null ScanResult"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 568
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    .line 569
    const-string v0, "PasspointManager"

    const-string v1, "Attempt to get matching config for a non-Passpoint AP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 573
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointManager;->getAllMatchedProviders(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v0

    .line 575
    .local v0, "matchedProviders":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 577
    .local v3, "matchedProvider":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getWifiConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 578
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/wifi/util/ScanResultUtil;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 579
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v6, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v5, v6, :cond_2

    .line 580
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    .line 582
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    .end local v3    # "matchedProvider":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 585
    :cond_3
    return-object v1
.end method

.method public getMatchingOsuProviders(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .locals 14
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            ">;"
        }
    .end annotation

    .line 598
    if-nez p1, :cond_0

    .line 599
    const-string v0, "PasspointManager"

    const-string v1, "Attempt to retrieve OSU providers for a null ScanResult"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 602
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    const-string v0, "PasspointManager"

    const-string v1, "Attempt to retrieve OSU providers for a non-Passpoint AP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 608
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointManager;->getANQPElements(Landroid/net/wifi/ScanResult;)Ljava/util/Map;

    move-result-object v0

    .line 609
    .local v0, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;>;"
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 610
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 613
    :cond_2
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 614
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;

    .line 615
    .local v1, "element":Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/OsuProvider;>;"
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->getProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;

    .line 619
    .local v4, "info":Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;
    new-instance v13, Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->getOsuSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v7

    .line 620
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->getServiceDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->getServerUri()Landroid/net/Uri;

    move-result-object v9

    .line 621
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->getNetworkAccessIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->getMethodList()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Landroid/net/wifi/hotspot2/OsuProvider;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Icon;)V

    .line 622
    .local v5, "provider":Landroid/net/wifi/hotspot2/OsuProvider;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    .end local v4    # "info":Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;
    .end local v5    # "provider":Landroid/net/wifi/hotspot2/OsuProvider;
    goto :goto_0

    .line 624
    :cond_3
    return-object v2
.end method

.method public getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 536
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 537
    const-string v1, "PasspointManager"

    const-string v2, "Attempt to get matching config for a null ScanResult"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-object v0

    .line 540
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v1

    if-nez v1, :cond_1

    .line 541
    const-string v1, "PasspointManager"

    const-string v2, "Attempt to get matching config for a non-Passpoint AP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-object v0

    .line 544
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointManager;->matchProvider(Landroid/net/wifi/ScanResult;)Landroid/util/Pair;

    move-result-object v1

    .line 545
    .local v1, "matchedProvider":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    if-nez v1, :cond_2

    .line 546
    return-object v0

    .line 548
    :cond_2
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getWifiConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 549
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wifi/util/ScanResultUtil;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 550
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v2, v3, :cond_3

    .line 551
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    .line 553
    :cond_3
    return-object v0
.end method

.method public getProviderConfigs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/PasspointConfiguration;>;"
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 328
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    goto :goto_0

    .line 330
    :cond_0
    return-object v0
.end method

.method public initializeProvisioner(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 226
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mPasspointProvisioner:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->init(Landroid/os/Looper;)V

    .line 227
    return-void
.end method

.method public matchProvider(Landroid/net/wifi/ScanResult;)Landroid/util/Pair;
    .locals 8
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointManager;->getAllMatchedProviders(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v0

    .line 349
    .local v0, "allMatches":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;>;"
    if-nez v0, :cond_0

    .line 350
    const/4 v1, 0x0

    return-object v1

    .line 353
    :cond_0
    const/4 v1, 0x0

    .line 354
    .local v1, "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 355
    .local v3, "match":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v5, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v4, v5, :cond_1

    .line 356
    move-object v1, v3

    .line 357
    goto :goto_1

    .line 359
    :cond_1
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v5, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v4, v5, :cond_2

    if-nez v1, :cond_2

    .line 360
    move-object v1, v3

    .line 362
    .end local v3    # "match":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_2
    goto :goto_0

    .line 364
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 365
    const-string v2, "PasspointManager"

    const-string v3, "Matched %s to %s as %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    .line 366
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 367
    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v7, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v6, v7, :cond_4

    const-string v6, "Home Provider"

    goto :goto_2

    .line 368
    :cond_4
    const-string v6, "Roaming Provider"

    :goto_2
    aput-object v6, v4, v5

    .line 365
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 370
    :cond_5
    const-string v2, "PasspointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Match not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_3
    return-object v1
.end method

.method public notifyANQPDone(Lcom/android/server/wifi/hotspot2/AnqpEvent;)V
    .locals 1
    .param p1, "anqpEvent"    # Lcom/android/server/wifi/hotspot2/AnqpEvent;

    .line 468
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->notifyANQPDone(Lcom/android/server/wifi/hotspot2/AnqpEvent;)V

    .line 469
    return-void
.end method

.method public notifyIconDone(Lcom/android/server/wifi/hotspot2/IconEvent;)V
    .locals 1
    .param p1, "iconEvent"    # Lcom/android/server/wifi/hotspot2/IconEvent;

    .line 477
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->notifyIconDone(Lcom/android/server/wifi/hotspot2/IconEvent;)V

    .line 478
    return-void
.end method

.method public onPasspointNetworkConnected(Ljava/lang/String;)V
    .locals 4
    .param p1, "fqdn"    # Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    .line 635
    .local v0, "provider":Lcom/android/server/wifi/hotspot2/PasspointProvider;
    if-nez v0, :cond_0

    .line 636
    const-string v1, "PasspointManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Passpoint network connected without provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void

    .line 640
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getHasEverConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 642
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->setHasEverConnected(Z)V

    .line 644
    :cond_1
    return-void
.end method

.method public queryPasspointIcon(JLjava/lang/String;)Z
    .locals 1
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->requestIcon(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public receivedWnmFrame(Lcom/android/server/wifi/hotspot2/WnmData;)V
    .locals 1
    .param p1, "data"    # Lcom/android/server/wifi/hotspot2/WnmData;

    .line 486
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->notifyWnmFrameReceived(Lcom/android/server/wifi/hotspot2/WnmData;)V

    .line 487
    return-void
.end method

.method public removeProvider(Ljava/lang/String;)Z
    .locals 4
    .param p1, "fqdn"    # Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumPasspointProviderUninstallation()V

    .line 305
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    const-string v0, "PasspointManager"

    const-string v1, "Config doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    return v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->uninstallCertsAndKeys()V

    .line 311
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 313
    const-string v0, "PasspointManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed Passpoint configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumPasspointProviderUninstallSuccess()V

    .line 315
    return v1
.end method

.method public startSubscriptionProvisioning(ILandroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)Z
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "provider"    # Landroid/net/wifi/hotspot2/OsuProvider;
    .param p3, "callback"    # Landroid/net/wifi/hotspot2/IProvisioningCallback;

    .line 737
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mPasspointProvisioner:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->startSubscriptionProvisioning(ILandroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)Z

    move-result v0

    return v0
.end method

.method public sweepCache()V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/AnqpCache;->sweep()V

    .line 460
    return-void
.end method

.method public updateMetrics()V
    .locals 5

    .line 652
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 653
    .local v0, "numProviders":I
    const/4 v1, 0x0

    .line 654
    .local v1, "numConnectedProviders":I
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 655
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getHasEverConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 656
    add-int/lit8 v1, v1, 0x1

    .line 658
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    :cond_0
    goto :goto_0

    .line 659
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiMetrics;->updateSavedPasspointProfilesInfo(Ljava/util/Map;)V

    .line 660
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wifi/WifiMetrics;->updateSavedPasspointProfiles(II)V

    .line 661
    return-void
.end method
