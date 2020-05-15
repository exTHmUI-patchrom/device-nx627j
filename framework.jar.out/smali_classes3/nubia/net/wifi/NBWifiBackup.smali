.class public Lnubia/net/wifi/NBWifiBackup;
.super Ljava/lang/Object;
.source "NBWifiBackup.java"


# static fields
.field private static final BYTE_COPY_INITIAL_POINT:I = 0x0

.field private static final CONFIG_BYTE:I = 0x100

.field private static final TAG:Ljava/lang/String; = "NBWifiBackup"

.field private static final TLV_EAP_ANONYMOUSIDENTIY:I = 0x9

.field private static final TLV_EAP_CACERTIFICATEALIAS:I = 0xb

.field private static final TLV_EAP_EAPMETHOD:I = 0xc

.field private static final TLV_EAP_IDENTITY:I = 0xe

.field private static final TLV_EAP_PASSWORD:I = 0xa

.field private static final TLV_EAP_PHASE2METHOD:I = 0xd

.field private static final TLV_HIDDEN_SSID:I = 0x3

.field private static final TLV_KEY_MGMT:I = 0x2

.field private static final TLV_PSK:I = 0x1

.field private static final TLV_SSID:I


# instance fields
.field private mConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 1
    .param p1, "manager"    # Landroid/net/wifi/WifiManager;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lnubia/net/wifi/NBWifiBackup;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnubia/net/wifi/NBWifiBackup;->mHiddenConfigs:Ljava/util/List;

    .line 39
    return-void
.end method

.method private Array2Typeint([B)I
    .locals 4
    .param p1, "bytes"    # [B

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 431
    rsub-int/lit8 v2, v1, 0x3

    mul-int/lit8 v2, v2, 0x8

    .line 432
    .local v2, "shift":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 430
    .end local v2    # "shift":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private TlvWifiConfig(Landroid/net/wifi/WifiConfiguration;[B)I
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "bytes"    # [B

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "configBytes":[B
    const/4 v1, 0x0

    .line 119
    .local v1, "length":I
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lnubia/net/wifi/NBWifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v0

    .line 121
    const-string v2, "NBWifiBackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config.SSID ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    array-length v2, v0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 124
    array-length v1, v0

    .line 126
    :cond_0
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    const/4 v2, 0x1

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lnubia/net/wifi/NBWifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v0

    .line 128
    array-length v2, v0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 130
    array-length v2, v0

    add-int/2addr v1, v2

    .line 132
    :cond_1
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v2, :cond_2

    .line 133
    const/4 v2, 0x3

    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-direct {p0, v2, v4}, Lnubia/net/wifi/NBWifiBackup;->tlvencode(II)[B

    move-result-object v0

    .line 134
    array-length v2, v0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 136
    array-length v2, v0

    add-int/2addr v1, v2

    .line 138
    :cond_2
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 139
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    const/16 v2, 0x9

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 141
    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-direct {p0, v2, v4}, Lnubia/net/wifi/NBWifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v0

    .line 142
    array-length v2, v0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 144
    array-length v2, v0

    add-int/2addr v1, v2

    .line 146
    :cond_3
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 147
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    const/16 v2, 0xa

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lnubia/net/wifi/NBWifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v0

    .line 149
    array-length v2, v0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 151
    array-length v2, v0

    add-int/2addr v1, v2

    .line 153
    :cond_4
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 154
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 155
    const/16 v2, 0xb

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 156
    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-direct {p0, v2, v4}, Lnubia/net/wifi/NBWifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v0

    .line 157
    array-length v2, v0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 159
    array-length v2, v0

    add-int/2addr v1, v2

    .line 161
    :cond_5
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    .line 162
    const/16 v2, 0xc

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lnubia/net/wifi/NBWifiBackup;->tlvencode(II)[B

    move-result-object v0

    .line 163
    array-length v2, v0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 165
    array-length v2, v0

    add-int/2addr v1, v2

    .line 167
    :cond_6
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    if-eqz v2, :cond_7

    .line 168
    const/16 v2, 0xd

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 169
    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    .line 168
    invoke-direct {p0, v2, v4}, Lnubia/net/wifi/NBWifiBackup;->tlvencode(II)[B

    move-result-object v0

    .line 170
    array-length v2, v0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 172
    array-length v2, v0

    add-int/2addr v1, v2

    .line 174
    :cond_7
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 175
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    .line 176
    const/16 v2, 0xe

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lnubia/net/wifi/NBWifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v0

    .line 177
    array-length v2, v0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 179
    array-length v2, v0

    add-int/2addr v1, v2

    .line 182
    :cond_8
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lnubia/net/wifi/NBWifiBackup;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "keyMgmt":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-direct {p0, v4, v2}, Lnubia/net/wifi/NBWifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v0

    .line 184
    array-length v4, v0

    invoke-static {v0, v3, p2, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 186
    array-length v3, v0

    add-int/2addr v1, v3

    .line 187
    return v1
.end method

.method private int2TypeArray(I)[B
    .locals 3
    .param p1, "i"    # I

    .line 419
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 420
    .local v0, "mByte":[B
    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 421
    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 422
    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 423
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 424
    return-object v0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 479
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

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

.method private lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # [Ljava/lang/String;

    .line 456
    array-length v0, p2

    .line 457
    .local v0, "size":I
    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 458
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 459
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    return v1

    .line 458
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    .end local v1    # "i":I
    :cond_1
    const-string v1, "NBWifiBackup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lookupString: failed to look-up string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v1, -0x1

    return v1
.end method

.method private makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "set"    # Ljava/util/BitSet;
    .param p2, "str"    # [Ljava/lang/String;

    .line 438
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 439
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 444
    .local v1, "nextSetBit":I
    array-length v2, p2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    .line 445
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 446
    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 452
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseVersion01Config([B)Ljava/util/List;
    .locals 13
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "waitByte":[B
    const/4 v1, 0x2

    .line 374
    .local v1, "flag":I
    const/4 v2, 0x0

    .line 375
    .local v2, "number":I
    const/4 v3, 0x4

    .line 376
    .local v3, "byteCopyLength":I
    const/16 v4, 0x8

    .line 377
    .local v4, "byteStepLength":I
    const/4 v5, 0x4

    new-array v6, v5, [B

    .line 378
    .local v6, "lByte":[B
    new-array v5, v5, [B

    .line 379
    .local v5, "qByte":[B
    new-instance v7, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v7}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 380
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v8, "backconfig":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    array-length v9, p1

    if-ge v1, v9, :cond_3

    .line 382
    const-string v9, "NBWifiBackup"

    const-string v10, "parseVersion01Config: WiFi backup version 01"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v9, 0x0

    invoke-static {p1, v1, v5, v9, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 384
    add-int v10, v1, v3

    invoke-static {p1, v10, v6, v9, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 386
    invoke-direct {p0, v6}, Lnubia/net/wifi/NBWifiBackup;->Array2Typeint([B)I

    move-result v2

    .line 387
    invoke-direct {p0, v5}, Lnubia/net/wifi/NBWifiBackup;->Array2Typeint([B)I

    move-result v10

    .line 388
    .local v10, "ztype":I
    if-nez v10, :cond_0

    .line 389
    new-array v0, v2, [B

    .line 390
    add-int v11, v1, v4

    invoke-static {p1, v11, v0, v9, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 392
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v9, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 393
    add-int v9, v2, v4

    add-int/2addr v1, v9

    goto :goto_1

    .line 394
    :cond_0
    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 395
    new-array v0, v2, [B

    .line 396
    add-int v11, v1, v4

    invoke-static {p1, v11, v0, v9, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 398
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v9, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 399
    add-int v9, v2, v4

    add-int/2addr v1, v9

    goto :goto_1

    .line 400
    :cond_1
    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 401
    new-array v0, v2, [B

    .line 402
    add-int v11, v1, v4

    invoke-static {p1, v11, v0, v9, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 404
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 405
    .local v9, "keyMgmt":Ljava/lang/String;
    iget-object v11, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->clear()V

    .line 406
    iget-object v11, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, v9}, Lnubia/net/wifi/NBWifiBackup;->setKeyMgmt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    .line 407
    new-instance v11, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v11, v7}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v11, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v11}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object v7, v11

    .line 409
    add-int v11, v2, v4

    add-int/2addr v1, v11

    .line 410
    .end local v9    # "keyMgmt":Ljava/lang/String;
    nop

    .line 414
    .end local v10    # "ztype":I
    :goto_1
    goto :goto_0

    .line 411
    .restart local v10    # "ztype":I
    :cond_2
    const-string v9, "NBWifiBackup"

    const-string v11, "parseVersion01Config: version 01 error byte"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    nop

    .line 415
    .end local v10    # "ztype":I
    :cond_3
    return-object v8
.end method

.method private parseVersion02Config([B)Ljava/util/List;
    .locals 14
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 243
    const/4 v0, 0x2

    .line 244
    .local v0, "compareByteLength":I
    const/4 v1, 0x4

    .line 245
    .local v1, "byteCopyLength":I
    const/16 v2, 0x8

    .line 246
    .local v2, "byteStepLength":I
    const/4 v3, -0x1

    .line 247
    .local v3, "tagValue":I
    const/4 v4, 0x0

    .line 248
    .local v4, "lengthValue":I
    const/4 v5, 0x0

    .line 249
    .local v5, "valueByte":[B
    const/4 v6, 0x4

    new-array v7, v6, [B

    .line 250
    .local v7, "lengthByte":[B
    new-array v6, v6, [B

    .line 251
    .local v6, "tagByte":[B
    new-instance v8, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v8}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 252
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v9, "backconfig":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    array-length v10, p1

    if-ge v0, v10, :cond_5

    .line 254
    const-string v10, "NBWifiBackup"

    const-string v11, "parseVersion02Config: WiFi backup version 02"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v10, 0x0

    invoke-static {p1, v0, v6, v10, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 257
    add-int v11, v0, v1

    invoke-static {p1, v11, v7, v10, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 259
    invoke-direct {p0, v7}, Lnubia/net/wifi/NBWifiBackup;->Array2Typeint([B)I

    move-result v4

    .line 260
    invoke-direct {p0, v6}, Lnubia/net/wifi/NBWifiBackup;->Array2Typeint([B)I

    move-result v3

    .line 261
    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    .line 349
    :cond_0
    array-length v11, p1

    if-ge v0, v11, :cond_1

    .line 350
    add-int v11, v4, v2

    add-int/2addr v0, v11

    .line 351
    invoke-static {p1, v0, v6, v10, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 353
    add-int v11, v0, v1

    invoke-static {p1, v11, v7, v10, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 355
    invoke-direct {p0, v7}, Lnubia/net/wifi/NBWifiBackup;->Array2Typeint([B)I

    move-result v4

    .line 356
    invoke-direct {p0, v6}, Lnubia/net/wifi/NBWifiBackup;->Array2Typeint([B)I

    move-result v3

    .line 357
    const/4 v11, 0x2

    if-ne v3, v11, :cond_0

    .line 358
    add-int v10, v4, v2

    add-int/2addr v0, v10

    .line 359
    new-instance v10, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v10}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object v8, v10

    .line 360
    nop

    .line 363
    :cond_1
    const-string v10, "NBWifiBackup"

    const-string v11, "parseVersion02Config: bypass a config due to No Tag match!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    goto :goto_0

    .line 340
    :pswitch_0
    new-array v5, v4, [B

    .line 341
    add-int v11, v0, v2

    invoke-static {p1, v11, v5, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 343
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    .line 344
    .local v10, "strIdentity":Ljava/lang/String;
    iget-object v11, v8, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 345
    add-int v11, v4, v2

    add-int/2addr v0, v11

    .line 346
    goto :goto_0

    .line 332
    .end local v10    # "strIdentity":Ljava/lang/String;
    :pswitch_1
    new-array v5, v4, [B

    .line 333
    add-int v11, v0, v2

    invoke-static {p1, v11, v5, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 335
    invoke-direct {p0, v5}, Lnubia/net/wifi/NBWifiBackup;->Array2Typeint([B)I

    move-result v10

    .line 336
    .local v10, "iPhase2Method":I
    iget-object v11, v8, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 337
    add-int v11, v4, v2

    add-int/2addr v0, v11

    .line 338
    goto :goto_0

    .line 324
    .end local v10    # "iPhase2Method":I
    :pswitch_2
    new-array v5, v4, [B

    .line 325
    add-int v11, v0, v2

    invoke-static {p1, v11, v5, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 327
    invoke-direct {p0, v5}, Lnubia/net/wifi/NBWifiBackup;->Array2Typeint([B)I

    move-result v10

    .line 328
    .local v10, "iEapMethod":I
    iget-object v11, v8, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 329
    add-int v11, v4, v2

    add-int/2addr v0, v11

    .line 330
    goto/16 :goto_0

    .line 316
    .end local v10    # "iEapMethod":I
    :pswitch_3
    new-array v5, v4, [B

    .line 317
    add-int v11, v0, v2

    invoke-static {p1, v11, v5, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 319
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    .line 320
    .local v10, "strCaCertificateAlias":Ljava/lang/String;
    iget-object v11, v8, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 321
    add-int v11, v4, v2

    add-int/2addr v0, v11

    .line 322
    goto/16 :goto_0

    .line 308
    .end local v10    # "strCaCertificateAlias":Ljava/lang/String;
    :pswitch_4
    new-array v5, v4, [B

    .line 309
    add-int v11, v0, v2

    invoke-static {p1, v11, v5, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 311
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    .line 312
    .local v10, "strPassword":Ljava/lang/String;
    iget-object v11, v8, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 313
    add-int v11, v4, v2

    add-int/2addr v0, v11

    .line 314
    goto/16 :goto_0

    .line 300
    .end local v10    # "strPassword":Ljava/lang/String;
    :pswitch_5
    new-array v5, v4, [B

    .line 301
    add-int v11, v0, v2

    invoke-static {p1, v11, v5, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 303
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    .line 304
    .local v10, "strAnonymousIdentity":Ljava/lang/String;
    iget-object v11, v8, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 305
    add-int v11, v4, v2

    add-int/2addr v0, v11

    .line 306
    goto/16 :goto_0

    .line 277
    .end local v10    # "strAnonymousIdentity":Ljava/lang/String;
    :pswitch_6
    new-array v5, v4, [B

    .line 278
    add-int v11, v0, v2

    invoke-static {p1, v11, v5, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 280
    invoke-direct {p0, v5}, Lnubia/net/wifi/NBWifiBackup;->Array2Typeint([B)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    goto :goto_1

    :cond_2
    move v12, v10

    :goto_1
    iput-boolean v12, v8, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 281
    add-int v10, v4, v2

    add-int/2addr v0, v10

    .line 282
    goto/16 :goto_0

    .line 284
    :pswitch_7
    new-array v5, v4, [B

    .line 285
    add-int v11, v0, v2

    invoke-static {p1, v11, v5, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 287
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    .line 288
    .local v10, "keyMgmt":Ljava/lang/String;
    iget-object v11, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->clear()V

    .line 289
    iget-object v11, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, v10}, Lnubia/net/wifi/NBWifiBackup;->setKeyMgmt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    .line 290
    add-int v11, v4, v2

    add-int/2addr v0, v11

    .line 291
    iget-object v11, v8, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v11, v8, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 292
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    if-ne v11, v12, :cond_4

    .line 293
    :cond_3
    const-string v11, "NBWifiBackup"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseVersion02Config: add config to revert list, ssid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v11, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v11, v8}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_4
    new-instance v11, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v11}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object v8, v11

    .line 298
    goto/16 :goto_0

    .line 270
    .end local v10    # "keyMgmt":Ljava/lang/String;
    :pswitch_8
    new-array v5, v4, [B

    .line 271
    add-int v11, v0, v2

    invoke-static {p1, v11, v5, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 273
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v10, v8, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 274
    add-int v10, v4, v2

    add-int/2addr v0, v10

    .line 275
    goto/16 :goto_0

    .line 263
    :pswitch_9
    new-array v5, v4, [B

    .line 264
    add-int v11, v0, v2

    invoke-static {p1, v11, v5, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 266
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v10, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 267
    add-int v10, v4, v2

    add-int/2addr v0, v10

    .line 268
    goto/16 :goto_0

    .line 367
    :cond_5
    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setKeyMgmt(Ljava/lang/String;)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 466
    invoke-direct {p0, p1}, Lnubia/net/wifi/NBWifiBackup;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "vals":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 469
    .local v3, "val":Ljava/lang/String;
    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lnubia/net/wifi/NBWifiBackup;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 470
    .local v4, "index":I
    if-ltz v4, :cond_0

    .line 471
    return v4

    .line 468
    .end local v3    # "val":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    .end local v0    # "vals":[Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private tlvdecode([B)Ljava/util/List;
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 226
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 227
    .local v0, "version":[B
    const/4 v1, 0x0

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    .line 228
    const/4 v1, 0x1

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    .line 229
    aget-byte v2, v0, v1

    .line 234
    .local v2, "versionNum":I
    if-ne v2, v1, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lnubia/net/wifi/NBWifiBackup;->parseVersion01Config([B)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 237
    :cond_0
    invoke-direct {p0, p1}, Lnubia/net/wifi/NBWifiBackup;->parseVersion02Config([B)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private tlvencode(II)[B
    .locals 7
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "tag":[B
    const/4 v1, 0x0

    .line 211
    .local v1, "length":[B
    const/4 v2, 0x0

    .line 212
    .local v2, "mvalue":[B
    const/4 v3, 0x0

    .line 213
    .local v3, "tmpValue":[B
    invoke-direct {p0, p1}, Lnubia/net/wifi/NBWifiBackup;->int2TypeArray(I)[B

    move-result-object v0

    .line 214
    invoke-direct {p0, p2}, Lnubia/net/wifi/NBWifiBackup;->int2TypeArray(I)[B

    move-result-object v3

    .line 216
    array-length v4, v3

    invoke-direct {p0, v4}, Lnubia/net/wifi/NBWifiBackup;->int2TypeArray(I)[B

    move-result-object v1

    .line 217
    array-length v4, v0

    array-length v5, v3

    add-int/2addr v4, v5

    array-length v5, v1

    add-int/2addr v4, v5

    new-array v2, v4, [B

    .line 218
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 219
    array-length v4, v0

    array-length v6, v1

    invoke-static {v1, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 220
    array-length v4, v0

    array-length v6, v1

    add-int/2addr v4, v6

    array-length v6, v3

    invoke-static {v3, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 222
    return-object v2
.end method

.method private tlvencode(ILjava/lang/String;)[B
    .locals 7
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "tag":[B
    const/4 v1, 0x0

    .line 193
    .local v1, "length":[B
    const/4 v2, 0x0

    .line 194
    .local v2, "mvalue":[B
    const/4 v3, 0x0

    .line 195
    .local v3, "tmpValue":[B
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    invoke-direct {p0, p1}, Lnubia/net/wifi/NBWifiBackup;->int2TypeArray(I)[B

    move-result-object v0

    .line 197
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 198
    array-length v4, v3

    invoke-direct {p0, v4}, Lnubia/net/wifi/NBWifiBackup;->int2TypeArray(I)[B

    move-result-object v1

    .line 199
    array-length v4, v0

    array-length v5, v3

    add-int/2addr v4, v5

    array-length v5, v1

    add-int/2addr v4, v5

    new-array v2, v4, [B

    .line 200
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 201
    array-length v4, v0

    array-length v6, v1

    invoke-static {v1, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 202
    array-length v4, v0

    array-length v6, v1

    add-int/2addr v4, v6

    array-length v6, v3

    invoke-static {v3, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 205
    :cond_0
    return-object v2
.end method


# virtual methods
.method public backNumWifiInformation()I
    .locals 1

    .line 107
    iget-object v0, p0, Lnubia/net/wifi/NBWifiBackup;->mConfigs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/net/wifi/NBWifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lnubia/net/wifi/NBWifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 110
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getConfigured(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)[B"
        }
    .end annotation

    .line 46
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v0, 0x0

    .line 47
    .local v0, "retBackData":[B
    const/4 v1, 0x0

    .line 48
    .local v1, "backData":[B
    const/16 v2, 0x100

    new-array v3, v2, [B

    .line 49
    .local v3, "configByte":[B
    const/4 v4, 0x0

    .line 50
    .local v4, "configByteLen":I
    const/4 v5, 0x0

    .line 52
    .local v5, "number":I
    iget-object v6, p0, Lnubia/net/wifi/NBWifiBackup;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lnubia/net/wifi/NBWifiBackup;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 53
    const/4 v4, 0x0

    .line 54
    iput-object p1, p0, Lnubia/net/wifi/NBWifiBackup;->mConfigs:Ljava/util/List;

    .line 55
    iget-object v6, p0, Lnubia/net/wifi/NBWifiBackup;->mHiddenConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 56
    iget-object v6, p0, Lnubia/net/wifi/NBWifiBackup;->mConfigs:Ljava/util/List;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    iget-object v6, p0, Lnubia/net/wifi/NBWifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 57
    iget-object v6, p0, Lnubia/net/wifi/NBWifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v6, v2

    new-array v1, v6, [B

    .line 58
    aput-byte v7, v1, v7

    .line 59
    const/4 v2, 0x1

    const/4 v6, 0x2

    aput-byte v6, v1, v2

    .line 60
    const/4 v2, 0x2

    .line 61
    .end local v5    # "number":I
    .local v2, "number":I
    iget-object v5, p0, Lnubia/net/wifi/NBWifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 62
    .local v6, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v8, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v8, :cond_0

    .line 63
    iget-object v8, p0, Lnubia/net/wifi/NBWifiBackup;->mHiddenConfigs:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_0

    .line 66
    :cond_0
    invoke-direct {p0, v6, v3}, Lnubia/net/wifi/NBWifiBackup;->TlvWifiConfig(Landroid/net/wifi/WifiConfiguration;[B)I

    move-result v4

    .line 67
    invoke-static {v3, v7, v1, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 69
    add-int/2addr v2, v4

    .line 70
    .end local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 71
    :cond_1
    iget-object v5, p0, Lnubia/net/wifi/NBWifiBackup;->mHiddenConfigs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 72
    .restart local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v6, v3}, Lnubia/net/wifi/NBWifiBackup;->TlvWifiConfig(Landroid/net/wifi/WifiConfiguration;[B)I

    move-result v4

    .line 73
    invoke-static {v3, v7, v1, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 75
    add-int/2addr v2, v4

    .line 76
    .end local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1

    .line 78
    .end local v2    # "number":I
    .restart local v5    # "number":I
    :cond_2
    move v2, v5

    .end local v5    # "number":I
    .restart local v2    # "number":I
    :cond_3
    if-eqz v1, :cond_4

    array-length v5, v1

    if-eqz v5, :cond_4

    .line 79
    new-array v0, v2, [B

    .line 80
    invoke-static {v1, v7, v0, v7, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 83
    :cond_4
    return-object v0

    .line 85
    .end local v2    # "number":I
    .restart local v5    # "number":I
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method public setConfigured([B)Ljava/util/List;
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lnubia/net/wifi/NBWifiBackup;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lnubia/net/wifi/NBWifiBackup;->tlvdecode([B)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
