.class Lcom/android/internal/location/ProviderProperties$1;
.super Ljava/lang/Object;
.source "ProviderProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/ProviderProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/location/ProviderProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderProperties;
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 117
    .local v4, "requiresNetwork":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    .line 118
    .local v5, "requiresSatellite":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v1

    .line 119
    .local v6, "requiresCell":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v1

    .line 120
    .local v7, "hasMonetaryCost":Z
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move v8, v1

    .line 121
    .local v8, "supportsAltitude":Z
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5

    move v9, v2

    goto :goto_5

    :cond_5
    move v9, v1

    .line 122
    .local v9, "supportsSpeed":Z
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_6

    move v10, v2

    goto :goto_6

    :cond_6
    move v10, v1

    .line 123
    .local v10, "supportsBearing":Z
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .local v0, "powerRequirement":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .local v1, "accuracy":I
    new-instance v2, Lcom/android/internal/location/ProviderProperties;

    move-object v3, v2

    move v11, v0

    move v12, v1

    invoke-direct/range {v3 .. v12}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderProperties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderProperties;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/internal/location/ProviderProperties;
    .locals 1
    .param p1, "size"    # I

    .line 131
    new-array v0, p1, [Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderProperties$1;->newArray(I)[Lcom/android/internal/location/ProviderProperties;

    move-result-object p1

    return-object p1
.end method
