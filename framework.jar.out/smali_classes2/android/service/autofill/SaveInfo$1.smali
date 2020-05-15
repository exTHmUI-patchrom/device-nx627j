.class Landroid/service/autofill/SaveInfo$1;
.super Ljava/lang/Object;
.source "SaveInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/SaveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/SaveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/SaveInfo;
    .locals 12
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 761
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 762
    .local v0, "type":I
    const-class v1, Landroid/view/autofill/AutofillId;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Landroid/view/autofill/AutofillId;

    .line 763
    .local v1, "requiredIds":[Landroid/view/autofill/AutofillId;
    if-eqz v1, :cond_0

    .line 764
    new-instance v3, Landroid/service/autofill/SaveInfo$Builder;

    invoke-direct {v3, v0, v1}, Landroid/service/autofill/SaveInfo$Builder;-><init>(I[Landroid/view/autofill/AutofillId;)V

    goto :goto_0

    .line 765
    :cond_0
    new-instance v3, Landroid/service/autofill/SaveInfo$Builder;

    invoke-direct {v3, v0}, Landroid/service/autofill/SaveInfo$Builder;-><init>(I)V

    .line 766
    .local v3, "builder":Landroid/service/autofill/SaveInfo$Builder;
    :goto_0
    const-class v4, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, [Landroid/view/autofill/AutofillId;

    .line 767
    .local v4, "optionalIds":[Landroid/view/autofill/AutofillId;
    if-eqz v4, :cond_1

    .line 768
    invoke-virtual {v3, v4}, Landroid/service/autofill/SaveInfo$Builder;->setOptionalIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;

    .line 771
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/IntentSender;

    invoke-virtual {v3, v5, v6}, Landroid/service/autofill/SaveInfo$Builder;->setNegativeAction(ILandroid/content/IntentSender;)Landroid/service/autofill/SaveInfo$Builder;

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/service/autofill/SaveInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/service/autofill/SaveInfo$Builder;

    .line 773
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/CustomDescription;

    .line 774
    .local v5, "customDescripton":Landroid/service/autofill/CustomDescription;
    if-eqz v5, :cond_2

    .line 775
    invoke-virtual {v3, v5}, Landroid/service/autofill/SaveInfo$Builder;->setCustomDescription(Landroid/service/autofill/CustomDescription;)Landroid/service/autofill/SaveInfo$Builder;

    .line 777
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/InternalValidator;

    .line 778
    .local v6, "validator":Landroid/service/autofill/InternalValidator;
    if-eqz v6, :cond_3

    .line 779
    invoke-virtual {v3, v6}, Landroid/service/autofill/SaveInfo$Builder;->setValidator(Landroid/service/autofill/Validator;)Landroid/service/autofill/SaveInfo$Builder;

    .line 781
    :cond_3
    const-class v7, Landroid/service/autofill/InternalSanitizer;

    .line 782
    invoke-virtual {p1, v2, v7}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, [Landroid/service/autofill/InternalSanitizer;

    .line 783
    .local v7, "sanitizers":[Landroid/service/autofill/InternalSanitizer;
    if-eqz v7, :cond_4

    .line 784
    array-length v8, v7

    .line 785
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_4

    .line 786
    const-class v10, Landroid/view/autofill/AutofillId;

    .line 787
    invoke-virtual {p1, v2, v10}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, [Landroid/view/autofill/AutofillId;

    .line 788
    .local v10, "autofillIds":[Landroid/view/autofill/AutofillId;
    aget-object v11, v7, v9

    invoke-virtual {v3, v11, v10}, Landroid/service/autofill/SaveInfo$Builder;->addSanitizer(Landroid/service/autofill/Sanitizer;[Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;

    .line 785
    .end local v10    # "autofillIds":[Landroid/view/autofill/AutofillId;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 791
    .end local v8    # "size":I
    .end local v9    # "i":I
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 792
    .local v2, "triggerId":Landroid/view/autofill/AutofillId;
    if-eqz v2, :cond_5

    .line 793
    invoke-virtual {v3, v2}, Landroid/service/autofill/SaveInfo$Builder;->setTriggerId(Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;

    .line 795
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/service/autofill/SaveInfo$Builder;->setFlags(I)Landroid/service/autofill/SaveInfo$Builder;

    .line 796
    invoke-virtual {v3}, Landroid/service/autofill/SaveInfo$Builder;->build()Landroid/service/autofill/SaveInfo;

    move-result-object v8

    return-object v8
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 754
    invoke-virtual {p0, p1}, Landroid/service/autofill/SaveInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/SaveInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/SaveInfo;
    .locals 1
    .param p1, "size"    # I

    .line 801
    new-array v0, p1, [Landroid/service/autofill/SaveInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 754
    invoke-virtual {p0, p1}, Landroid/service/autofill/SaveInfo$1;->newArray(I)[Landroid/service/autofill/SaveInfo;

    move-result-object p1

    return-object p1
.end method
