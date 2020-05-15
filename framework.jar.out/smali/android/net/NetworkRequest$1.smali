.class Landroid/net/NetworkRequest$1;
.super Ljava/lang/Object;
.source "NetworkRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/NetworkRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkRequest;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 361
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkCapabilities;

    .line 362
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 363
    .local v1, "legacyType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    .local v2, "requestId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkRequest$Type;->valueOf(Ljava/lang/String;)Landroid/net/NetworkRequest$Type;

    move-result-object v3

    .line 365
    .local v3, "type":Landroid/net/NetworkRequest$Type;
    new-instance v4, Landroid/net/NetworkRequest;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 366
    .local v4, "result":Landroid/net/NetworkRequest;
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 359
    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/NetworkRequest;
    .locals 1
    .param p1, "size"    # I

    .line 369
    new-array v0, p1, [Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 359
    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest$1;->newArray(I)[Landroid/net/NetworkRequest;

    move-result-object p1

    return-object p1
.end method
