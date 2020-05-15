.class Landroid/service/autofill/ImageTransformation$1;
.super Ljava/lang/Object;
.source "ImageTransformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/ImageTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/ImageTransformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/ImageTransformation;
    .locals 11
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 251
    .local v0, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/util/regex/Pattern;

    .line 252
    .local v1, "regexs":[Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 253
    .local v2, "resIds":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 257
    .local v3, "contentDescriptions":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    aget-object v5, v3, v4

    .line 258
    .local v5, "contentDescription":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 259
    new-instance v6, Landroid/service/autofill/ImageTransformation$Builder;

    aget-object v7, v1, v4

    aget v4, v2, v4

    invoke-direct {v6, v0, v7, v4, v5}, Landroid/service/autofill/ImageTransformation$Builder;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 260
    :cond_0
    new-instance v6, Landroid/service/autofill/ImageTransformation$Builder;

    aget-object v7, v1, v4

    aget v4, v2, v4

    invoke-direct {v6, v0, v7, v4}, Landroid/service/autofill/ImageTransformation$Builder;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;I)V

    :goto_0
    move-object v4, v6

    .line 262
    .local v4, "builder":Landroid/service/autofill/ImageTransformation$Builder;
    array-length v6, v1

    .line 263
    .local v6, "size":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_2

    .line 264
    aget-object v8, v3, v7

    if-eqz v8, :cond_1

    .line 265
    aget-object v8, v1, v7

    aget v9, v2, v7

    aget-object v10, v3, v7

    invoke-virtual {v4, v8, v9, v10}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)Landroid/service/autofill/ImageTransformation$Builder;

    goto :goto_2

    .line 267
    :cond_1
    aget-object v8, v1, v7

    aget v9, v2, v7

    invoke-virtual {v4, v8, v9}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;

    .line 263
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 271
    .end local v7    # "i":I
    :cond_2
    invoke-virtual {v4}, Landroid/service/autofill/ImageTransformation$Builder;->build()Landroid/service/autofill/ImageTransformation;

    move-result-object v7

    return-object v7
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Landroid/service/autofill/ImageTransformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/ImageTransformation;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/ImageTransformation;
    .locals 1
    .param p1, "size"    # I

    .line 276
    new-array v0, p1, [Landroid/service/autofill/ImageTransformation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Landroid/service/autofill/ImageTransformation$1;->newArray(I)[Landroid/service/autofill/ImageTransformation;

    move-result-object p1

    return-object p1
.end method
