.class Lnubia/os/advt/AdBlackItem$1;
.super Ljava/lang/Object;
.source "AdBlackItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/advt/AdBlackItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lnubia/os/advt/AdBlackItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lnubia/os/advt/AdBlackItem$1;->createFromParcel(Landroid/os/Parcel;)Lnubia/os/advt/AdBlackItem;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnubia/os/advt/AdBlackItem;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 25
    new-instance v0, Lnubia/os/advt/AdBlackItem;

    invoke-direct {v0, p1}, Lnubia/os/advt/AdBlackItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lnubia/os/advt/AdBlackItem$1;->newArray(I)[Lnubia/os/advt/AdBlackItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lnubia/os/advt/AdBlackItem;
    .locals 1
    .param p1, "size"    # I

    .line 30
    new-array v0, p1, [Lnubia/os/advt/AdBlackItem;

    return-object v0
.end method
