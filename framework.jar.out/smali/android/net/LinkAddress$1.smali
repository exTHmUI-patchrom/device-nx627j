.class Landroid/net/LinkAddress$1;
.super Ljava/lang/Object;
.source "LinkAddress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/LinkAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkAddress;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, "address":Ljava/net/InetAddress;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 346
    goto :goto_0

    .line 342
    :catch_0
    move-exception v1

    .line 347
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 348
    .local v1, "prefixLength":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 349
    .local v2, "flags":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 350
    .local v3, "scope":I
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;III)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 337
    invoke-virtual {p0, p1}, Landroid/net/LinkAddress$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkAddress;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/LinkAddress;
    .locals 1
    .param p1, "size"    # I

    .line 354
    new-array v0, p1, [Landroid/net/LinkAddress;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 337
    invoke-virtual {p0, p1}, Landroid/net/LinkAddress$1;->newArray(I)[Landroid/net/LinkAddress;

    move-result-object p1

    return-object p1
.end method
