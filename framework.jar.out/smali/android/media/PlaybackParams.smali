.class public final Landroid/media/PlaybackParams;
.super Ljava/lang/Object;
.source "PlaybackParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlaybackParams$AudioStretchMode;,
        Landroid/media/PlaybackParams$AudioFallbackMode;
    }
.end annotation


# static fields
.field public static final AUDIO_FALLBACK_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_FALLBACK_MODE_FAIL:I = 0x2

.field public static final AUDIO_FALLBACK_MODE_MUTE:I = 0x1

.field public static final AUDIO_STRETCH_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_STRETCH_MODE_VOICE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/PlaybackParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_AUDIO_FALLBACK_MODE:I = 0x4

.field private static final SET_AUDIO_STRETCH_MODE:I = 0x8

.field private static final SET_PITCH:I = 0x2

.field private static final SET_SPEED:I = 0x1


# instance fields
.field private mAudioFallbackMode:I

.field private mAudioStretchMode:I

.field private mPitch:F

.field private mSet:I

.field private mSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 226
    new-instance v0, Landroid/media/PlaybackParams$1;

    invoke-direct {v0}, Landroid/media/PlaybackParams$1;-><init>()V

    sput-object v0, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 95
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 96
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 97
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 98
    iput v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 101
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 95
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 96
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 97
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 98
    iput v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 108
    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 109
    iput v1, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/PlaybackParams$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/media/PlaybackParams$1;

    .line 58
    invoke-direct {p0, p1}, Landroid/media/PlaybackParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public allowDefaults()Landroid/media/PlaybackParams;
    .locals 1

    .line 122
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 123
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioFallbackMode()I
    .locals 2

    .line 143
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 146
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    return v0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "audio fallback mode not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAudioStretchMode()I
    .locals 2

    .line 170
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 173
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    return v0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "audio stretch mode not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPitch()F
    .locals 2

    .line 197
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 200
    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    return v0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pitch not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSpeed()F
    .locals 2

    .line 220
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 223
    iget v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    return v0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "speed not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudioFallbackMode(I)Landroid/media/PlaybackParams;
    .locals 1
    .param p1, "audioFallbackMode"    # I

    .line 132
    iput p1, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 133
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 134
    return-object p0
.end method

.method public setAudioStretchMode(I)Landroid/media/PlaybackParams;
    .locals 1
    .param p1, "audioStretchMode"    # I

    .line 157
    iput p1, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 158
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 159
    return-object p0
.end method

.method public setPitch(F)Landroid/media/PlaybackParams;
    .locals 2
    .param p1, "pitch"    # F

    .line 183
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 186
    iput p1, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 187
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 188
    return-object p0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pitch must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpeed(F)Landroid/media/PlaybackParams;
    .locals 1
    .param p1, "speed"    # F

    .line 209
    iput p1, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 210
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 211
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 247
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 251
    iget v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 252
    return-void
.end method
