.class Landroid/media/midi/MidiDeviceInfo$1;
.super Ljava/lang/Object;
.source "MidiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/midi/MidiDeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/midi/MidiDeviceInfo;
    .locals 18
    .param p1, "in"    # Landroid/os/Parcel;

    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 333
    .local v9, "type":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 334
    .local v10, "id":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 335
    .local v11, "inputPortCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 336
    .local v12, "outputPortCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v13

    .line 337
    .local v13, "inputPortNames":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 338
    .local v14, "outputPortNames":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v8, v0

    .line 339
    .local v8, "isPrivate":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v15

    .line 340
    .local v15, "basicPropertiesIgnored":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .line 341
    .local v16, "properties":Landroid/os/Bundle;
    new-instance v17, Landroid/media/midi/MidiDeviceInfo;

    move-object/from16 v0, v17

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v8}, Landroid/media/midi/MidiDeviceInfo;-><init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-object v17
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 329
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/midi/MidiDeviceInfo;
    .locals 1
    .param p1, "size"    # I

    .line 346
    new-array v0, p1, [Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 329
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiDeviceInfo$1;->newArray(I)[Landroid/media/midi/MidiDeviceInfo;

    move-result-object p1

    return-object p1
.end method
