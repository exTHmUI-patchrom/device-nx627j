.class Lcom/android/internal/location/ProviderRequest$1;
.super Ljava/lang/Object;
.source "ProviderRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/ProviderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/location/ProviderRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderRequest;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    new-instance v0, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v0}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    .line 58
    .local v0, "request":Lcom/android/internal/location/ProviderRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, "count":I
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 63
    iget-object v3, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    sget-object v4, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationRequest;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/internal/location/ProviderRequest;
    .locals 1
    .param p1, "size"    # I

    .line 70
    new-array v0, p1, [Lcom/android/internal/location/ProviderRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderRequest$1;->newArray(I)[Lcom/android/internal/location/ProviderRequest;

    move-result-object p1

    return-object p1
.end method
