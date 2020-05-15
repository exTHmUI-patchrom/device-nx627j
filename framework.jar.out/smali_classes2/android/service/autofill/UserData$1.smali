.class Landroid/service/autofill/UserData$1;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/UserData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/UserData;
    .locals 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "categoryIds":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "values":[Ljava/lang/String;
    new-instance v3, Landroid/service/autofill/UserData$Builder;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    aget-object v4, v1, v4

    invoke-direct {v3, v0, v5, v4}, Landroid/service/autofill/UserData$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/service/autofill/UserData$Builder;->setFieldClassificationAlgorithm(Ljava/lang/String;Landroid/os/Bundle;)Landroid/service/autofill/UserData$Builder;

    move-result-object v3

    .line 352
    .local v3, "builder":Landroid/service/autofill/UserData$Builder;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 353
    aget-object v5, v2, v4

    aget-object v6, v1, v4

    invoke-virtual {v3, v5, v6}, Landroid/service/autofill/UserData$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/service/autofill/UserData$Builder;

    .line 352
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 355
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v3}, Landroid/service/autofill/UserData$Builder;->build()Landroid/service/autofill/UserData;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 341
    invoke-virtual {p0, p1}, Landroid/service/autofill/UserData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/UserData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/UserData;
    .locals 1
    .param p1, "size"    # I

    .line 360
    new-array v0, p1, [Landroid/service/autofill/UserData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 341
    invoke-virtual {p0, p1}, Landroid/service/autofill/UserData$1;->newArray(I)[Landroid/service/autofill/UserData;

    move-result-object p1

    return-object p1
.end method
