.class public Lcom/android/server/wifi/WifiKeyStore;
.super Ljava/lang/Object;
.source "WifiKeyStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiKeyStore"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method constructor <init>(Landroid/security/KeyStore;)V
    .locals 1
    .param p1, "keyStore"    # Landroid/security/KeyStore;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiKeyStore;->mVerboseLoggingEnabled:Z

    .line 52
    iput-object p1, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    .line 53
    return-void
.end method

.method private static hasHardwareBackedKey(Ljava/security/cert/Certificate;)Z
    .locals 1
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    .line 72
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiKeyStore;->isHardwareBackedKey(Ljava/security/Key;)Z

    move-result v0

    return v0
.end method

.method private installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z
    .locals 18
    .param p1, "existingConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p3, "name"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 85
    move-object/from16 v1, p3

    const/4 v2, 0x1

    .line 86
    .local v2, "ret":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "privKeyName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "userCertName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 89
    .local v5, "clientCertificateChain":[Ljava/security/cert/Certificate;
    const/4 v6, 0x0

    const/16 v7, 0x3f2

    if-eqz v5, :cond_3

    array-length v8, v5

    if-eqz v8, :cond_3

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v8

    .line 91
    .local v8, "privKeyData":[B
    iget-boolean v9, v0, Lcom/android/server/wifi/WifiKeyStore;->mVerboseLoggingEnabled:Z

    if-eqz v9, :cond_1

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wifi/WifiKeyStore;->isHardwareBackedKey(Ljava/security/Key;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 93
    const-string v9, "WifiKeyStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "importing keys "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " in hardware backed store"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_0
    const-string v9, "WifiKeyStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "importing keys "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " in software backed store"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    :goto_0
    iget-object v9, v0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v9, v3, v8, v7, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v2

    .line 101
    if-nez v2, :cond_2

    .line 102
    return v2

    .line 105
    :cond_2
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wifi/WifiKeyStore;->putCertsInKeyStore(Ljava/lang/String;[Ljava/security/cert/Certificate;)Z

    move-result v2

    .line 106
    if-nez v2, :cond_3

    .line 108
    iget-object v6, v0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v3, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 109
    return v2

    .line 113
    .end local v8    # "privKeyData":[B
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v8

    .line 114
    .local v8, "caCertificates":[Ljava/security/cert/X509Certificate;
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 115
    .local v9, "oldCaCertificatesToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 116
    nop

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 116
    invoke-interface {v9, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 119
    :cond_4
    const/4 v11, 0x0

    .line 120
    .local v11, "caCertificateAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_a

    .line 121
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v12

    .line 122
    move v12, v2

    move v2, v6

    .local v2, "i":I
    .local v12, "ret":Z
    :goto_1
    array-length v13, v8

    if-ge v2, v13, :cond_9

    .line 123
    array-length v13, v8

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 124
    move-object v13, v1

    goto :goto_2

    :cond_5
    const-string v13, "%s_%d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v1, v15, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v14

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 126
    .local v13, "alias":Ljava/lang/String;
    :goto_2
    invoke-interface {v9, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CACERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aget-object v15, v8, v2

    invoke-virtual {v0, v14, v15}, Lcom/android/server/wifi/WifiKeyStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v12

    .line 128
    if-nez v12, :cond_8

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 131
    iget-object v6, v0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v3, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 132
    iget-object v6, v0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v4, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 135
    :cond_6
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 136
    .local v14, "addedAlias":Ljava/lang/String;
    iget-object v15, v0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    const-string v3, "CACERT_"

    .end local v3    # "privKeyName":Ljava/lang/String;
    .local v17, "privKeyName":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x3f2

    invoke-virtual {v15, v3, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 137
    .end local v14    # "addedAlias":Ljava/lang/String;
    nop

    .line 135
    move-object/from16 v3, v17

    const/16 v7, 0x3f2

    goto :goto_3

    .line 138
    .end local v17    # "privKeyName":Ljava/lang/String;
    .restart local v3    # "privKeyName":Ljava/lang/String;
    :cond_7
    move-object/from16 v17, v3

    .end local v3    # "privKeyName":Ljava/lang/String;
    .restart local v17    # "privKeyName":Ljava/lang/String;
    return v12

    .line 140
    .end local v17    # "privKeyName":Ljava/lang/String;
    .restart local v3    # "privKeyName":Ljava/lang/String;
    :cond_8
    move-object/from16 v17, v3

    .end local v3    # "privKeyName":Ljava/lang/String;
    .restart local v17    # "privKeyName":Ljava/lang/String;
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v13    # "alias":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x3f2

    goto/16 :goto_1

    .line 145
    .end local v2    # "i":I
    .end local v17    # "privKeyName":Ljava/lang/String;
    .restart local v3    # "privKeyName":Ljava/lang/String;
    :cond_9
    move-object/from16 v17, v3

    goto :goto_4

    .end local v12    # "ret":Z
    .local v2, "ret":Z
    :cond_a
    move-object/from16 v17, v3

    move v12, v2

    .end local v2    # "ret":Z
    .end local v3    # "privKeyName":Ljava/lang/String;
    .restart local v12    # "ret":Z
    .restart local v17    # "privKeyName":Ljava/lang/String;
    :goto_4
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 146
    .local v3, "oldAlias":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CACERT_"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v13, 0x3f2

    invoke-virtual {v6, v7, v13}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 147
    .end local v3    # "oldAlias":Ljava/lang/String;
    goto :goto_5

    .line 149
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 150
    invoke-virtual/range {p2 .. p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->resetClientKeyEntry()V

    .line 154
    :cond_c
    if-eqz v8, :cond_d

    .line 155
    nop

    .line 156
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 155
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->resetCaCertificate()V

    goto :goto_6

    .line 159
    :cond_d
    move-object/from16 v3, p2

    :goto_6
    return v12
.end method

.method private static isHardwareBackedKey(Ljava/security/Key;)Z
    .locals 1
    .param p0, "key"    # Ljava/security/Key;

    .line 68
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 64
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 279
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "client":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    const/4 v1, 0x1

    return v1

    .line 290
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiKeyStore;->mVerboseLoggingEnabled:Z

    .line 60
    return-void
.end method

.method public putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;

    .line 170
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiKeyStore;->putCertsInKeyStore(Ljava/lang/String;[Ljava/security/cert/Certificate;)Z

    move-result v0

    return v0
.end method

.method public putCertsInKeyStore(Ljava/lang/String;[Ljava/security/cert/Certificate;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "certs"    # [Ljava/security/cert/Certificate;

    .line 182
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v1

    .line 183
    .local v1, "certData":[B
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiKeyStore;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_0

    .line 184
    const-string v2, "WifiKeyStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " certificate(s) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in keystore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v3, 0x3f2

    invoke-virtual {v2, p1, v1, v3, v0}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 190
    .end local v1    # "certData":[B
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e2":Ljava/security/cert/CertificateException;
    return v0

    .line 188
    .end local v1    # "e2":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v1

    .line 189
    .local v1, "e1":Ljava/io/IOException;
    return v0
.end method

.method public putKeyInKeyStore(Ljava/lang/String;Ljava/security/Key;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;

    .line 203
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 204
    .local v0, "privKeyData":[B
    iget-object v1, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v2, 0x3f2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v1

    return v1
.end method

.method public removeEntryFromKeyStore(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v1, 0x3f2

    invoke-virtual {v0, p1, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 223
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "client":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x3f2

    if-nez v1, :cond_1

    .line 226
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiKeyStore;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiKeyStore"

    const-string v3, "removing client private key and user cert"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 228
    iget-object v1, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 231
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "aliases":[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 234
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    .line 235
    .local v5, "ca":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 236
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiKeyStore;->mVerboseLoggingEnabled:Z

    if-eqz v6, :cond_2

    const-string v6, "WifiKeyStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removing CA cert: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CACERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 234
    .end local v5    # "ca":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 241
    :cond_4
    return-void
.end method

.method public updateNetworkKeys(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "existingConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 252
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 253
    .local v0, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-static {v0}, Lcom/android/server/wifi/WifiKeyStore;->needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiConfiguration;->getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "keyId":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 261
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 260
    :goto_0
    invoke-direct {p0, v3, v0, v2}, Lcom/android/server/wifi/WifiKeyStore;->installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 262
    const-string v3, "WifiKeyStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to install keys"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    return v1

    .line 268
    .end local v2    # "keyId":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 265
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "WifiKeyStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " invalid config for key installation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return v1

    .line 270
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_1
    const/4 v1, 0x1

    return v1
.end method
