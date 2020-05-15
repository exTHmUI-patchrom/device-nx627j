.class public final Landroid/net/wifi/hotspot2/pps/UpdateParameter;
.super Ljava/lang/Object;
.source "UpdateParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CERTIFICATE_SHA256_BYTES:I = 0x20

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/UpdateParameter;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PASSWORD_BYTES:I = 0xff

.field private static final MAX_URI_BYTES:I = 0x3ff

.field private static final MAX_URL_BYTES:I = 0x3ff

.field private static final MAX_USERNAME_BYTES:I = 0x3f

.field private static final TAG:Ljava/lang/String; = "UpdateParameter"

.field public static final UPDATE_CHECK_INTERVAL_NEVER:J = 0xffffffffL

.field public static final UPDATE_METHOD_OMADM:Ljava/lang/String; = "OMA-DM-ClientInitiated"

.field public static final UPDATE_METHOD_SSP:Ljava/lang/String; = "SSP-ClientInitiated"

.field public static final UPDATE_RESTRICTION_HOMESP:Ljava/lang/String; = "HomeSP"

.field public static final UPDATE_RESTRICTION_ROAMING_PARTNER:Ljava/lang/String; = "RoamingPartner"

.field public static final UPDATE_RESTRICTION_UNRESTRICTED:Ljava/lang/String; = "Unrestricted"


# instance fields
.field private mBase64EncodedPassword:Ljava/lang/String;

.field private mRestriction:Ljava/lang/String;

.field private mServerUri:Ljava/lang/String;

.field private mTrustRootCertSha256Fingerprint:[B

.field private mTrustRootCertUrl:Ljava/lang/String;

.field private mUpdateIntervalInMinutes:J

.field private mUpdateMethod:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 351
    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 172
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 172
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 191
    if-nez p1, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    .line 195
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 196
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 197
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 198
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 199
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 200
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 201
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 205
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 226
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 227
    return v0

    .line 229
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 230
    return v2

    .line 232
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 234
    .local v1, "that":Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 235
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 236
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 237
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 238
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 239
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 240
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 241
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 234
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getBase64EncodedPassword()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRestriction()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUri()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustRootCertSha256Fingerprint()[B
    .locals 1

    .line 177
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    return-object v0
.end method

.method public getTrustRootCertUrl()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateIntervalInMinutes()J
    .locals 2

    .line 97
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    return-wide v0
.end method

.method public getUpdateMethod()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 247
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBase64EncodedPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 151
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setRestriction(Ljava/lang/String;)V
    .locals 0
    .param p1, "restriction"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setServerUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverUri"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setTrustRootCertSha256Fingerprint([B)V
    .locals 0
    .param p1, "fingerprint"    # [B

    .line 174
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 175
    return-void
.end method

.method public setTrustRootCertUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "trustRootCertUrl"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setUpdateIntervalInMinutes(J)V
    .locals 0
    .param p1, "updateIntervalInMinutes"    # J

    .line 94
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    .line 95
    return-void
.end method

.method public setUpdateMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateMethod"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .line 140
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "UpdateInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, "UpdateMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, "Restriction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, "ServerURI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v1, "Username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, "TrustRootCertURL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validate()Z
    .locals 6

    .line 271
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 272
    const-string v0, "UpdateParameter"

    const-string v2, "Update interval not specified"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return v1

    .line 276
    :cond_0
    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    const-wide v4, 0xffffffffL

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 277
    return v2

    .line 280
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    const-string v3, "OMA-DM-ClientInitiated"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    const-string v3, "SSP-ClientInitiated"

    .line 281
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    const-string v0, "UpdateParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown update method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return v1

    .line 286
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    const-string v3, "HomeSP"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    const-string v3, "RoamingPartner"

    .line 287
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    const-string v3, "Unrestricted"

    .line 288
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 289
    const-string v0, "UpdateParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown restriction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v1

    .line 293
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    const-string v0, "UpdateParameter"

    const-string v2, "Missing update server URI"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return v1

    .line 297
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v3, 0x3ff

    if-le v0, v3, :cond_5

    .line 298
    const-string v0, "UpdateParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI bytes exceeded the max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return v1

    .line 303
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 304
    const-string v0, "UpdateParameter"

    const-string v2, "Missing username"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return v1

    .line 307
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v4, 0x3f

    if-le v0, v4, :cond_7

    .line 308
    const-string v0, "UpdateParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Username bytes exceeded the max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 309
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return v1

    .line 313
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 314
    const-string v0, "UpdateParameter"

    const-string v2, "Missing username"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return v1

    .line 317
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v4, 0xff

    if-le v0, v4, :cond_9

    .line 318
    const-string v0, "UpdateParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password bytes exceeded the max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 319
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return v1

    .line 323
    :cond_9
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    nop

    .line 329
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 330
    const-string v0, "UpdateParameter"

    const-string v2, "Missing trust root certificate URL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v1

    .line 333
    :cond_a
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v3, :cond_b

    .line 334
    const-string v0, "UpdateParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trust root cert URL bytes exceeded the max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 335
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return v1

    .line 339
    :cond_b
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    if-nez v0, :cond_c

    .line 340
    const-string v0, "UpdateParameter"

    const-string v2, "Missing trust root certificate SHA-256 fingerprint"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return v1

    .line 343
    :cond_c
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    array-length v0, v0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_d

    .line 344
    const-string v0, "UpdateParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect size of trust root certificate SHA-256 fingerprint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return v1

    .line 348
    :cond_d
    return v2

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "UpdateParameter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid encoding for password: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 214
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 215
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 222
    return-void
.end method
