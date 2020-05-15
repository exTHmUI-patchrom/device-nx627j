.class public Lcom/android/server/wifi/hotspot2/WfaCertBuilder;
.super Ljava/lang/Object;
.source "WfaCertBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WfaCertBuilder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadCertsFromDisk(Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .param p0, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 46
    .local v0, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "certDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 48
    .local v2, "certFiles":[Ljava/io/File;
    if-eqz v2, :cond_3

    array-length v3, v2

    if-gtz v3, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 52
    .local v3, "certFactory":Ljava/security/cert/CertificateFactory;
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 53
    .local v6, "certFile":Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 54
    .local v7, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    .line 55
    .local v8, "cert":Ljava/security/cert/Certificate;
    instance-of v9, v8, Ljava/security/cert/X509Certificate;

    if-eqz v9, :cond_1

    .line 56
    move-object v9, v8

    check-cast v9, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v6    # "certFile":Ljava/io/File;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "cert":Ljava/security/cert/Certificate;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "certDir":Ljava/io/File;
    .end local v2    # "certFiles":[Ljava/io/File;
    .end local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    :cond_2
    goto :goto_2

    .line 49
    .restart local v1    # "certDir":Ljava/io/File;
    .restart local v2    # "certFiles":[Ljava/io/File;
    :cond_3
    :goto_1
    return-object v0

    .line 60
    .end local v1    # "certDir":Ljava/io/File;
    .end local v2    # "certFiles":[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WfaCertBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read cert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method
