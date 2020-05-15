.class Landroid/service/autofill/CustomDescription$1;
.super Ljava/lang/Object;
.source "CustomDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/CustomDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/CustomDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CustomDescription;
    .locals 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 350
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 351
    .local v1, "parentPresentation":Landroid/widget/RemoteViews;
    if-nez v1, :cond_0

    return-object v0

    .line 353
    :cond_0
    new-instance v2, Landroid/service/autofill/CustomDescription$Builder;

    invoke-direct {v2, v1}, Landroid/service/autofill/CustomDescription$Builder;-><init>(Landroid/widget/RemoteViews;)V

    .line 354
    .local v2, "builder":Landroid/service/autofill/CustomDescription$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 355
    .local v3, "ids":[I
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 356
    const-class v5, Landroid/service/autofill/InternalTransformation;

    .line 357
    invoke-virtual {p1, v0, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, [Landroid/service/autofill/InternalTransformation;

    .line 358
    .local v5, "values":[Landroid/service/autofill/InternalTransformation;
    array-length v6, v3

    .line 359
    .local v6, "size":I
    move v7, v4

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 360
    aget v8, v3, v7

    aget-object v9, v5, v7

    invoke-virtual {v2, v8, v9}, Landroid/service/autofill/CustomDescription$Builder;->addChild(ILandroid/service/autofill/Transformation;)Landroid/service/autofill/CustomDescription$Builder;

    .line 359
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 363
    .end local v5    # "values":[Landroid/service/autofill/InternalTransformation;
    .end local v6    # "size":I
    .end local v7    # "i":I
    :cond_1
    const-class v5, Landroid/service/autofill/InternalValidator;

    .line 364
    invoke-virtual {p1, v0, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, [Landroid/service/autofill/InternalValidator;

    .line 365
    .local v5, "conditions":[Landroid/service/autofill/InternalValidator;
    if-eqz v5, :cond_2

    .line 366
    const-class v6, Landroid/service/autofill/BatchUpdates;

    invoke-virtual {p1, v0, v6}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/service/autofill/BatchUpdates;

    .line 367
    .local v0, "updates":[Landroid/service/autofill/BatchUpdates;
    array-length v6, v5

    .line 368
    .restart local v6    # "size":I
    nop

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 369
    aget-object v7, v5, v4

    aget-object v8, v0, v4

    invoke-virtual {v2, v7, v8}, Landroid/service/autofill/CustomDescription$Builder;->batchUpdate(Landroid/service/autofill/Validator;Landroid/service/autofill/BatchUpdates;)Landroid/service/autofill/CustomDescription$Builder;

    .line 368
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 372
    .end local v0    # "updates":[Landroid/service/autofill/BatchUpdates;
    .end local v4    # "i":I
    .end local v6    # "size":I
    :cond_2
    invoke-virtual {v2}, Landroid/service/autofill/CustomDescription$Builder;->build()Landroid/service/autofill/CustomDescription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 344
    invoke-virtual {p0, p1}, Landroid/service/autofill/CustomDescription$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CustomDescription;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/CustomDescription;
    .locals 1
    .param p1, "size"    # I

    .line 377
    new-array v0, p1, [Landroid/service/autofill/CustomDescription;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 344
    invoke-virtual {p0, p1}, Landroid/service/autofill/CustomDescription$1;->newArray(I)[Landroid/service/autofill/CustomDescription;

    move-result-object p1

    return-object p1
.end method
