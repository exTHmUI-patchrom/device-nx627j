.class Landroid/media/PlayerBase$PlayerIdCard$1;
.super Ljava/lang/Object;
.source "PlayerBase.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/PlayerBase$PlayerIdCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/PlayerBase$PlayerIdCard;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/PlayerBase$PlayerIdCard;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .line 546
    new-instance v0, Landroid/media/PlayerBase$PlayerIdCard;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/PlayerBase$PlayerIdCard;-><init>(Landroid/os/Parcel;Landroid/media/PlayerBase$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 539
    invoke-virtual {p0, p1}, Landroid/media/PlayerBase$PlayerIdCard$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/PlayerBase$PlayerIdCard;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/PlayerBase$PlayerIdCard;
    .locals 1
    .param p1, "size"    # I

    .line 549
    new-array v0, p1, [Landroid/media/PlayerBase$PlayerIdCard;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 539
    invoke-virtual {p0, p1}, Landroid/media/PlayerBase$PlayerIdCard$1;->newArray(I)[Landroid/media/PlayerBase$PlayerIdCard;

    move-result-object p1

    return-object p1
.end method
