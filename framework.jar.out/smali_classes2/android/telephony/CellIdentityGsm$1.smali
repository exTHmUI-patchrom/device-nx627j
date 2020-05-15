.class Landroid/telephony/CellIdentityGsm$1;
.super Ljava/lang/Object;
.source "CellIdentityGsm.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellIdentityGsm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/CellIdentityGsm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentityGsm;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 265
    invoke-static {p1}, Landroid/telephony/CellIdentityGsm;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentityGsm$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentityGsm;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/CellIdentityGsm;
    .locals 1
    .param p1, "size"    # I

    .line 270
    new-array v0, p1, [Landroid/telephony/CellIdentityGsm;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentityGsm$1;->newArray(I)[Landroid/telephony/CellIdentityGsm;

    move-result-object p1

    return-object p1
.end method
