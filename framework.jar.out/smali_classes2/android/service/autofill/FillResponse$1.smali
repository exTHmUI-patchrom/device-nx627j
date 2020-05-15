.class Landroid/service/autofill/FillResponse$1;
.super Ljava/lang/Object;
.source "FillResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/FillResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillResponse;
    .locals 14
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 638
    new-instance v0, Landroid/service/autofill/FillResponse$Builder;

    invoke-direct {v0}, Landroid/service/autofill/FillResponse$Builder;-><init>()V

    .line 639
    .local v0, "builder":Landroid/service/autofill/FillResponse$Builder;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 640
    .local v2, "datasetSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/autofill/Dataset;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 641
    .local v3, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v4

    .line 642
    .local v5, "datasetCount":I
    :goto_1
    nop

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_2

    .line 643
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/Dataset;

    invoke-virtual {v0, v6}, Landroid/service/autofill/FillResponse$Builder;->addDataset(Landroid/service/autofill/Dataset;)Landroid/service/autofill/FillResponse$Builder;

    .line 642
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 645
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/SaveInfo;

    invoke-virtual {v0, v4}, Landroid/service/autofill/FillResponse$Builder;->setSaveInfo(Landroid/service/autofill/SaveInfo;)Landroid/service/autofill/FillResponse$Builder;

    .line 646
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/service/autofill/FillResponse$Builder;->setClientState(Landroid/os/Bundle;)Landroid/service/autofill/FillResponse$Builder;

    .line 649
    const-class v4, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, [Landroid/view/autofill/AutofillId;

    .line 651
    .local v4, "authenticationIds":[Landroid/view/autofill/AutofillId;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/IntentSender;

    .line 652
    .local v6, "authentication":Landroid/content/IntentSender;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/widget/RemoteViews;

    .line 653
    .local v7, "presentation":Landroid/widget/RemoteViews;
    if-eqz v4, :cond_3

    .line 654
    invoke-virtual {v0, v4, v6, v7}, Landroid/service/autofill/FillResponse$Builder;->setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 656
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews;

    .line 657
    .local v8, "header":Landroid/widget/RemoteViews;
    if-eqz v8, :cond_4

    .line 658
    invoke-virtual {v0, v8}, Landroid/service/autofill/FillResponse$Builder;->setHeader(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 660
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/widget/RemoteViews;

    .line 661
    .local v9, "footer":Landroid/widget/RemoteViews;
    if-eqz v9, :cond_5

    .line 662
    invoke-virtual {v0, v9}, Landroid/service/autofill/FillResponse$Builder;->setFooter(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 665
    :cond_5
    const-class v10, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1, v10}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, [Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v10}, Landroid/service/autofill/FillResponse$Builder;->setIgnoredIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 667
    .local v10, "disableDuration":J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_6

    .line 668
    invoke-virtual {v0, v10, v11}, Landroid/service/autofill/FillResponse$Builder;->disableAutofill(J)Landroid/service/autofill/FillResponse$Builder;

    .line 670
    :cond_6
    const-class v12, Landroid/view/autofill/AutofillId;

    .line 671
    invoke-virtual {p1, v1, v12}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Landroid/view/autofill/AutofillId;

    .line 672
    .local v1, "fieldClassifactionIds":[Landroid/view/autofill/AutofillId;
    if-eqz v1, :cond_7

    .line 673
    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setFieldClassificationIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;

    .line 675
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/service/autofill/FillResponse$Builder;->setFlags(I)Landroid/service/autofill/FillResponse$Builder;

    .line 677
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse$Builder;->build()Landroid/service/autofill/FillResponse;

    move-result-object v12

    .line 678
    .local v12, "response":Landroid/service/autofill/FillResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 680
    return-object v12
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 632
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/FillResponse;
    .locals 1
    .param p1, "size"    # I

    .line 685
    new-array v0, p1, [Landroid/service/autofill/FillResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 632
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillResponse$1;->newArray(I)[Landroid/service/autofill/FillResponse;

    move-result-object p1

    return-object p1
.end method
