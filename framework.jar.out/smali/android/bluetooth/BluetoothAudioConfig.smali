.class public final Landroid/bluetooth/BluetoothAudioConfig;
.super Ljava/lang/Object;
.source "BluetoothAudioConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothAudioConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAudioFormat:I

.field private final mChannelConfig:I

.field private final mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Landroid/bluetooth/BluetoothAudioConfig$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothAudioConfig$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "sampleRate"    # I
    .param p2, "channelConfig"    # I
    .param p3, "audioFormat"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    .line 37
    iput p2, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    .line 38
    iput p3, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 43
    instance-of v0, p1, Landroid/bluetooth/BluetoothAudioConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 44
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothAudioConfig;

    .line 45
    .local v0, "bac":Landroid/bluetooth/BluetoothAudioConfig;
    iget v2, v0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    iget v3, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    iget v3, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    iget v3, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 48
    .end local v0    # "bac":Landroid/bluetooth/BluetoothAudioConfig;
    :cond_1
    return v1
.end method

.method public getAudioFormat()I
    .locals 1

    .line 114
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    return v0
.end method

.method public getChannelConfig()I
    .locals 1

    .line 104
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 94
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 53
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mSampleRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mChannelConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mAudioFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 83
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return-void
.end method
