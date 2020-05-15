.class Landroid/net/ProxyInfo$1;
.super Ljava/lang/Object;
.source "ProxyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ProxyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/ProxyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyInfo;
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "host":Ljava/lang/String;
    const/4 v1, 0x0

    .line 342
    .local v1, "port":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 344
    .local v2, "url":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 345
    .local v3, "localPort":I
    new-instance v4, Landroid/net/ProxyInfo;

    invoke-direct {v4, v2, v3}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    return-object v4

    .line 347
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "localPort":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 352
    .local v8, "exclList":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 353
    .local v9, "parsedExclList":[Ljava/lang/String;
    new-instance v10, Landroid/net/ProxyInfo;

    const/4 v7, 0x0

    move-object v2, v10

    move-object v3, v0

    move v4, v1

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v2 .. v7}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo$1;)V

    .line 355
    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 338
    invoke-virtual {p0, p1}, Landroid/net/ProxyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/ProxyInfo;
    .locals 1
    .param p1, "size"    # I

    .line 359
    new-array v0, p1, [Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 338
    invoke-virtual {p0, p1}, Landroid/net/ProxyInfo$1;->newArray(I)[Landroid/net/ProxyInfo;

    move-result-object p1

    return-object p1
.end method
