.class Landroid/view/autofill/ParcelableMap$1;
.super Ljava/lang/Object;
.source "ParcelableMap.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/ParcelableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/autofill/ParcelableMap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/autofill/ParcelableMap;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "size":I
    new-instance v1, Landroid/view/autofill/ParcelableMap;

    invoke-direct {v1, v0}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    .line 58
    .local v1, "map":Landroid/view/autofill/ParcelableMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 59
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 60
    .local v4, "key":Landroid/view/autofill/AutofillId;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillValue;

    .line 62
    .local v3, "value":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v1, v4, v3}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v3    # "value":Landroid/view/autofill/AutofillValue;
    .end local v4    # "key":Landroid/view/autofill/AutofillId;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroid/view/autofill/ParcelableMap$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/autofill/ParcelableMap;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/autofill/ParcelableMap;
    .locals 1
    .param p1, "size"    # I

    .line 70
    new-array v0, p1, [Landroid/view/autofill/ParcelableMap;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroid/view/autofill/ParcelableMap$1;->newArray(I)[Landroid/view/autofill/ParcelableMap;

    move-result-object p1

    return-object p1
.end method
