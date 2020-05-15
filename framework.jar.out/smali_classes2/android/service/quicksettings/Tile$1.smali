.class Landroid/service/quicksettings/Tile$1;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/Tile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/quicksettings/Tile;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/quicksettings/Tile;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 215
    new-instance v0, Landroid/service/quicksettings/Tile;

    invoke-direct {v0, p1}, Landroid/service/quicksettings/Tile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Landroid/service/quicksettings/Tile$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/quicksettings/Tile;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/quicksettings/Tile;
    .locals 1
    .param p1, "size"    # I

    .line 220
    new-array v0, p1, [Landroid/service/quicksettings/Tile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Landroid/service/quicksettings/Tile$1;->newArray(I)[Landroid/service/quicksettings/Tile;

    move-result-object p1

    return-object p1
.end method
