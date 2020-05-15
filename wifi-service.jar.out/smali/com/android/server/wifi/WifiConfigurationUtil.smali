.class public Lcom/android/server/wifi/WifiConfigurationUtil;
.super Ljava/lang/Object;
.source "WifiConfigurationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;
    }
.end annotation


# static fields
.field private static final ENCLOSING_QUTOES_LEN:I = 0x2

.field public static final PASSWORD_MASK:Ljava/lang/String; = "*"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PSK_ASCII_MAX_LEN:I = 0x41

.field private static final PSK_ASCII_MIN_LEN:I = 0xa

.field private static final PSK_HEX_LEN:I = 0x40

.field private static final SSID_HEX_MAX_LEN:I = 0x40

.field private static final SSID_HEX_MIN_LEN:I = 0x2

.field private static final SSID_UTF_8_MAX_LEN:I = 0x32

.field private static final SSID_UTF_8_MIN_LEN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiConfigurationUtil"

.field public static final VALIDATE_FOR_ADD:Z = true

.field public static final VALIDATE_FOR_UPDATE:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPnoNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    .locals 4
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 622
    new-instance v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;-><init>(Ljava/lang/String;)V

    .line 624
    .local v0, "pnoNetwork":Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 625
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 627
    :cond_0
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    const/4 v3, 0x2

    or-int/2addr v1, v3

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 628
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 629
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    or-int/2addr v1, v3

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    goto :goto_1

    .line 631
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    .line 632
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 635
    :cond_2
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    goto :goto_1

    .line 633
    :cond_3
    :goto_0
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 637
    :goto_1
    return-object v0
.end method

.method public static doesUidBelongToAnyProfile(ILjava/util/List;)Z
    .locals 4
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    .line 86
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 87
    .local v0, "userId":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 88
    .local v2, "profile":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, v0, :cond_0

    .line 89
    const/4 v1, 0x1

    return v1

    .line 91
    .end local v2    # "profile":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static getEapSimNum(Landroid/net/wifi/WifiEnterpriseConfig;)I
    .locals 2
    .param p0, "enterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "mSimNum":I
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 277
    :cond_0
    return v0
.end method

.method public static hasAnyValidWepKey([Ljava/lang/String;)Z
    .locals 3
    .param p0, "wepKeys"    # [Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 100
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 101
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static hasCredentialChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p0, "existingConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "newConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 290
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 292
    return v1

    .line 294
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    return v1

    .line 297
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 299
    return v1

    .line 301
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 303
    return v1

    .line 305
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 307
    return v1

    .line 309
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 310
    return v1

    .line 314
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xbe

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 315
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    if-eq v0, v2, :cond_6

    .line 316
    return v1

    .line 318
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 319
    return v1

    .line 323
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xbf

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 324
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    if-eq v0, v2, :cond_8

    .line 325
    return v1

    .line 327
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 328
    return v1

    .line 332
    :cond_9
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 333
    return v1

    .line 335
    :cond_a
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-eq v0, v2, :cond_b

    .line 336
    return v1

    .line 338
    :cond_b
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eq v0, v2, :cond_c

    .line 339
    return v1

    .line 341
    :cond_c
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConfigurationUtil;->hasEnterpriseConfigChanged(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 343
    return v1

    .line 345
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static hasEnterpriseConfigChanged(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 4
    .param p0, "existingEnterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p1, "newEnterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 236
    const/4 v0, 0x1

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 237
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 238
    return v0

    .line 240
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v1

    .line 241
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 242
    return v0

    .line 244
    :cond_1
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->getEapSimNum(Landroid/net/wifi/WifiEnterpriseConfig;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/wifi/WifiConfigurationUtil;->getEapSimNum(Landroid/net/wifi/WifiEnterpriseConfig;)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 245
    return v0

    .line 247
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 249
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 255
    return v0

    .line 257
    :cond_4
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 258
    .local v1, "existingCaCerts":[Ljava/security/cert/X509Certificate;
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 259
    .local v2, "newCaCerts":[Ljava/security/cert/X509Certificate;
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 260
    return v0

    .line 262
    .end local v1    # "existingCaCerts":[Ljava/security/cert/X509Certificate;
    .end local v2    # "newCaCerts":[Ljava/security/cert/X509Certificate;
    :cond_5
    goto :goto_1

    .line 251
    :cond_6
    :goto_0
    return v0

    .line 264
    :cond_7
    if-nez p0, :cond_9

    if-eqz p1, :cond_8

    goto :goto_2

    .line 268
    :cond_8
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 265
    :cond_9
    :goto_2
    return v0
.end method

.method public static hasIpChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p0, "existingConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "newConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 194
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 195
    return v2

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v1, :cond_1

    .line 198
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    .line 198
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 201
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static hasProxyChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p0, "existingConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "newConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 215
    const/4 v0, 0x1

    if-nez p0, :cond_1

    .line 216
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 218
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 219
    return v0

    .line 221
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static isConfigForDppNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 162
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public static isConfigForEapNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 132
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    .line 133
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 132
    :goto_1
    return v0
.end method

.method public static isConfigForOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 169
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForWepNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForPskNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForWapiPskNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForWapiCertNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForEapNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0
.end method

.method public static isConfigForOweNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 155
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public static isConfigForPskNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 111
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public static isConfigForSaeNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 148
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public static isConfigForSha256Network(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public static isConfigForSha384Network(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 181
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public static isConfigForWapiCertNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 125
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public static isConfigForWapiPskNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 118
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public static isConfigForWepNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 140
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 141
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->hasAnyValidWepKey([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 140
    :cond_0
    return v1
.end method

.method public static isSameNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "config1"    # Landroid/net/wifi/WifiConfiguration;

    .line 596
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 597
    return v0

    .line 599
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_0

    .line 602
    :cond_1
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v3, :cond_2

    .line 603
    return v1

    .line 605
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 606
    return v1

    .line 608
    :cond_3
    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiConfigurationUtil;->hasCredentialChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 609
    return v1

    .line 611
    :cond_4
    return v0

    .line 600
    :cond_5
    :goto_0
    return v1
.end method

.method public static isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    .line 74
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiConfigurationUtil;->doesUidBelongToAnyProfile(ILjava/util/List;)Z

    move-result v0

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

.method public static validate(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "isAdd"    # Z

    .line 565
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiConfigurationUtil;->validateSsid(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 566
    return v1

    .line 568
    :cond_0
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->validateBitSets(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 569
    return v1

    .line 571
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->validateKeyMgmt(Ljava/util/BitSet;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 572
    return v1

    .line 574
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 575
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiConfigurationUtil;->validatePsk(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 576
    return v1

    .line 578
    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->validateIpConfiguration(Landroid/net/IpConfiguration;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 579
    return v1

    .line 582
    :cond_4
    return v2
.end method

.method private static validateBitSet(Ljava/util/BitSet;I)Z
    .locals 2
    .param p0, "bitSet"    # Ljava/util/BitSet;
    .param p1, "validValuesLength"    # I

    .line 445
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 446
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 447
    .local v1, "clonedBitset":Ljava/util/BitSet;
    invoke-virtual {v1, v0, p1}, Ljava/util/BitSet;->clear(II)V

    .line 448
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private static validateBitSets(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 454
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForWapiPskNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 455
    const-string v0, "WifiConfigurationUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validateBitsets : WAPI CERT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_0
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForWapiCertNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    const-string v0, "WifiConfigurationUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validateBitsets : WAPI CERT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConfigurationUtil;->validateBitSet(Ljava/util/BitSet;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 464
    const-string v0, "WifiConfigurationUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validateBitsets failed: invalid allowedKeyManagement bitset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return v1

    .line 470
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConfigurationUtil;->validateBitSet(Ljava/util/BitSet;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 472
    const-string v0, "WifiConfigurationUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validateBitsets failed: invalid allowedProtocols bitset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return v1

    .line 477
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConfigurationUtil;->validateBitSet(Ljava/util/BitSet;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 479
    const-string v0, "WifiConfigurationUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validateBitsets failed: invalid allowedAuthAlgorithms bitset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return v1

    .line 484
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConfigurationUtil;->validateBitSet(Ljava/util/BitSet;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 486
    const-string v0, "WifiConfigurationUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validateBitsets failed: invalid allowedGroupCiphers bitset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v1

    .line 491
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConfigurationUtil;->validateBitSet(Ljava/util/BitSet;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 493
    const-string v0, "WifiConfigurationUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validateBitsets failed: invalid allowedPairwiseCiphers bitset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return v1

    .line 497
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private static validateIpConfiguration(Landroid/net/IpConfiguration;)Z
    .locals 4
    .param p0, "ipConfig"    # Landroid/net/IpConfiguration;

    .line 520
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 521
    const-string v1, "WifiConfigurationUtil"

    const-string v2, "validateIpConfiguration failed: null IpConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return v0

    .line 524
    :cond_0
    invoke-virtual {p0}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v2, :cond_2

    .line 525
    invoke-virtual {p0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    .line 526
    .local v1, "staticIpConfig":Landroid/net/StaticIpConfiguration;
    if-nez v1, :cond_1

    .line 527
    const-string v2, "WifiConfigurationUtil"

    const-string v3, "validateIpConfiguration failed: null StaticIpConfiguration"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return v0

    .line 530
    :cond_1
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-nez v2, :cond_2

    .line 531
    const-string v2, "WifiConfigurationUtil"

    const-string v3, "validateIpConfiguration failed: null static ip Address"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return v0

    .line 535
    .end local v1    # "staticIpConfig":Landroid/net/StaticIpConfiguration;
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static validateKeyMgmt(Ljava/util/BitSet;)Z
    .locals 4
    .param p0, "keyMgmnt"    # Ljava/util/BitSet;

    .line 501
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 502
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    .line 503
    const-string v0, "WifiConfigurationUtil"

    const-string v1, "validateKeyMgmt failed: cardinality > 4"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return v3

    .line 506
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    const-string v0, "WifiConfigurationUtil"

    const-string v1, "validateKeyMgmt failed: not WPA_EAP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return v3

    .line 510
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 511
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 512
    const-string v0, "WifiConfigurationUtil"

    const-string v1, "validateKeyMgmt failed: not PSK or 8021X"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return v3

    .line 516
    :cond_2
    return v1
.end method

.method private static validatePsk(Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "psk"    # Ljava/lang/String;
    .param p1, "isAdd"    # Z

    .line 398
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 399
    if-nez p0, :cond_2

    .line 400
    const-string v0, "WifiConfigurationUtil"

    const-string v2, "validatePsk: null string"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return v1

    .line 404
    :cond_0
    if-nez p0, :cond_1

    .line 406
    return v0

    .line 407
    :cond_1
    const-string v2, "*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    return v0

    .line 413
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 414
    const-string v0, "WifiConfigurationUtil"

    const-string v2, "validatePsk failed: empty string"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return v1

    .line 417
    :cond_3
    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 419
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 420
    .local v2, "pskBytes":[B
    array-length v3, v2

    const/16 v4, 0xa

    if-ge v3, v4, :cond_4

    .line 421
    const-string v0, "WifiConfigurationUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validatePsk failed: ascii string size too small: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return v1

    .line 424
    :cond_4
    array-length v3, v2

    const/16 v4, 0x41

    if-le v3, v4, :cond_5

    .line 425
    const-string v0, "WifiConfigurationUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validatePsk failed: ascii string size too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return v1

    .line 428
    .end local v2    # "pskBytes":[B
    :cond_5
    goto :goto_0

    .line 430
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_7

    .line 431
    const-string v0, "WifiConfigurationUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validatePsk failed: hex string size mismatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return v1

    .line 436
    :cond_7
    :goto_0
    :try_start_0
    invoke-static {p0}, Lcom/android/server/wifi/util/NativeUtil;->hexOrQuotedStringToBytes(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    nop

    .line 441
    return v0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "WifiConfigurationUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validatePsk failed: malformed string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return v1
.end method

.method private static validateSsid(Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "isAdd"    # Z

    .line 349
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 350
    if-nez p0, :cond_1

    .line 351
    const-string v0, "WifiConfigurationUtil"

    const-string v2, "validateSsid : null string"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return v1

    .line 355
    :cond_0
    if-nez p0, :cond_1

    .line 357
    return v0

    .line 360
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    const-string v0, "WifiConfigurationUtil"

    const-string v2, "validateSsid failed: empty string"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return v1

    .line 364
    :cond_2
    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 366
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 367
    .local v2, "ssidBytes":[B
    array-length v3, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    .line 368
    const-string v0, "WifiConfigurationUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validateSsid failed: utf-8 ssid string size too small: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return v1

    .line 372
    :cond_3
    array-length v3, v2

    const/16 v4, 0x32

    if-le v3, v4, :cond_4

    .line 373
    const-string v0, "WifiConfigurationUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validateSsid failed: utf-8 ssid string size too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return v1

    .line 377
    .end local v2    # "ssidBytes":[B
    :cond_4
    goto :goto_0

    .line 379
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_6

    .line 380
    const-string v0, "WifiConfigurationUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validateSsid failed: hex string size too small: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return v1

    .line 383
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_7

    .line 384
    const-string v0, "WifiConfigurationUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validateSsid failed: hex string size too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return v1

    .line 389
    :cond_7
    :goto_0
    :try_start_0
    invoke-static {p0}, Lcom/android/server/wifi/util/NativeUtil;->decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    nop

    .line 394
    return v0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "WifiConfigurationUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validateSsid failed: malformed string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return v1
.end method
