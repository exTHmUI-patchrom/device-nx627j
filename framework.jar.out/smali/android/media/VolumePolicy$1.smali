.class Landroid/media/VolumePolicy$1;
.super Ljava/lang/Object;
.source "VolumePolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/VolumePolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumePolicy;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .line 102
    new-instance v0, Landroid/media/VolumePolicy;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 103
    move v1, v3

    goto :goto_0

    .line 102
    :cond_0
    nop

    .line 103
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    move v4, v3

    goto :goto_1

    .line 103
    :cond_1
    nop

    .line 104
    move v4, v2

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    move v2, v3

    goto :goto_2

    .line 104
    :cond_2
    nop

    .line 105
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    .line 102
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Landroid/media/VolumePolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumePolicy;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/VolumePolicy;
    .locals 1
    .param p1, "size"    # I

    .line 110
    new-array v0, p1, [Landroid/media/VolumePolicy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Landroid/media/VolumePolicy$1;->newArray(I)[Landroid/media/VolumePolicy;

    move-result-object p1

    return-object p1
.end method
