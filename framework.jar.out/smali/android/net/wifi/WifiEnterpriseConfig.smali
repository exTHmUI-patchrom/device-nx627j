.class public Landroid/net/wifi/WifiEnterpriseConfig;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;,
        Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;,
        Landroid/net/wifi/WifiEnterpriseConfig$Phase2;,
        Landroid/net/wifi/WifiEnterpriseConfig$Eap;
    }
.end annotation


# static fields
.field public static final ALTSUBJECT_MATCH_KEY:Ljava/lang/String; = "altsubject_match"

.field public static final ANON_IDENTITY_KEY:Ljava/lang/String; = "anonymous_identity"

.field public static final CA_CERT_ALIAS_DELIMITER:Ljava/lang/String; = " "

.field public static final CA_CERT_KEY:Ljava/lang/String; = "ca_cert"

.field public static final CA_CERT_PREFIX:Ljava/lang/String; = "keystore://CACERT_"

.field public static final CA_PATH_KEY:Ljava/lang/String; = "ca_path"

.field public static final CLIENT_CERT_KEY:Ljava/lang/String; = "client_cert"

.field public static final CLIENT_CERT_PREFIX:Ljava/lang/String; = "keystore://USRCERT_"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiEnterpriseConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOM_SUFFIX_MATCH_KEY:Ljava/lang/String; = "domain_suffix_match"

.field public static final EAP_ERP:Ljava/lang/String; = "eap_erp"

.field public static final EAP_KEY:Ljava/lang/String; = "eap"

.field public static final EMPTY_VALUE:Ljava/lang/String; = "NULL"

.field public static final ENGINE_DISABLE:Ljava/lang/String; = "0"

.field public static final ENGINE_ENABLE:Ljava/lang/String; = "1"

.field public static final ENGINE_ID_KEY:Ljava/lang/String; = "engine_id"

.field public static final ENGINE_ID_KEYSTORE:Ljava/lang/String; = "keystore"

.field public static final ENGINE_KEY:Ljava/lang/String; = "engine"

.field public static final IDENTITY_KEY:Ljava/lang/String; = "identity"

.field public static final KEYSTORES_URI:Ljava/lang/String; = "keystores://"

.field public static final KEYSTORE_URI:Ljava/lang/String; = "keystore://"

.field public static final KEY_SIMNUM:Ljava/lang/String; = "sim_num"

.field public static final OPP_KEY_CACHING:Ljava/lang/String; = "proactive_key_caching"

.field public static final PASSWORD_KEY:Ljava/lang/String; = "password"

.field public static final PHASE2_KEY:Ljava/lang/String; = "phase2"

.field public static final PLMN_KEY:Ljava/lang/String; = "plmn"

.field public static final PRIVATE_KEY_ID_KEY:Ljava/lang/String; = "key_id"

.field public static final REALM_KEY:Ljava/lang/String; = "realm"

.field public static final SUBJECT_MATCH_KEY:Ljava/lang/String; = "subject_match"

.field private static final SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WifiEnterpriseConfig"

.field private static final UNQUOTED_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCaCerts:[Ljava/security/cert/X509Certificate;

.field private mClientCertificateChain:[Ljava/security/cert/X509Certificate;

.field private mClientPrivateKey:Ljava/security/PrivateKey;

.field private mEapMethod:I

.field private mFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Method:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 127
    const-string v0, "identity"

    const-string v1, "anonymous_identity"

    const-string/jumbo v2, "password"

    const-string v3, "client_cert"

    const-string v4, "ca_cert"

    const-string/jumbo v5, "subject_match"

    const-string v6, "engine"

    const-string v7, "engine_id"

    const-string/jumbo v8, "key_id"

    const-string v9, "altsubject_match"

    const-string v10, "domain_suffix_match"

    const-string v11, "ca_path"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

    .line 145
    const-string v0, "engine"

    const-string/jumbo v1, "proactive_key_caching"

    const-string v2, "eap_erp"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->UNQUOTED_KEYS:Ljava/util/List;

    .line 241
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 205
    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->copyFrom(Landroid/net/wifi/WifiEnterpriseConfig;ZLjava/lang/String;)V

    .line 206
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 45
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiEnterpriseConfig;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    return p1
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiEnterpriseConfig;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return p1
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p1, "x1"    # [Ljava/security/cert/X509Certificate;

    .line 45
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static synthetic access$402(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p1, "x1"    # Ljava/security/PrivateKey;

    .line 45
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object p1
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p1, "x1"    # [Ljava/security/cert/X509Certificate;

    .line 45
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyFrom(Landroid/net/wifi/WifiEnterpriseConfig;ZLjava/lang/String;)V
    .locals 4
    .param p1, "source"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "ignoreMaskedPassword"    # Z
    .param p3, "mask"    # Ljava/lang/String;

    .line 174
    iget-object v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    .local v1, "key":Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    .line 176
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    goto :goto_0

    .line 179
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    goto :goto_1

    .line 184
    :cond_2
    iput-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 186
    :goto_1
    iget-object v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 187
    iget-object v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    iget-object v1, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    goto :goto_2

    .line 192
    :cond_3
    iput-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 194
    :goto_2
    iget v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 195
    iget v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 196
    return-void
.end method

.method public static decodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "alias"    # Ljava/lang/String;

    .line 571
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 572
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 573
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 572
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 576
    .end local v1    # "n":I
    .end local v2    # "position":I
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 577
    :catch_0
    move-exception v1

    .line 578
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 579
    return-object p0
.end method

.method public static encodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "alias"    # Ljava/lang/String;

    .line 558
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 559
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 560
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v5, v0, v4

    .line 561
    .local v5, "o":B
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v8, v5, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .end local v5    # "o":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1075
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1077
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1079
    :cond_0
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1081
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1083
    :cond_1
    return-object v0

    .line 1077
    :cond_2
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method private getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "toBeFound"    # Ljava/lang/String;
    .param p3, "defaultIndex"    # I

    .line 1058
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p3

    .line 1059
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1060
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 1059
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1062
    .end local v0    # "i":I
    :cond_2
    return p3
.end method

.method private isEapMethodValid()Z
    .locals 4

    .line 1146
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1147
    const-string v0, "WifiEnterpriseConfig"

    const-string v2, "WiFi enterprise configuration is invalid as it supplies no EAP method."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    return v1

    .line 1150
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    goto :goto_1

    .line 1154
    :cond_1
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    goto :goto_0

    .line 1159
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1155
    :cond_3
    :goto_0
    const-string v0, "WifiEnterpriseConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPhase2Method is invald for WiFi enterprise configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    return v1

    .line 1151
    :cond_4
    :goto_1
    const-string v0, "WifiEnterpriseConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEapMethod is invald for WiFi enterprise configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return v1
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .line 1037
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1038
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1039
    .local v0, "length":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 1040
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1041
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1043
    :cond_1
    return-object p1
.end method

.method private setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 1107
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string v1, "NULL"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1111
    :cond_0
    sget-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->UNQUOTED_KEYS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "valueToSet":Ljava/lang/String;
    goto :goto_0

    .line 1114
    .end local v0    # "valueToSet":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1116
    .restart local v0    # "valueToSet":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    .end local v0    # "valueToSet":Ljava/lang/String;
    :goto_1
    return-void
.end method


# virtual methods
.method public copyFromExternal(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V
    .locals 2
    .param p1, "externalConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "mask"    # Ljava/lang/String;

    .line 218
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->copyFrom(Landroid/net/wifi/WifiEnterpriseConfig;ZLjava/lang/String;)V

    .line 219
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public getAltSubjectMatch()Ljava/lang/String;
    .locals 1

    .line 958
    const-string v0, "altsubject_match"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnonymousIdentity()Ljava/lang/String;
    .locals 1

    .line 532
    const-string v0, "anonymous_identity"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaCertificate()Ljava/security/cert/X509Certificate;
    .locals 2

    .line 689
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 690
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 692
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCaCertificateAlias()Ljava/lang/String;
    .locals 2

    .line 631
    const-string v0, "ca_cert"

    const-string/jumbo v1, "keystore://CACERT_"

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaCertificateAliases()[Ljava/lang/String;
    .locals 7

    .line 640
    const-string v0, "ca_cert"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "keystore://CACERT_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 643
    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "ca_cert"

    const-string/jumbo v4, "keystore://CACERT_"

    invoke-direct {p0, v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1

    .line 644
    :cond_0
    const-string/jumbo v1, "keystores://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 645
    const-string/jumbo v1, "keystores://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "values":Ljava/lang/String;
    const-string v3, " "

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 648
    .local v3, "aliases":[Ljava/lang/String;
    nop

    .line 648
    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 649
    aget-object v5, v3, v2

    invoke-static {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->decodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 650
    aget-object v5, v3, v2

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 651
    aget-object v5, v3, v2

    const-string v6, "CACERT_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 648
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 654
    .end local v2    # "i":I
    :cond_2
    array-length v2, v3

    if-eqz v2, :cond_3

    move-object v4, v3

    nop

    :cond_3
    return-object v4

    .line 656
    .end local v1    # "values":Ljava/lang/String;
    .end local v3    # "aliases":[Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    new-array v4, v3, [Ljava/lang/String;

    aput-object v0, v4, v2

    :goto_1
    return-object v4
.end method

.method public getCaCertificates()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 729
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 730
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    return-object v0

    .line 732
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCaPath()Ljava/lang/String;
    .locals 1

    .line 767
    const-string v0, "ca_path"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificate()Ljava/security/cert/X509Certificate;
    .locals 2

    .line 881
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 882
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 884
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientCertificateAlias()Ljava/lang/String;
    .locals 2

    .line 797
    const-string v0, "client_cert"

    const-string/jumbo v1, "keystore://USRCERT_"

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 902
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 903
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    return-object v0

    .line 905
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 921
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getDomainSuffixMatch()Ljava/lang/String;
    .locals 1

    .line 987
    const-string v0, "domain_suffix_match"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEapMethod()I
    .locals 1

    .line 465
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    return v0
.end method

.method public getFieldValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1094
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .line 515
    const-string v0, "identity"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;
    .locals 3
    .param p1, "current"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1027
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1028
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "NULL"

    :goto_0
    return-object v0

    .line 1030
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1031
    const-string v0, "NULL"

    return-object v0

    .line 1033
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 550
    const-string/jumbo v0, "password"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhase2Method()I
    .locals 1

    .line 499
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return v0
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 1

    .line 1021
    const-string/jumbo v0, "plmn"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 1004
    const-string/jumbo v0, "realm"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimNum()Ljava/lang/String;
    .locals 1

    .line 458
    const-string/jumbo v0, "sim_num"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectMatch()Ljava/lang/String;
    .locals 1

    .line 940
    const-string/jumbo v0, "subject_match"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadFromSupplicant(Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;)V
    .locals 8
    .param p1, "loader"    # Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;

    .line 403
    sget-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 404
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 406
    iget-object v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string v7, "NULL"

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 408
    :cond_0
    iget-object v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 411
    :cond_1
    const-string v0, "eap"

    invoke-interface {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "eapMethod":Ljava/lang/String;
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    const/4 v3, -0x1

    invoke-direct {p0, v1, v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 414
    const-string/jumbo v1, "phase2"

    invoke-interface {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "phase2Method":Ljava/lang/String;
    const-string v3, "auth="

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 417
    const-string v3, "auth="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 418
    :cond_2
    const-string v3, "autheap="

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 419
    const-string v3, "autheap="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 421
    :cond_3
    :goto_2
    sget-object v3, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 422
    return-void
.end method

.method public resetCaCertificate()V
    .locals 1

    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 741
    return-void
.end method

.method public resetClientKeyEntry()V
    .locals 1

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 914
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 915
    return-void
.end method

.method public saveToSupplicant(Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;)Z
    .locals 7
    .param p1, "saver"    # Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;

    .line 360
    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 361
    return v1

    .line 366
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 369
    .local v0, "shouldNotWriteAnonIdentity":Z
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 370
    .local v5, "key":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v6, "anonymous_identity"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 371
    goto :goto_2

    .line 373
    :cond_3
    iget-object v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 374
    return v1

    .line 376
    .end local v5    # "key":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 378
    :cond_5
    const-string v4, "eap"

    sget-object v5, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    aget-object v5, v5, v6

    invoke-interface {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 379
    return v1

    .line 382
    :cond_6
    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    if-eq v4, v3, :cond_9

    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-eqz v4, :cond_9

    .line 383
    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-ne v4, v2, :cond_7

    move v1, v3

    nop

    .line 384
    .local v1, "is_autheap":Z
    :cond_7
    if-eqz v1, :cond_8

    const-string v2, "autheap="

    goto :goto_3

    :cond_8
    const-string v2, "auth="

    .line 385
    .local v2, "prefix":Ljava/lang/String;
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    iget v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "phase2"

    invoke-interface {p1, v4, v3}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 387
    .end local v1    # "is_autheap":Z
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_9
    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-nez v2, :cond_a

    .line 389
    const-string/jumbo v1, "phase2"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 391
    :cond_a
    const-string v2, "WifiEnterpriseConfig"

    const-string v3, "WiFi enterprise configuration is invalid as it supplies a phase 2 method but the phase1 method does not support it."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return v1
.end method

.method public setAltSubjectMatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "altSubjectMatch"    # Ljava/lang/String;

    .line 950
    const-string v0, "altsubject_match"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    return-void
.end method

.method public setAnonymousIdentity(Ljava/lang/String;)V
    .locals 1
    .param p1, "anonymousIdentity"    # Ljava/lang/String;

    .line 524
    const-string v0, "anonymous_identity"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 672
    if-eqz p1, :cond_1

    .line 673
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    if-ltz v0, :cond_0

    .line 674
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    goto :goto_0

    .line 676
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a CA certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 681
    :goto_0
    return-void
.end method

.method public setCaCertificateAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 593
    const-string v0, "ca_cert"

    const-string/jumbo v1, "keystore://CACERT_"

    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public setCaCertificateAliases([Ljava/lang/String;)V
    .locals 4
    .param p1, "aliases"    # [Ljava/lang/String;

    .line 607
    if-nez p1, :cond_0

    .line 608
    const-string v0, "ca_cert"

    const/4 v1, 0x0

    const-string/jumbo v2, "keystore://CACERT_"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 609
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 611
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    goto :goto_1

    .line 614
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .local v0, "sb":Ljava/lang/StringBuilder;
    nop

    .line 615
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 616
    if-lez v1, :cond_2

    .line 617
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->encodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    .end local v1    # "i":I
    :cond_3
    const-string v1, "ca_cert"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "keystores://"

    invoke-direct {p0, v1, v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-void
.end method

.method public setCaCertificates([Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;

    .line 710
    if-eqz p1, :cond_2

    .line 711
    array-length v0, p1

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 712
    .local v0, "newCerts":[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 713
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v2

    if-ltz v2, :cond_0

    .line 714
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not a CA certificate"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 719
    .end local v1    # "i":I
    :cond_1
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 720
    .end local v0    # "newCerts":[Ljava/security/cert/X509Certificate;
    goto :goto_1

    .line 721
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 723
    :goto_1
    return-void
.end method

.method public setCaPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 758
    const-string v0, "ca_path"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method public setClientCertificateAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 779
    const-string v0, "client_cert"

    const-string/jumbo v1, "keystore://USRCERT_"

    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string/jumbo v0, "key_id"

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    const-string v0, "engine"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v0, "engine_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 786
    :cond_0
    const-string v0, "engine"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v0, "engine_id"

    const-string/jumbo v1, "keystore"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :goto_0
    return-void
.end method

.method public setClientKeyEntry(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V
    .locals 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "clientCertificate"    # Ljava/security/cert/X509Certificate;

    .line 813
    const/4 v0, 0x0

    .line 814
    .local v0, "clientCertificates":[Ljava/security/cert/X509Certificate;
    if-eqz p2, :cond_0

    .line 815
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    move-object v0, v1

    .line 817
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientKeyEntryWithCertificateChain(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    .line 818
    return-void
.end method

.method public setClientKeyEntryWithCertificateChain(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "clientCertificateChain"    # [Ljava/security/cert/X509Certificate;

    .line 836
    const/4 v0, 0x0

    .line 837
    .local v0, "newCerts":[Ljava/security/cert/X509Certificate;
    if-eqz p2, :cond_5

    array-length v1, p2

    if-lez v1, :cond_5

    .line 849
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 854
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 855
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 854
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 856
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "All certificates following the first must be CA certificates"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 860
    .end local v1    # "i":I
    :cond_1
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 863
    if-eqz p1, :cond_3

    .line 866
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 867
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Private key cannot be encoded"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 864
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Client cert without a private key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 850
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "First certificate in the chain must be a client end certificate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 871
    :cond_5
    :goto_1
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 872
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 873
    return-void
.end method

.method public setDomainSuffixMatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .line 979
    const-string v0, "domain_suffix_match"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method public setEapMethod(I)V
    .locals 2
    .param p1, "eapMethod"    # I

    .line 431
    packed-switch p1, :pswitch_data_0

    .line 447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown EAP method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 443
    :pswitch_1
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 444
    const-string/jumbo v0, "proactive_key_caching"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    nop

    .line 449
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1127
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 2
    .param p1, "identity"    # Ljava/lang/String;

    .line 507
    const-string v0, "identity"

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .line 540
    const-string/jumbo v0, "password"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public setPhase2Method(I)V
    .locals 2
    .param p1, "phase2Method"    # I

    .line 478
    packed-switch p1, :pswitch_data_0

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown Phase 2 method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :pswitch_0
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 488
    nop

    .line 492
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPlmn(Ljava/lang/String;)V
    .locals 1
    .param p1, "plmn"    # Ljava/lang/String;

    .line 1012
    const-string/jumbo v0, "plmn"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 1
    .param p1, "realm"    # Ljava/lang/String;

    .line 996
    const-string/jumbo v0, "realm"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method public setSimNum(I)V
    .locals 2
    .param p1, "SIMNum"    # I

    .line 453
    const-string/jumbo v0, "sim_num"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public setSubjectMatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "subjectMatch"    # Ljava/lang/String;

    .line 931
    const-string/jumbo v0, "subject_match"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1133
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1135
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "password"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "<removed>"

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1136
    .local v3, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1137
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1138
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 228
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    .line 230
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 234
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    invoke-static {p1, v0}, Landroid/net/wifi/ParcelUtil;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    .line 237
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    invoke-static {p1, v0}, Landroid/net/wifi/ParcelUtil;->writePrivateKey(Landroid/os/Parcel;Ljava/security/PrivateKey;)V

    .line 238
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    invoke-static {p1, v0}, Landroid/net/wifi/ParcelUtil;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    .line 239
    return-void
.end method
