.class Landroid/net/wifi/aware/ConfigRequest$1;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/ConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/ConfigRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/ConfigRequest;
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    .local v2, "support5gBand":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 125
    .local v0, "masterPreference":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 126
    .local v8, "clusterLow":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 127
    .local v9, "clusterHigh":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v10

    .line 129
    .local v10, "discoveryWindowInterval":[I
    new-instance v11, Landroid/net/wifi/aware/ConfigRequest;

    const/4 v7, 0x0

    move-object v1, v11

    move v3, v0

    move v4, v8

    move v5, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v7}, Landroid/net/wifi/aware/ConfigRequest;-><init>(ZIII[ILandroid/net/wifi/aware/ConfigRequest$1;)V

    return-object v11
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/ConfigRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/ConfigRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/aware/ConfigRequest;
    .locals 1
    .param p1, "size"    # I

    .line 118
    new-array v0, p1, [Landroid/net/wifi/aware/ConfigRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/ConfigRequest$1;->newArray(I)[Landroid/net/wifi/aware/ConfigRequest;

    move-result-object p1

    return-object p1
.end method
