.class Landroid/net/lowpan/LowpanBeaconInfo$1;
.super Ljava/lang/Object;
.source "LowpanBeaconInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanBeaconInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/lowpan/LowpanBeaconInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanBeaconInfo;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 214
    new-instance v0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanBeaconInfo$Builder;-><init>()V

    .line 216
    .local v0, "builder":Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    sget-object v1, Landroid/net/lowpan/LowpanIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v0, v1}, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->setLowpanIdentity(Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanBeaconInfo$Builder;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->setRssi(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->setLqi(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->setBeaconAddress([B)Landroid/net/lowpan/LowpanBeaconInfo$Builder;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->setFlag(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;

    .line 223
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 227
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->build()Landroid/net/lowpan/LowpanBeaconInfo;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanBeaconInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanBeaconInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/lowpan/LowpanBeaconInfo;
    .locals 1
    .param p1, "size"    # I

    .line 231
    new-array v0, p1, [Landroid/net/lowpan/LowpanBeaconInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanBeaconInfo$1;->newArray(I)[Landroid/net/lowpan/LowpanBeaconInfo;

    move-result-object p1

    return-object p1
.end method
