.class public final Landroid/security/net/config/NetworkSecurityConfigProvider;
.super Ljava/security/Provider;
.source "NetworkSecurityConfigProvider.java"


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/security/net/config/NetworkSecurityConfigProvider;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/net/config/NetworkSecurityConfigProvider;->PREFIX:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 30
    const-string v0, "AndroidNSSP"

    const-string v1, "Android Network Security Policy Provider"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 31
    const-string v0, "TrustManagerFactory.PKIX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/security/net/config/NetworkSecurityConfigProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RootTrustManagerFactorySpi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/security/net/config/NetworkSecurityConfigProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "Alg.Alias.TrustManagerFactory.X509"

    const-string v1, "PKIX"

    invoke-virtual {p0, v0, v1}, Landroid/security/net/config/NetworkSecurityConfigProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public static install(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/security/net/config/ApplicationConfig;

    new-instance v1, Landroid/security/net/config/ManifestConfigSource;

    invoke-direct {v1, p0}, Landroid/security/net/config/ManifestConfigSource;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/security/net/config/ApplicationConfig;-><init>(Landroid/security/net/config/ConfigSource;)V

    .line 37
    .local v0, "config":Landroid/security/net/config/ApplicationConfig;
    invoke-static {v0}, Landroid/security/net/config/ApplicationConfig;->setDefaultInstance(Landroid/security/net/config/ApplicationConfig;)V

    .line 38
    new-instance v1, Landroid/security/net/config/NetworkSecurityConfigProvider;

    invoke-direct {v1}, Landroid/security/net/config/NetworkSecurityConfigProvider;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v1

    .line 39
    .local v1, "pos":I
    if-ne v1, v2, :cond_0

    .line 43
    new-instance v2, Landroid/security/net/config/ConfigNetworkSecurityPolicy;

    invoke-direct {v2, v0}, Landroid/security/net/config/ConfigNetworkSecurityPolicy;-><init>(Landroid/security/net/config/ApplicationConfig;)V

    invoke-static {v2}, Llibcore/net/NetworkSecurityPolicy;->setInstance(Llibcore/net/NetworkSecurityPolicy;)V

    .line 44
    return-void

    .line 40
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to install provider as highest priority provider. Provider was installed at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
