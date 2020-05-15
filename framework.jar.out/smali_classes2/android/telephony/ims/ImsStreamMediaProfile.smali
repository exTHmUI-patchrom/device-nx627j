.class public final Landroid/telephony/ims/ImsStreamMediaProfile;
.super Ljava/lang/Object;
.source "ImsStreamMediaProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final AUDIO_QUALITY_AMR:I = 0x1

.field public static final AUDIO_QUALITY_AMR_WB:I = 0x2

.field public static final AUDIO_QUALITY_EVRC:I = 0x4

.field public static final AUDIO_QUALITY_EVRC_B:I = 0x5

.field public static final AUDIO_QUALITY_EVRC_NW:I = 0x7

.field public static final AUDIO_QUALITY_EVRC_WB:I = 0x6

.field public static final AUDIO_QUALITY_EVS_FB:I = 0x14

.field public static final AUDIO_QUALITY_EVS_NB:I = 0x11

.field public static final AUDIO_QUALITY_EVS_SWB:I = 0x13

.field public static final AUDIO_QUALITY_EVS_WB:I = 0x12

.field public static final AUDIO_QUALITY_G711A:I = 0xd

.field public static final AUDIO_QUALITY_G711AB:I = 0xf

.field public static final AUDIO_QUALITY_G711U:I = 0xb

.field public static final AUDIO_QUALITY_G722:I = 0xe

.field public static final AUDIO_QUALITY_G723:I = 0xc

.field public static final AUDIO_QUALITY_G729:I = 0x10

.field public static final AUDIO_QUALITY_GSM_EFR:I = 0x8

.field public static final AUDIO_QUALITY_GSM_FR:I = 0x9

.field public static final AUDIO_QUALITY_GSM_HR:I = 0xa

.field public static final AUDIO_QUALITY_NONE:I = 0x0

.field public static final AUDIO_QUALITY_QCELP13K:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsStreamMediaProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIRECTION_INACTIVE:I = 0x0

.field public static final DIRECTION_INVALID:I = -0x1

.field public static final DIRECTION_RECEIVE:I = 0x1

.field public static final DIRECTION_SEND:I = 0x2

.field public static final DIRECTION_SEND_RECEIVE:I = 0x3

.field public static final RTT_MODE_DISABLED:I = 0x0

.field public static final RTT_MODE_FULL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsStreamMediaProfile"

.field public static final VIDEO_QUALITY_NONE:I = 0x0

.field public static final VIDEO_QUALITY_QCIF:I = 0x1

.field public static final VIDEO_QUALITY_QVGA_LANDSCAPE:I = 0x2

.field public static final VIDEO_QUALITY_QVGA_PORTRAIT:I = 0x4

.field public static final VIDEO_QUALITY_VGA_LANDSCAPE:I = 0x8

.field public static final VIDEO_QUALITY_VGA_PORTRAIT:I = 0x10


# instance fields
.field public mAudioDirection:I

.field public mAudioQuality:I

.field public mRttMode:I

.field public mVideoDirection:I

.field public mVideoQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 220
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 161
    const/4 v1, 0x3

    iput v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 162
    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 163
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 164
    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 165
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "rttMode"    # I

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 179
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "audioQuality"    # I
    .param p2, "audioDirection"    # I
    .param p3, "videoQuality"    # I
    .param p4, "videoDirection"    # I

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 171
    iput p2, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 172
    iput p3, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 173
    iput p4, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 174
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "audioQuality"    # I
    .param p2, "audioDirection"    # I
    .param p3, "videoQuality"    # I
    .param p4, "videoDirection"    # I
    .param p5, "rttMode"    # I

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 152
    iput p2, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 153
    iput p3, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 154
    iput p4, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 155
    iput p5, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 100
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 218
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 182
    iget v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 183
    iget v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 184
    iget v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 185
    iget v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 186
    iget v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 187
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioDirection()I
    .locals 1

    .line 253
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    return v0
.end method

.method public getAudioQuality()I
    .locals 1

    .line 249
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    return v0
.end method

.method public getRttMode()I
    .locals 1

    .line 265
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    return v0
.end method

.method public getVideoDirection()I
    .locals 1

    .line 261
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    return v0
.end method

.method public getVideoQuality()I
    .locals 1

    .line 257
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    return v0
.end method

.method public isRttCall()Z
    .locals 2

    .line 238
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setRttMode(I)V
    .locals 0
    .param p1, "rttMode"    # I

    .line 245
    iput p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 246
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ audioQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rttMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 205
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    return-void
.end method
