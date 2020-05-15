.class Landroid/service/carrier/CarrierIdentifier$1;
.super Ljava/lang/Object;
.source "CarrierIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/carrier/CarrierIdentifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/carrier/CarrierIdentifier;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 37
    new-instance v0, Landroid/service/carrier/CarrierIdentifier;

    invoke-direct {v0, p1}, Landroid/service/carrier/CarrierIdentifier;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Landroid/service/carrier/CarrierIdentifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/carrier/CarrierIdentifier;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/carrier/CarrierIdentifier;
    .locals 1
    .param p1, "i"    # I

    .line 42
    new-array v0, p1, [Landroid/service/carrier/CarrierIdentifier;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Landroid/service/carrier/CarrierIdentifier$1;->newArray(I)[Landroid/service/carrier/CarrierIdentifier;

    move-result-object p1

    return-object p1
.end method
