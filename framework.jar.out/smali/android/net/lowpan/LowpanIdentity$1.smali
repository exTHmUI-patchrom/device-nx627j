.class Landroid/net/lowpan/LowpanIdentity$1;
.super Ljava/lang/Object;
.source "LowpanIdentity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/lowpan/LowpanIdentity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanIdentity;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 240
    new-instance v0, Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanIdentity$Builder;-><init>()V

    .line 242
    .local v0, "builder":Landroid/net/lowpan/LowpanIdentity$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setRawName([B)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setType(Ljava/lang/String;)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setXpanid([B)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setPanid(I)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setChannel(I)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 248
    invoke-virtual {v0}, Landroid/net/lowpan/LowpanIdentity$Builder;->build()Landroid/net/lowpan/LowpanIdentity;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 237
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanIdentity$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanIdentity;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/lowpan/LowpanIdentity;
    .locals 1
    .param p1, "size"    # I

    .line 252
    new-array v0, p1, [Landroid/net/lowpan/LowpanIdentity;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 237
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanIdentity$1;->newArray(I)[Landroid/net/lowpan/LowpanIdentity;

    move-result-object p1

    return-object p1
.end method
