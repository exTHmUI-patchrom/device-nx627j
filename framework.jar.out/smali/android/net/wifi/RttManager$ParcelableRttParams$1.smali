.class Landroid/net/wifi/RttManager$ParcelableRttParams$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ParcelableRttParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/RttManager$ParcelableRttParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttParams;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 564
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 565
    .local v0, "num":I
    new-array v1, v0, [Landroid/net/wifi/RttManager$RttParams;

    .line 566
    .local v1, "params":[Landroid/net/wifi/RttManager$RttParams;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 567
    new-instance v4, Landroid/net/wifi/RttManager$RttParams;

    invoke-direct {v4}, Landroid/net/wifi/RttManager$RttParams;-><init>()V

    aput-object v4, v1, v3

    .line 568
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    .line 569
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    .line 570
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    iput-boolean v5, v4, Landroid/net/wifi/RttManager$RttParams;->secure:Z

    .line 571
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    .line 572
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    .line 573
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    .line 574
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    .line 575
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    .line 576
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    .line 577
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->interval:I

    .line 578
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    .line 579
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    .line 580
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    .line 581
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v6, :cond_1

    move v5, v6

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    iput-boolean v5, v4, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    .line 582
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v6, :cond_2

    goto :goto_3

    :cond_2
    move v6, v2

    :goto_3
    iput-boolean v6, v4, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    .line 583
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    .line 584
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    .line 585
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    .line 566
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 588
    .end local v3    # "i":I
    :cond_3
    new-instance v2, Landroid/net/wifi/RttManager$ParcelableRttParams;

    invoke-direct {v2, v1}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    .line 589
    .local v2, "parcelableParams":Landroid/net/wifi/RttManager$ParcelableRttParams;
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttParams;
    .locals 1
    .param p1, "size"    # I

    .line 594
    new-array v0, p1, [Landroid/net/wifi/RttManager$ParcelableRttParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;->newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttParams;

    move-result-object p1

    return-object p1
.end method
