.class Landroid/net/IpPrefix$2;
.super Ljava/lang/Object;
.source "IpPrefix.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpPrefix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/IpPrefix;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/IpPrefix;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 286
    .local v0, "address":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 287
    .local v1, "prefixLength":I
    new-instance v2, Landroid/net/IpPrefix;

    invoke-direct {v2, v0, v1}, Landroid/net/IpPrefix;-><init>([BI)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 283
    invoke-virtual {p0, p1}, Landroid/net/IpPrefix$2;->createFromParcel(Landroid/os/Parcel;)Landroid/net/IpPrefix;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/IpPrefix;
    .locals 1
    .param p1, "size"    # I

    .line 291
    new-array v0, p1, [Landroid/net/IpPrefix;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 283
    invoke-virtual {p0, p1}, Landroid/net/IpPrefix$2;->newArray(I)[Landroid/net/IpPrefix;

    move-result-object p1

    return-object p1
.end method
