.class public Lcom/android/server/wifi/hotspot2/PasspointProvider;
.super Ljava/lang/Object;
.source "PasspointProvider.java"


# static fields
.field private static final ALIAS_HS_TYPE:Ljava/lang/String; = "HS2_"

.field private static final TAG:Ljava/lang/String; = "PasspointProvider"


# instance fields
.field private final mAuthParam:Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;

.field private mCaCertificateAlias:Ljava/lang/String;

.field private mClientCertificateAlias:Ljava/lang/String;

.field private mClientPrivateKeyAlias:Ljava/lang/String;

.field private final mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field private final mCreatorUid:I

.field private final mEAPMethodID:I

.field private mHasEverConnected:Z

.field private final mImsiParameter:Lcom/android/server/wifi/IMSIParameter;

.field private mIsShared:Z

.field private final mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

.field private final mMatchingSIMImsiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderId:J


# direct methods
.method public constructor <init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JI)V
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .param p2, "keyStore"    # Lcom/android/server/wifi/WifiKeyStore;
    .param p3, "simAccessor"    # Lcom/android/server/wifi/SIMAccessor;
    .param p4, "providerId"    # J
    .param p6, "creatorUid"    # I

    .line 96
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wifi/hotspot2/PasspointProvider;-><init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .param p2, "keyStore"    # Lcom/android/server/wifi/WifiKeyStore;
    .param p3, "simAccessor"    # Lcom/android/server/wifi/SIMAccessor;
    .param p4, "providerId"    # J
    .param p6, "creatorUid"    # I
    .param p7, "caCertificateAlias"    # Ljava/lang/String;
    .param p8, "clientCertificateAlias"    # Ljava/lang/String;
    .param p9, "clientPrivateKeyAlias"    # Ljava/lang/String;
    .param p10, "hasEverConnected"    # Z
    .param p11, "isShared"    # Z

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v0, p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 105
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    .line 106
    iput-wide p4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    .line 107
    iput p6, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCreatorUid:I

    .line 108
    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    .line 109
    iput-object p8, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    .line 110
    iput-object p9, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    .line 111
    iput-boolean p10, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mHasEverConnected:Z

    .line 112
    iput-boolean p11, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mIsShared:Z

    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 116
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mEAPMethodID:I

    .line 117
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 118
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getNonEapInnerMethod()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->getAuthTypeID(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mAuthParam:Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;

    .line 119
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mImsiParameter:Lcom/android/server/wifi/IMSIParameter;

    .line 120
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mMatchingSIMImsiList:Ljava/util/List;

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->getCertCredential()Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mEAPMethodID:I

    .line 123
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mAuthParam:Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;

    .line 124
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mImsiParameter:Lcom/android/server/wifi/IMSIParameter;

    .line 125
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mMatchingSIMImsiList:Ljava/util/List;

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getEapType()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mEAPMethodID:I

    .line 128
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mAuthParam:Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;

    .line 129
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 130
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/android/server/wifi/IMSIParameter;->build(Ljava/lang/String;)Lcom/android/server/wifi/IMSIParameter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mImsiParameter:Lcom/android/server/wifi/IMSIParameter;

    .line 131
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mImsiParameter:Lcom/android/server/wifi/IMSIParameter;

    invoke-virtual {p3, v0}, Lcom/android/server/wifi/SIMAccessor;->getMatchingImsis(Lcom/android/server/wifi/IMSIParameter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mMatchingSIMImsiList:Ljava/util/List;

    .line 133
    :goto_0
    return-void
.end method

.method private buildEnterpriseConfigForCertCredential(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 544
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 545
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method private buildEnterpriseConfigForSimCredential(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "credential"    # Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 557
    const/4 v0, -0x1

    .line 558
    .local v0, "eapMethod":I
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getEapType()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    const/16 v2, 0x17

    if-eq v1, v2, :cond_1

    const/16 v2, 0x32

    if-eq v1, v2, :cond_0

    .line 571
    const-string v1, "PasspointProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported EAP Method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getEapType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 566
    :cond_0
    const/4 v0, 0x6

    .line 567
    goto :goto_0

    .line 563
    :cond_1
    const/4 v0, 0x5

    .line 564
    goto :goto_0

    .line 560
    :cond_2
    const/4 v0, 0x4

    .line 561
    nop

    .line 574
    :goto_0
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 575
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method private buildEnterpriseConfigForUserCredential(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "credential"    # Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 512
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getPassword()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 513
    .local v0, "pwOctets":[B
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 514
    .local v2, "decodedPassword":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 515
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 517
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 518
    const/4 v4, 0x0

    .line 519
    .local v4, "phase2Method":I
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getNonEapInnerMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x1347f

    if-eq v6, v7, :cond_2

    const v1, 0x25b35e8e

    if-eq v6, v1, :cond_1

    const v1, 0x797bbb1b

    if-eq v6, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "MS-CHAP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "MS-CHAP-V2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_2
    const-string v3, "PAP"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 532
    const-string v1, "PasspointProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported Auth: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getNonEapInnerMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 527
    :pswitch_0
    const/4 v4, 0x3

    .line 528
    goto :goto_2

    .line 524
    :pswitch_1
    const/4 v4, 0x2

    .line 525
    goto :goto_2

    .line 521
    :pswitch_2
    const/4 v4, 0x1

    .line 522
    nop

    .line 535
    :goto_2
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 536
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static buildSimCredentialFromEnterpriseConfig(ILandroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    .locals 3
    .param p0, "eapType"    # I
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 654
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>()V

    .line 655
    .local v0, "simCredential":Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPlmn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    const-string v1, "PasspointProvider"

    const-string v2, "Missing IMSI for SIM credential"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v1, 0x0

    return-object v1

    .line 659
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPlmn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setImsi(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0, p0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    .line 661
    return-object v0
.end method

.method private static buildUserCredentialFromEnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .locals 6
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 608
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;-><init>()V

    .line 609
    .local v0, "userCredential":Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setEapType(I)V

    .line 611
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 612
    const-string v1, "PasspointProvider"

    const-string v3, "Missing username for user credential"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-object v2

    .line 615
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setUsername(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    const-string v1, "PasspointProvider"

    const-string v3, "Missing password for user credential"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-object v2

    .line 621
    :cond_1
    new-instance v1, Ljava/lang/String;

    .line 622
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 624
    .local v1, "encodedPassword":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setPassword(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 637
    const-string v3, "PasspointProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported phase2 method for TTLS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-object v2

    .line 634
    :pswitch_0
    const-string v2, "MS-CHAP-V2"

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    .line 635
    goto :goto_0

    .line 631
    :pswitch_1
    const-string v2, "MS-CHAP"

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    .line 632
    goto :goto_0

    .line 628
    :pswitch_2
    const-string v2, "PAP"

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    .line 629
    nop

    .line 640
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertFromWifiConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 7
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 347
    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    .line 350
    .local v0, "passpointConfig":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    new-instance v1, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    .line 351
    .local v1, "homeSp":Landroid/net/wifi/hotspot2/pps/HomeSp;
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 352
    const-string v2, "PasspointProvider"

    const-string v4, "Missing FQDN"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-object v3

    .line 355
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    if-eqz v2, :cond_1

    .line 358
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    array-length v4, v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setRoamingConsortiumOis([J)V

    .line 361
    :cond_1
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    .line 364
    new-instance v2, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {v2}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    .line 365
    .local v2, "credential":Landroid/net/wifi/hotspot2/pps/Credential;
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    .line 366
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 389
    :pswitch_0
    const-string v4, "PasspointProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupport EAP method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v3

    .line 385
    :pswitch_1
    const/16 v4, 0x32

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v4, v5}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->buildSimCredentialFromEnterpriseConfig(ILandroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    .line 387
    goto :goto_0

    .line 381
    :pswitch_2
    const/16 v4, 0x17

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v4, v5}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->buildSimCredentialFromEnterpriseConfig(ILandroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    .line 383
    goto :goto_0

    .line 377
    :pswitch_3
    const/16 v4, 0x12

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v4, v5}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->buildSimCredentialFromEnterpriseConfig(ILandroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    .line 379
    goto :goto_0

    .line 368
    :pswitch_4
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->buildUserCredentialFromEnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    .line 370
    goto :goto_0

    .line 372
    :pswitch_5
    new-instance v4, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-direct {v4}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;-><init>()V

    .line 373
    .local v4, "certCred":Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    const-string v5, "x509v3"

    invoke-virtual {v4, v5}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertType(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v2, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    .line 375
    nop

    .line 392
    .end local v4    # "certCred":Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    :goto_0
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getCertCredential()Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v4

    if-nez v4, :cond_2

    .line 393
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v4

    if-nez v4, :cond_2

    .line 394
    const-string v4, "PasspointProvider"

    const-string v5, "Missing credential"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-object v3

    .line 397
    :cond_2
    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    .line 399
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getClientCertificate([Ljava/security/cert/X509Certificate;[B)Ljava/security/cert/X509Certificate;
    .locals 7
    .param p0, "certChain"    # [Ljava/security/cert/X509Certificate;
    .param p1, "expectedSha256Fingerprint"    # [B

    .line 445
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 446
    return-object v0

    .line 449
    :cond_0
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 450
    .local v1, "digester":Ljava/security/MessageDigest;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 451
    .local v4, "certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 452
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 453
    .local v5, "fingerprint":[B
    invoke-static {p1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    .line 454
    return-object v4

    .line 450
    .end local v4    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v5    # "fingerprint":[B
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 459
    .end local v1    # "digester":Ljava/security/MessageDigest;
    :cond_2
    nop

    .line 461
    return-object v0

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Ljava/security/GeneralSecurityException;
    return-object v0
.end method

.method private matchProviderExceptFor3GPP(Ljava/util/Map;Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;)Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .locals 12
    .param p2, "roamingConsortium"    # Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;",
            "Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;",
            ")",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;"
        }
    .end annotation

    .line 475
    .local p1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;>;"
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 476
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 477
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mImsiParameter:Lcom/android/server/wifi/IMSIParameter;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mMatchingSIMImsiList:Ljava/util/List;

    .line 475
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchDomainName(Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;Ljava/lang/String;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getRoamingConsortiumOis()[J

    move-result-object v0

    .line 483
    .local v0, "providerOIs":[J
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 484
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;

    .line 483
    invoke-static {v1, v0}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchRoamingConsortium(Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;[J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    sget-object v1, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v1

    .line 489
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->getRoamingConsortiums()[J

    move-result-object v1

    .line 491
    .local v1, "roamingConsortiums":[J
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 492
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-wide v5, v1, v4

    .line 493
    .local v5, "sta_oi":J
    array-length v7, v0

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_3

    aget-wide v9, v0, v8

    .line 494
    .local v9, "ap_oi":J
    cmp-long v11, v5, v9

    if-nez v11, :cond_2

    .line 495
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v2

    .line 493
    .end local v9    # "ap_oi":J
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 492
    .end local v5    # "sta_oi":J
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 501
    :cond_4
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v2
.end method

.method private static setAnonymousIdentityToNaiRealm(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p1, "realm"    # Ljava/lang/String;

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anonymous@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 596
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 404
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 405
    return v0

    .line 407
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 408
    return v2

    .line 410
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    .line 411
    .local v1, "that":Lcom/android/server/wifi/hotspot2/PasspointProvider;
    iget-wide v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    iget-wide v5, v1, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    .line 412
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    .line 413
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    .line 414
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 415
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    goto :goto_1

    .line 411
    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public getCaCertificateAlias()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getClientCertificateAlias()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getClientPrivateKeyAlias()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 2

    .line 137
    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    return-object v0
.end method

.method public getCreatorUid()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCreatorUid:I

    return v0
.end method

.method public getHasEverConnected()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mHasEverConnected:Z

    return v0
.end method

.method public getProviderId()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    return-wide v0
.end method

.method public getWifiConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .line 301
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 302
    .local v0, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getRoamingConsortiumOis()[J

    move-result-object v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 305
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getRoamingConsortiumOis()[J

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 306
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getRoamingConsortiumOis()[J

    move-result-object v2

    array-length v2, v2

    .line 304
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 309
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 310
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 312
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .line 313
    .local v1, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 317
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v2

    .line 316
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->buildEnterpriseConfigForUserCredential(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    .line 318
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->setAnonymousIdentityToNaiRealm(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getCertCredential()Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 320
    invoke-direct {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->buildEnterpriseConfigForCertCredential(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 321
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->setAnonymousIdentityToNaiRealm(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 324
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v2

    .line 323
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->buildEnterpriseConfigForSimCredential(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    .line 326
    :goto_0
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 327
    iget-boolean v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mIsShared:Z

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 328
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 420
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public installCertsAndKeys()Z
    .locals 5

    .line 177
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_HS2_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "certName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 180
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/Credential;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 179
    invoke-virtual {v2, v0, v3}, Lcom/android/server/wifi/WifiKeyStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    const-string v2, "PasspointProvider"

    const-string v3, "Failed to install CA Certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->uninstallCertsAndKeys()V

    .line 183
    return v1

    .line 185
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HS2_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    .line 189
    .end local v0    # "certName":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_HS2_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "keyName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 192
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/Credential;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    .line 191
    invoke-virtual {v2, v0, v3}, Lcom/android/server/wifi/WifiKeyStore;->putKeyInKeyStore(Ljava/lang/String;Ljava/security/Key;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 193
    const-string v2, "PasspointProvider"

    const-string v3, "Failed to install client private key"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->uninstallCertsAndKeys()V

    .line 195
    return v1

    .line 197
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HS2_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    .line 201
    .end local v0    # "keyName":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->getClientCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 202
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 203
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->getClientCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 204
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getCertCredential()Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->getCertSha256Fingerprint()[B

    move-result-object v2

    .line 202
    invoke-static {v0, v2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getClientCertificate([Ljava/security/cert/X509Certificate;[B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 205
    .local v0, "clientCert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_4

    .line 206
    const-string v2, "PasspointProvider"

    const-string v3, "Failed to locate client certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->uninstallCertsAndKeys()V

    .line 208
    return v1

    .line 210
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_HS2_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "certName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/wifi/WifiKeyStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 212
    const-string v3, "PasspointProvider"

    const-string v4, "Failed to install client certificate"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->uninstallCertsAndKeys()V

    .line 214
    return v1

    .line 216
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HS2_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    .line 220
    .end local v0    # "clientCert":Ljava/security/cert/X509Certificate;
    .end local v2    # "certName":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    .line 221
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientPrivateKey(Ljava/security/PrivateKey;)V

    .line 222
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientCertificateChain([Ljava/security/cert/X509Certificate;)V

    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public isSimCredential()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public match(Ljava/util/Map;Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;)Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .locals 5
    .param p2, "roamingConsortium"    # Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;",
            "Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;",
            ")",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;"
        }
    .end annotation

    .line 262
    .local p1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->matchProviderExceptFor3GPP(Ljava/util/Map;Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;)Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-result-object v0

    .line 265
    .local v0, "providerMatch":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    sget-object v1, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 266
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mImsiParameter:Lcom/android/server/wifi/IMSIParameter;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mMatchingSIMImsiList:Ljava/util/List;

    .line 265
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchThreeGPPNetwork(Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    sget-object v1, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v1

    .line 272
    :cond_0
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 273
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 274
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mEAPMethodID:I

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mAuthParam:Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;

    .line 272
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchNAIRealm(Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;Ljava/lang/String;ILcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)I

    move-result v1

    .line 277
    .local v1, "authMatch":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 278
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v2

    .line 282
    :cond_1
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_2

    .line 283
    return-object v0

    .line 288
    :cond_2
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v0, v2, :cond_3

    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    goto :goto_0

    .line 289
    :cond_3
    nop

    .line 288
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public setHasEverConnected(Z)V
    .locals 0
    .param p1, "hasEverConnected"    # Z

    .line 165
    iput-boolean p1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mHasEverConnected:Z

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "ProviderId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v1, "CreatorUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCreatorUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string v1, "Configuration Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    const-string v1, "Configuration End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public uninstallCertsAndKeys()V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiKeyStore;->removeEntryFromKeyStore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const-string v0, "PasspointProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiKeyStore;->removeEntryFromKeyStore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    const-string v0, "PasspointProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_2
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 245
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiKeyStore;->removeEntryFromKeyStore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 247
    const-string v0, "PasspointProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_4
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    .line 251
    :cond_5
    return-void
.end method
