.class public Landroid/telephony/data/ApnSetting$Builder;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/ApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mApnName:Ljava/lang/String;

.field private mApnTypeBitmask:I

.field private mAuthType:I

.field private mCarrierEnabled:Z

.field private mEntryName:Ljava/lang/String;

.field private mId:I

.field private mMaxConns:I

.field private mMaxConnsTime:I

.field private mMmsProxyAddress:Ljava/net/InetAddress;

.field private mMmsProxyPort:I

.field private mMmsc:Landroid/net/Uri;

.field private mModemCognitive:Z

.field private mMtu:I

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:I

.field private mNetworkTypeBitmask:I

.field private mOperatorNumeric:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mProfileId:I

.field private mProtocol:I

.field private mProxyAddress:Ljava/net/InetAddress;

.field private mProxyPort:I

.field private mRoamingProtocol:I

.field private mUser:Ljava/lang/String;

.field private mWaitTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1093
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyPort:I

    .line 1096
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyPort:I

    .line 1103
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProtocol:I

    .line 1104
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mRoamingProtocol:I

    .line 1113
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoType:I

    .line 1119
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mEntryName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/telephony/data/ApnSetting$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    return v0
.end method

.method static synthetic access$1100(Landroid/telephony/data/ApnSetting$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mId:I

    return v0
.end method

.method static synthetic access$1200(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/telephony/data/ApnSetting$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProtocol:I

    return v0
.end method

.method static synthetic access$1400(Landroid/telephony/data/ApnSetting$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mRoamingProtocol:I

    return v0
.end method

.method static synthetic access$1500(Landroid/telephony/data/ApnSetting$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtu:I

    return v0
.end method

.method static synthetic access$1600(Landroid/telephony/data/ApnSetting$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierEnabled:Z

    return v0
.end method

.method static synthetic access$1700(Landroid/telephony/data/ApnSetting$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mNetworkTypeBitmask:I

    return v0
.end method

.method static synthetic access$1800(Landroid/telephony/data/ApnSetting$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProfileId:I

    return v0
.end method

.method static synthetic access$1900(Landroid/telephony/data/ApnSetting$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mModemCognitive:Z

    return v0
.end method

.method static synthetic access$200(Landroid/telephony/data/ApnSetting$Builder;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/telephony/data/ApnSetting$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConns:I

    return v0
.end method

.method static synthetic access$2100(Landroid/telephony/data/ApnSetting$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mWaitTime:I

    return v0
.end method

.method static synthetic access$2200(Landroid/telephony/data/ApnSetting$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConnsTime:I

    return v0
.end method

.method static synthetic access$2300(Landroid/telephony/data/ApnSetting$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoType:I

    return v0
.end method

.method static synthetic access$2400(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoMatchData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/telephony/data/ApnSetting$Builder;I)Landroid/telephony/data/ApnSetting$Builder;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;
    .param p1, "x1"    # I

    .line 1089
    invoke-direct {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/telephony/data/ApnSetting$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyPort:I

    return v0
.end method

.method static synthetic access$400(Landroid/telephony/data/ApnSetting$Builder;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsc:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Landroid/telephony/data/ApnSetting$Builder;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$600(Landroid/telephony/data/ApnSetting$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyPort:I

    return v0
.end method

.method static synthetic access$700(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mUser:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/telephony/data/ApnSetting$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/ApnSetting$Builder;

    .line 1089
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mAuthType:I

    return v0
.end method

.method private setId(I)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "id"    # I

    .line 1127
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mId:I

    .line 1128
    return-object p0
.end method


# virtual methods
.method public build()Landroid/telephony/data/ApnSetting;
    .locals 2

    .line 1416
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    and-int/lit16 v0, v0, 0x3ff

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mEntryName:Ljava/lang/String;

    .line 1417
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1420
    :cond_0
    new-instance v0, Landroid/telephony/data/ApnSetting;

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/ApnSetting;-><init>(Landroid/telephony/data/ApnSetting$Builder;Landroid/telephony/data/ApnSetting$1;)V

    return-object v0

    .line 1418
    :cond_1
    :goto_0
    return-object v1
.end method

.method public setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "apnName"    # Ljava/lang/String;

    .line 1224
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnName:Ljava/lang/String;

    .line 1225
    return-object p0
.end method

.method public setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "apnTypeBitmask"    # I

    .line 1338
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    .line 1339
    return-object p0
.end method

.method public setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "authType"    # I

    .line 1322
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mAuthType:I

    .line 1323
    return-object p0
.end method

.method public setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "carrierEnabled"    # Z

    .line 1384
    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierEnabled:Z

    .line 1385
    return-object p0
.end method

.method public setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "entryName"    # Ljava/lang/String;

    .line 1214
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mEntryName:Ljava/lang/String;

    .line 1215
    return-object p0
.end method

.method public setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "maxConns"    # I

    .line 1171
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConns:I

    .line 1172
    return-object p0
.end method

.method public setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "maxConnsTime"    # I

    .line 1193
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConnsTime:I

    .line 1194
    return-object p0
.end method

.method public setMmsProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "mmsProxy"    # Ljava/net/InetAddress;

    .line 1281
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/net/InetAddress;

    .line 1282
    return-object p0
.end method

.method public setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "mmsPort"    # I

    .line 1291
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyPort:I

    .line 1292
    return-object p0
.end method

.method public setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "mmsc"    # Landroid/net/Uri;

    .line 1262
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsc:Landroid/net/Uri;

    .line 1263
    return-object p0
.end method

.method public setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "modemCognitive"    # Z

    .line 1160
    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mModemCognitive:Z

    .line 1161
    return-object p0
.end method

.method public setMtu(I)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "mtu"    # I

    .line 1138
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtu:I

    .line 1139
    return-object p0
.end method

.method public setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "mvnoMatchData"    # Ljava/lang/String;

    .line 1204
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoMatchData:Ljava/lang/String;

    .line 1205
    return-object p0
.end method

.method public setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "mvnoType"    # I

    .line 1404
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoType:I

    .line 1405
    return-object p0
.end method

.method public setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "networkTypeBitmask"    # I

    .line 1394
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mNetworkTypeBitmask:I

    .line 1395
    return-object p0
.end method

.method public setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 1350
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mOperatorNumeric:Ljava/lang/String;

    .line 1351
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 1312
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mPassword:Ljava/lang/String;

    .line 1313
    return-object p0
.end method

.method public setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "profileId"    # I

    .line 1149
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProfileId:I

    .line 1150
    return-object p0
.end method

.method public setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "protocol"    # I

    .line 1362
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProtocol:I

    .line 1363
    return-object p0
.end method

.method public setProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "proxy"    # Ljava/net/InetAddress;

    .line 1242
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyAddress:Ljava/net/InetAddress;

    .line 1243
    return-object p0
.end method

.method public setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "port"    # I

    .line 1252
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyPort:I

    .line 1253
    return-object p0
.end method

.method public setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "roamingProtocol"    # I

    .line 1374
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mRoamingProtocol:I

    .line 1375
    return-object p0
.end method

.method public setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .line 1301
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mUser:Ljava/lang/String;

    .line 1302
    return-object p0
.end method

.method public setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;
    .locals 0
    .param p1, "waitTime"    # I

    .line 1182
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mWaitTime:I

    .line 1183
    return-object p0
.end method
