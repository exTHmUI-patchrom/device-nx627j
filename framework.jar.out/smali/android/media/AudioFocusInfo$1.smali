.class Landroid/media/AudioFocusInfo$1;
.super Ljava/lang/Object;
.source "AudioFocusInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioFocusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/AudioFocusInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioFocusInfo;
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 195
    new-instance v9, Landroid/media/AudioFocusInfo;

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 196
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/media/AudioAttributes;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 205
    .local v0, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioFocusInfo;->setGen(J)V

    .line 206
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Landroid/media/AudioFocusInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioFocusInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/AudioFocusInfo;
    .locals 1
    .param p1, "size"    # I

    .line 210
    new-array v0, p1, [Landroid/media/AudioFocusInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Landroid/media/AudioFocusInfo$1;->newArray(I)[Landroid/media/AudioFocusInfo;

    move-result-object p1

    return-object p1
.end method
