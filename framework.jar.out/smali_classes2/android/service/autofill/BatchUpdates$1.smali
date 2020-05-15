.class Landroid/service/autofill/BatchUpdates$1;
.super Ljava/lang/Object;
.source "BatchUpdates.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/BatchUpdates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/BatchUpdates;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/BatchUpdates;
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 197
    new-instance v0, Landroid/service/autofill/BatchUpdates$Builder;

    invoke-direct {v0}, Landroid/service/autofill/BatchUpdates$Builder;-><init>()V

    .line 198
    .local v0, "builder":Landroid/service/autofill/BatchUpdates$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 199
    .local v1, "ids":[I
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 200
    const-class v3, Landroid/service/autofill/InternalTransformation;

    .line 201
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, [Landroid/service/autofill/InternalTransformation;

    .line 202
    .local v3, "values":[Landroid/service/autofill/InternalTransformation;
    array-length v4, v1

    .line 203
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 204
    aget v6, v1, v5

    aget-object v7, v3, v5

    invoke-virtual {v0, v6, v7}, Landroid/service/autofill/BatchUpdates$Builder;->transformChild(ILandroid/service/autofill/Transformation;)Landroid/service/autofill/BatchUpdates$Builder;

    .line 203
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 207
    .end local v3    # "values":[Landroid/service/autofill/InternalTransformation;
    .end local v4    # "size":I
    .end local v5    # "i":I
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 208
    .local v2, "updates":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_1

    .line 209
    invoke-virtual {v0, v2}, Landroid/service/autofill/BatchUpdates$Builder;->updateTemplate(Landroid/widget/RemoteViews;)Landroid/service/autofill/BatchUpdates$Builder;

    .line 211
    :cond_1
    invoke-virtual {v0}, Landroid/service/autofill/BatchUpdates$Builder;->build()Landroid/service/autofill/BatchUpdates;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Landroid/service/autofill/BatchUpdates$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/BatchUpdates;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/BatchUpdates;
    .locals 1
    .param p1, "size"    # I

    .line 216
    new-array v0, p1, [Landroid/service/autofill/BatchUpdates;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Landroid/service/autofill/BatchUpdates$1;->newArray(I)[Landroid/service/autofill/BatchUpdates;

    move-result-object p1

    return-object p1
.end method
