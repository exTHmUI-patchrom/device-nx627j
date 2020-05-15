.class public final Landroid/media/tv/TvInputHardwareInfo;
.super Ljava/lang/Object;
.source "TvInputHardwareInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputHardwareInfo$Builder;,
        Landroid/media/tv/TvInputHardwareInfo$CableConnectionStatus;
    }
.end annotation


# static fields
.field public static final CABLE_CONNECTION_STATUS_CONNECTED:I = 0x1

.field public static final CABLE_CONNECTION_STATUS_DISCONNECTED:I = 0x2

.field public static final CABLE_CONNECTION_STATUS_UNKNOWN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "TvInputHardwareInfo"

.field public static final TV_INPUT_TYPE_COMPONENT:I = 0x6

.field public static final TV_INPUT_TYPE_COMPOSITE:I = 0x3

.field public static final TV_INPUT_TYPE_DISPLAY_PORT:I = 0xa

.field public static final TV_INPUT_TYPE_DVI:I = 0x8

.field public static final TV_INPUT_TYPE_HDMI:I = 0x9

.field public static final TV_INPUT_TYPE_OTHER_HARDWARE:I = 0x1

.field public static final TV_INPUT_TYPE_SCART:I = 0x5

.field public static final TV_INPUT_TYPE_SVIDEO:I = 0x4

.field public static final TV_INPUT_TYPE_TUNER:I = 0x2

.field public static final TV_INPUT_TYPE_VGA:I = 0x7


# instance fields
.field private mAudioAddress:Ljava/lang/String;

.field private mAudioType:I

.field private mCableConnectionStatus:I

.field private mDeviceId:I

.field private mHdmiPortId:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Landroid/media/tv/TvInputHardwareInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvInputHardwareInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputHardwareInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/tv/TvInputHardwareInfo$1;

    .line 37
    invoke-direct {p0}, Landroid/media/tv/TvInputHardwareInfo;-><init>()V

    return-void
.end method

.method static synthetic access$102(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    return p1
.end method

.method static synthetic access$202(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    return p1
.end method

.method static synthetic access$300(Landroid/media/tv/TvInputHardwareInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputHardwareInfo;

    .line 37
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return v0
.end method

.method static synthetic access$302(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return p1
.end method

.method static synthetic access$402(Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    return p1
.end method

.method static synthetic access$602(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioAddress()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioType()I
    .locals 1

    .line 117
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return v0
.end method

.method public getCableConnectionStatus()I
    .locals 1

    .line 141
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 109
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    return v0
.end method

.method public getHdmiPortId()I
    .locals 2

    .line 125
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 128
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    return v0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getType()I
    .locals 1

    .line 113
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    .line 182
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    .line 185
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    .line 186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 147
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "TvInputHardwareInfo {id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, ", audio_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, ", audio_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 152
    const-string v1, ", hdmi_port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    const-string v1, ", cable_connection_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 167
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 172
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    :cond_0
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return-void
.end method
