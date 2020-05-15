.class public final Landroid/net/wifi/hotspot2/pps/Credential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;,
        Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;,
        Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Credential;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_REALM_BYTES:I = 0xfd

.field private static final TAG:Ljava/lang/String; = "Credential"


# instance fields
.field private mCaCertificate:Ljava/security/cert/X509Certificate;

.field private mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

.field private mCheckAaaServerCertStatus:Z

.field private mClientCertificateChain:[Ljava/security/cert/X509Certificate;

.field private mClientPrivateKey:Ljava/security/PrivateKey;

.field private mCreationTimeInMillis:J

.field private mExpirationTimeInMillis:J

.field private mRealm:Ljava/lang/String;

.field private mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

.field private mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1057
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    .line 80
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    .line 452
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 618
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 826
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 847
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificate:Ljava/security/cert/X509Certificate;

    .line 868
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 889
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 910
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/Credential;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/hotspot2/pps/Credential;

    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    .line 80
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    .line 452
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 618
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 826
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 847
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificate:Ljava/security/cert/X509Certificate;

    .line 868
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 889
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 918
    if-eqz p1, :cond_4

    .line 919
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    .line 920
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    .line 921
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    .line 922
    iget-boolean v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    .line 923
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-eqz v0, :cond_0

    .line 924
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;-><init>(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 926
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-eqz v0, :cond_1

    .line 927
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;-><init>(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 929
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-eqz v0, :cond_2

    .line 930
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 932
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_3

    .line 933
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 936
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificate:Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificate:Ljava/security/cert/X509Certificate;

    .line 937
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 939
    :cond_4
    return-void
.end method

.method private static isPrivateKeyEquals(Ljava/security/PrivateKey;Ljava/security/PrivateKey;)Z
    .locals 4
    .param p0, "key1"    # Ljava/security/PrivateKey;
    .param p1, "key2"    # Ljava/security/PrivateKey;

    .line 1167
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 1168
    return v0

    .line 1172
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 1176
    :cond_1
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1177
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1176
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 1173
    :cond_3
    :goto_1
    return v1
.end method

.method private static isX509CertificateEquals(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .locals 3
    .param p0, "cert1"    # Ljava/security/cert/X509Certificate;
    .param p1, "cert2"    # Ljava/security/cert/X509Certificate;

    .line 1181
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 1182
    const/4 v0, 0x1

    return v0

    .line 1186
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 1190
    :cond_1
    nop

    .line 1192
    .local v0, "result":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1195
    goto :goto_0

    .line 1193
    :catch_0
    move-exception v1

    .line 1196
    :goto_0
    return v0

    .line 1187
    .end local v0    # "result":Z
    :cond_2
    :goto_1
    return v0
.end method

.method private static isX509CertificatesEquals([Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z
    .locals 5
    .param p0, "certs1"    # [Ljava/security/cert/X509Certificate;
    .param p1, "certs2"    # [Ljava/security/cert/X509Certificate;

    .line 1201
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 1202
    return v0

    .line 1206
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 1210
    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_2

    .line 1211
    return v1

    .line 1214
    :cond_2
    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 1215
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->isX509CertificateEquals(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1216
    return v1

    .line 1214
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1220
    .end local v2    # "i":I
    :cond_4
    return v0

    .line 1207
    :cond_5
    :goto_1
    return v1
.end method

.method private verifyCertCredential()Z
    .locals 5

    .line 1112
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1113
    const-string v0, "Credential"

    const-string v2, "Missing certificate credential"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    return v1

    .line 1116
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1121
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->validate()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1122
    return v1

    .line 1126
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificate:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_3

    .line 1127
    const-string v0, "Credential"

    const-string v2, "Missing CA Certificate for certificate credential"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    return v1

    .line 1130
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_4

    .line 1131
    const-string v0, "Credential"

    const-string v2, "Missing client private key for certificate credential"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return v1

    .line 1136
    :cond_4
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 1137
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->getCertSha256Fingerprint()[B

    move-result-object v2

    .line 1136
    invoke-static {v0, v2}, Landroid/net/wifi/hotspot2/pps/Credential;->verifySha256Fingerprint([Ljava/security/cert/X509Certificate;[B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1138
    const-string v0, "Credential"

    const-string v2, "SHA-256 fingerprint mismatch"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    return v1

    .line 1144
    :cond_5
    nop

    .line 1146
    const/4 v0, 0x1

    return v0

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v2, "Credential"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to verify SHA-256 fingerprint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    return v1

    .line 1117
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_6
    :goto_0
    const-string v0, "Credential"

    const-string v2, "Contained more than one type of credential"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    return v1
.end method

.method private static verifySha256Fingerprint([Ljava/security/cert/X509Certificate;[B)Z
    .locals 7
    .param p0, "certChain"    # [Ljava/security/cert/X509Certificate;
    .param p1, "expectedFingerprint"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 1236
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1237
    return v0

    .line 1239
    :cond_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1240
    .local v1, "digester":Ljava/security/MessageDigest;
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 1241
    .local v4, "certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 1242
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1243
    .local v5, "fingerprint":[B
    invoke-static {p1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1244
    const/4 v0, 0x1

    return v0

    .line 1240
    .end local v4    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v5    # "fingerprint":[B
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1247
    :cond_2
    return v0
.end method

.method private verifySimCredential()Z
    .locals 3

    .line 1155
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1156
    const-string v0, "Credential"

    const-string v2, "Missing SIM credential"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    return v1

    .line 1159
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1163
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->validate()Z

    move-result v0

    return v0

    .line 1160
    :cond_2
    :goto_0
    const-string v0, "Credential"

    const-string v2, "Contained more than one type of credential"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return v1
.end method

.method private verifyUserCredential()Z
    .locals 3

    .line 1087
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1088
    const-string v0, "Credential"

    const-string v2, "Missing user credential"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    return v1

    .line 1091
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1095
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->validate()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1096
    return v1

    .line 1098
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificate:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_3

    .line 1099
    const-string v0, "Credential"

    const-string v2, "Missing CA Certificate for user credential"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    return v1

    .line 1102
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 1092
    :cond_4
    :goto_0
    const-string v0, "Credential"

    const-string v2, "Contained more than one type of credential"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 943
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 962
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 963
    return v0

    .line 965
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Credential;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 966
    return v2

    .line 969
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Credential;

    .line 970
    .local v1, "that":Landroid/net/wifi/hotspot2/pps/Credential;
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    iget-boolean v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 975
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_0
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-nez v3, :cond_3

    iget-object v3, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 977
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-nez v3, :cond_4

    iget-object v3, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-nez v3, :cond_5

    goto :goto_2

    :cond_4
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 979
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificate:Ljava/security/cert/X509Certificate;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificate:Ljava/security/cert/X509Certificate;

    .line 980
    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->isX509CertificateEquals(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 981
    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->isX509CertificatesEquals([Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 982
    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->isPrivateKeyEquals(Ljava/security/PrivateKey;Ljava/security/PrivateKey;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    .line 970
    :cond_5
    move v0, v2

    :goto_3
    return v0
.end method

.method public getCaCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 862
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getCertCredential()Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .locals 1

    .line 633
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    return-object v0
.end method

.method public getCheckAaaServerCertStatus()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    return v0
.end method

.method public getClientCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 883
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getClientPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 904
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getCreationTimeInMillis()J
    .locals 2

    .line 72
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    return-wide v0
.end method

.method public getExpirationTimeInMillis()J
    .locals 2

    .line 91
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    return-wide v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    .locals 1

    .line 841
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    return-object v0
.end method

.method public getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .locals 1

    .line 467
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 987
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    .line 988
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificate:Ljava/security/cert/X509Certificate;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 987
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "caCertificate"    # Ljava/security/cert/X509Certificate;

    .line 854
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificate:Ljava/security/cert/X509Certificate;

    .line 855
    return-void
.end method

.method public setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V
    .locals 0
    .param p1, "certCredential"    # Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 625
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 626
    return-void
.end method

.method public setCheckAaaServerCertStatus(Z)V
    .locals 0
    .param p1, "checkAaaServerCertStatus"    # Z

    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    .line 128
    return-void
.end method

.method public setClientCertificateChain([Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "certificateChain"    # [Ljava/security/cert/X509Certificate;

    .line 875
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 876
    return-void
.end method

.method public setClientPrivateKey(Ljava/security/PrivateKey;)V
    .locals 0
    .param p1, "clientPrivateKey"    # Ljava/security/PrivateKey;

    .line 896
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 897
    return-void
.end method

.method public setCreationTimeInMillis(J)V
    .locals 0
    .param p1, "creationTimeInMillis"    # J

    .line 66
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    .line 67
    return-void
.end method

.method public setExpirationTimeInMillis(J)V
    .locals 0
    .param p1, "expirationTimeInMillis"    # J

    .line 85
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    .line 86
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V
    .locals 0
    .param p1, "simCredential"    # Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 833
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 834
    return-void
.end method

.method public setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V
    .locals 0
    .param p1, "userCredential"    # Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 459
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 460
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 995
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Realm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    const-string v1, "CreationTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 997
    new-instance v1, Ljava/util/Date;

    iget-wide v5, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const-string v1, "Not specified"

    .line 996
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 997
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const-string v1, "ExpirationTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 999
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    :cond_1
    const-string v1, "Not specified"

    .line 998
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 999
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const-string v1, "CheckAAAServerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-eqz v1, :cond_2

    .line 1002
    const-string v1, "UserCredential Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1004
    const-string v1, "UserCredential End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-eqz v1, :cond_3

    .line 1007
    const-string v1, "CertificateCredential Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1009
    const-string v1, "CertificateCredential End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-eqz v1, :cond_4

    .line 1012
    const-string v1, "SIMCredential Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1014
    const-string v1, "SIMCredential End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validate()Z
    .locals 5

    .line 1026
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1027
    const-string v0, "Credential"

    const-string v2, "Missing realm"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return v1

    .line 1030
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0xfd

    if-le v0, v2, :cond_1

    .line 1031
    const-string v0, "Credential"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "realm exceeding maximum length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1032
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1031
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    return v1

    .line 1037
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-eqz v0, :cond_2

    .line 1038
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/Credential;->verifyUserCredential()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1039
    return v1

    .line 1041
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-eqz v0, :cond_3

    .line 1042
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/Credential;->verifyCertCredential()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1043
    return v1

    .line 1045
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-eqz v0, :cond_5

    .line 1046
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/Credential;->verifySimCredential()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1047
    return v1

    .line 1054
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 1050
    :cond_5
    const-string v0, "Credential"

    const-string v2, "Missing required credential"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 948
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 949
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 950
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 951
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 953
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 954
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 955
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificate:Ljava/security/cert/X509Certificate;

    invoke-static {p1, v0}, Landroid/net/wifi/ParcelUtil;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    .line 956
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    invoke-static {p1, v0}, Landroid/net/wifi/ParcelUtil;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    .line 957
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    invoke-static {p1, v0}, Landroid/net/wifi/ParcelUtil;->writePrivateKey(Landroid/os/Parcel;Ljava/security/PrivateKey;)V

    .line 958
    return-void
.end method
