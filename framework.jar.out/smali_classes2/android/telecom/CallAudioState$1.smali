.class Landroid/telecom/CallAudioState$1;
.super Ljava/lang/Object;
.source "CallAudioState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallAudioState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/CallAudioState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/CallAudioState;
    .locals 11
    .param p1, "source"    # Landroid/os/Parcel;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 248
    .local v2, "isMuted":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 249
    .local v0, "route":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 250
    .local v7, "supportedRouteMask":I
    nop

    .line 251
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 250
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 252
    .local v8, "activeBluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 253
    .local v9, "supportedBluetoothDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    nop

    .line 254
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 253
    invoke-virtual {p1, v9, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 255
    new-instance v10, Landroid/telecom/CallAudioState;

    move-object v1, v10

    move v3, v0

    move v4, v7

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Landroid/telecom/CallAudioState;-><init>(ZIILandroid/bluetooth/BluetoothDevice;Ljava/util/Collection;)V

    return-object v10
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 243
    invoke-virtual {p0, p1}, Landroid/telecom/CallAudioState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/CallAudioState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telecom/CallAudioState;
    .locals 1
    .param p1, "size"    # I

    .line 261
    new-array v0, p1, [Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 243
    invoke-virtual {p0, p1}, Landroid/telecom/CallAudioState$1;->newArray(I)[Landroid/telecom/CallAudioState;

    move-result-object p1

    return-object p1
.end method
