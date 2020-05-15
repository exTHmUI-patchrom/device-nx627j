.class public final Landroid/telephony/data/DataProfile;
.super Ljava/lang/Object;
.source "DataProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_3GPP:I = 0x1

.field public static final TYPE_3GPP2:I = 0x2

.field public static final TYPE_COMMON:I


# instance fields
.field private final mApn:Ljava/lang/String;

.field private final mAuthType:I

.field private final mBearerBitmap:I

.field private final mEnabled:Z

.field private final mMaxConns:I

.field private final mMaxConnsTime:I

.field private final mModemCognitive:Z

.field private final mMtu:I

.field private final mMvnoMatchData:Ljava/lang/String;

.field private final mMvnoType:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field private final mProfileId:I

.field private final mProtocol:Ljava/lang/String;

.field private final mRoamingProtocol:Ljava/lang/String;

.field private final mSupportedApnTypesBitmap:I

.field private final mType:I

.field private final mUserName:Ljava/lang/String;

.field private final mWaitTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 269
    new-instance v0, Landroid/telephony/data/DataProfile$1;

    invoke-direct {v0}, Landroid/telephony/data/DataProfile$1;-><init>()V

    sput-object v0, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 17
    .param p1, "profileId"    # I
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "authType"    # I
    .param p5, "userName"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "maxConnsTime"    # I
    .param p9, "maxConns"    # I
    .param p10, "waitTime"    # I
    .param p11, "enabled"    # Z
    .param p12, "supportedApnTypesBitmap"    # I
    .param p13, "roamingProtocol"    # Ljava/lang/String;
    .param p14, "bearerBitmap"    # I
    .param p15, "mtu"    # I
    .param p16, "mvnoType"    # Ljava/lang/String;
    .param p17, "mvnoMatchData"    # Ljava/lang/String;
    .param p18, "modemCognitive"    # Z

    move-object/from16 v0, p0

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    move/from16 v1, p1

    iput v1, v0, Landroid/telephony/data/DataProfile;->mProfileId:I

    .line 82
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    .line 83
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/telephony/data/DataProfile;->mProtocol:Ljava/lang/String;

    .line 84
    const/4 v4, -0x1

    move/from16 v5, p4

    if-ne v5, v4, :cond_1

    .line 85
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 86
    :cond_0
    const/4 v4, 0x3

    .end local p4    # "authType":I
    .local v4, "authType":I
    :goto_0
    goto :goto_1

    .line 88
    .end local v4    # "authType":I
    .restart local p4    # "authType":I
    :cond_1
    move v4, v5

    .end local p4    # "authType":I
    .restart local v4    # "authType":I
    :goto_1
    iput v4, v0, Landroid/telephony/data/DataProfile;->mAuthType:I

    .line 89
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    .line 90
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    .line 91
    move/from16 v7, p7

    iput v7, v0, Landroid/telephony/data/DataProfile;->mType:I

    .line 92
    move/from16 v8, p8

    iput v8, v0, Landroid/telephony/data/DataProfile;->mMaxConnsTime:I

    .line 93
    move/from16 v9, p9

    iput v9, v0, Landroid/telephony/data/DataProfile;->mMaxConns:I

    .line 94
    move/from16 v10, p10

    iput v10, v0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    .line 95
    move/from16 v11, p11

    iput-boolean v11, v0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    .line 97
    move/from16 v12, p12

    iput v12, v0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmap:I

    .line 98
    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/telephony/data/DataProfile;->mRoamingProtocol:Ljava/lang/String;

    .line 99
    move/from16 v14, p14

    iput v14, v0, Landroid/telephony/data/DataProfile;->mBearerBitmap:I

    .line 100
    move/from16 v15, p15

    iput v15, v0, Landroid/telephony/data/DataProfile;->mMtu:I

    .line 101
    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/telephony/data/DataProfile;->mMvnoType:Ljava/lang/String;

    .line 102
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/telephony/data/DataProfile;->mMvnoMatchData:Ljava/lang/String;

    .line 103
    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/telephony/data/DataProfile;->mModemCognitive:Z

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mProtocol:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mMaxConnsTime:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mMaxConns:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmap:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocol:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mBearerBitmap:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mMtu:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mMvnoType:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mMvnoMatchData:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/DataProfile;->mModemCognitive:Z

    .line 125
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 243
    instance-of v0, p1, Landroid/telephony/data/DataProfile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 244
    :cond_0
    if-eq p1, p0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public getApn()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()I
    .locals 1

    .line 147
    iget v0, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    return v0
.end method

.method public getBearerBitmap()I
    .locals 1

    .line 200
    iget v0, p0, Landroid/telephony/data/DataProfile;->mBearerBitmap:I

    return v0
.end method

.method public getMaxConns()I
    .locals 1

    .line 172
    iget v0, p0, Landroid/telephony/data/DataProfile;->mMaxConns:I

    return v0
.end method

.method public getMaxConnsTime()I
    .locals 1

    .line 167
    iget v0, p0, Landroid/telephony/data/DataProfile;->mMaxConnsTime:I

    return v0
.end method

.method public getMtu()I
    .locals 1

    .line 205
    iget v0, p0, Landroid/telephony/data/DataProfile;->mMtu:I

    return v0
.end method

.method public getMvnoMatchData()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mMvnoMatchData:Ljava/lang/String;

    return-object v0
.end method

.method public getMvnoType()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mMvnoType:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileId()I
    .locals 1

    .line 130
    iget v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRoamingProtocol()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedApnTypesBitmap()I
    .locals 1

    .line 189
    iget v0, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmap:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 162
    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitTime()I
    .locals 1

    .line 179
    iget v0, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    return v0
.end method

.method public isModemCognitive()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mModemCognitive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-eqz v1, :cond_0

    const-string v1, "***/***/***"

    goto :goto_0

    .line 234
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mMaxConnsTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mMaxConns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mBearerBitmap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mMtu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile;->mModemCognitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 249
    iget v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget v0, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget v0, p0, Landroid/telephony/data/DataProfile;->mMaxConnsTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget v0, p0, Landroid/telephony/data/DataProfile;->mMaxConns:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget v0, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 260
    iget v0, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget v0, p0, Landroid/telephony/data/DataProfile;->mBearerBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget v0, p0, Landroid/telephony/data/DataProfile;->mMtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mMvnoType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mModemCognitive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 267
    return-void
.end method
