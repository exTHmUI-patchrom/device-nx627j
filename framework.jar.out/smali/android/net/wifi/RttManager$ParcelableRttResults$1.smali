.class Landroid/net/wifi/RttManager$ParcelableRttResults$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ParcelableRttResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/RttManager$ParcelableRttResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttResults;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 869
    .local v0, "num":I
    if-nez v0, :cond_0

    .line 870
    new-instance v1, Landroid/net/wifi/RttManager$ParcelableRttResults;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    return-object v1

    .line 873
    :cond_0
    new-array v1, v0, [Landroid/net/wifi/RttManager$RttResult;

    .line 874
    .local v1, "results":[Landroid/net/wifi/RttManager$RttResult;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 875
    new-instance v4, Landroid/net/wifi/RttManager$RttResult;

    invoke-direct {v4}, Landroid/net/wifi/RttManager$RttResult;-><init>()V

    aput-object v4, v1, v3

    .line 876
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    .line 877
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    .line 878
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    .line 879
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    .line 880
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    .line 881
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->status:I

    .line 882
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    .line 883
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    .line 884
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/net/wifi/RttManager$RttResult;->ts:J

    .line 885
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    .line 886
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    .line 887
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    .line 888
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    .line 889
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    .line 890
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    .line 891
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->distance:I

    .line 892
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    .line 893
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    .line 894
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    .line 895
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    .line 896
    aget-object v4, v1, v3

    new-instance v5, Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-direct {v5}, Landroid/net/wifi/RttManager$WifiInformationElement;-><init>()V

    iput-object v5, v4, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 897
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    iput-byte v5, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    .line 898
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 899
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 900
    .local v4, "length":B
    aget-object v6, v1, v3

    iget-object v6, v6, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    new-array v7, v4, [B

    iput-object v7, v6, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    .line 901
    aget-object v6, v1, v3

    iget-object v6, v6, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v6, v6, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readByteArray([B)V

    .line 903
    .end local v4    # "length":B
    :cond_1
    aget-object v4, v1, v3

    new-instance v6, Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-direct {v6}, Landroid/net/wifi/RttManager$WifiInformationElement;-><init>()V

    iput-object v6, v4, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 904
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    iput-byte v6, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    .line 905
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    if-eq v4, v5, :cond_2

    .line 906
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 907
    .restart local v4    # "length":B
    aget-object v5, v1, v3

    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    new-array v6, v4, [B

    iput-object v6, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    .line 908
    aget-object v5, v1, v3

    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v5, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 910
    .end local v4    # "length":B
    :cond_2
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    iput-boolean v5, v4, Landroid/net/wifi/RttManager$RttResult;->secure:Z

    .line 874
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 913
    .end local v3    # "i":I
    :cond_4
    new-instance v2, Landroid/net/wifi/RttManager$ParcelableRttResults;

    invoke-direct {v2, v1}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    .line 914
    .local v2, "parcelableResults":Landroid/net/wifi/RttManager$ParcelableRttResults;
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 863
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttResults;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttResults;
    .locals 1
    .param p1, "size"    # I

    .line 919
    new-array v0, p1, [Landroid/net/wifi/RttManager$ParcelableRttResults;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 863
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;->newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttResults;

    move-result-object p1

    return-object p1
.end method
