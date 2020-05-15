.class Landroid/net/wifi/ScanResult$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;
    .locals 22
    .param p1, "in"    # Landroid/os/Parcel;

    .line 777
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 778
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 779
    sget-object v2, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/net/wifi/WifiSsid;

    .line 781
    :cond_0
    new-instance v2, Landroid/net/wifi/ScanResult;

    .line 783
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 784
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 785
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 786
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 787
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 788
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 789
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 790
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 791
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 792
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 793
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 794
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 795
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    const/16 v21, 0x0

    move-object v4, v2

    move-object v5, v1

    invoke-direct/range {v4 .. v21}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    .line 800
    .local v2, "sr":Landroid/net/wifi/ScanResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/wifi/ScanResult;->seen:J

    .line 801
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    iput-boolean v4, v2, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 802
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/net/wifi/ScanResult;->numUsage:I

    .line 803
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    .line 804
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 805
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/net/wifi/ScanResult;->flags:J

    .line 806
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 807
    .local v4, "n":I
    if-eqz v4, :cond_2

    .line 808
    new-array v6, v4, [Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v6, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 809
    move v6, v5

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_2

    .line 810
    iget-object v7, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    new-instance v8, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v8}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    aput-object v8, v7, v6

    .line 811
    iget-object v7, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v7, v7, v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 812
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 813
    .local v7, "len":I
    iget-object v8, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v8, v8, v6

    new-array v9, v7, [B

    iput-object v9, v8, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 814
    iget-object v8, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v8, v8, v6

    iget-object v8, v8, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readByteArray([B)V

    .line 809
    .end local v7    # "len":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 818
    .end local v6    # "i":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 819
    if-eqz v4, :cond_3

    .line 820
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v2, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    .line 821
    move v6, v5

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v4, :cond_3

    .line 822
    iget-object v7, v2, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 825
    .end local v6    # "i":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 826
    if-eqz v4, :cond_4

    .line 827
    new-array v6, v4, [Landroid/net/wifi/AnqpInformationElement;

    iput-object v6, v2, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 828
    move v6, v5

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v4, :cond_4

    .line 829
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 830
    .local v7, "vendorId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 831
    .local v8, "elementId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 832
    .local v9, "len":I
    new-array v10, v9, [B

    .line 833
    .local v10, "payload":[B
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->readByteArray([B)V

    .line 834
    iget-object v11, v2, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    new-instance v12, Landroid/net/wifi/AnqpInformationElement;

    invoke-direct {v12, v7, v8, v10}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    aput-object v12, v11, v6

    .line 828
    .end local v7    # "vendorId":I
    .end local v8    # "elementId":I
    .end local v9    # "len":I
    .end local v10    # "payload":[B
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 838
    .end local v6    # "i":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    move v3, v5

    :goto_4
    iput-boolean v3, v2, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    .line 839
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    .line 840
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    .line 841
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 842
    .end local v4    # "n":I
    .local v3, "n":I
    if-eqz v3, :cond_6

    .line 843
    new-array v4, v3, [Landroid/net/wifi/ScanResult$RadioChainInfo;

    iput-object v4, v2, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 844
    nop

    .local v5, "i":I
    :goto_5
    move v4, v5

    .end local v5    # "i":I
    .local v4, "i":I
    if-ge v4, v3, :cond_6

    .line 845
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    new-instance v6, Landroid/net/wifi/ScanResult$RadioChainInfo;

    invoke-direct {v6}, Landroid/net/wifi/ScanResult$RadioChainInfo;-><init>()V

    aput-object v6, v5, v4

    .line 846
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v5, v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    .line 847
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v5, v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    .line 844
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_5

    .line 850
    .end local v5    # "i":I
    :cond_6
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 775
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/ScanResult;
    .locals 1
    .param p1, "size"    # I

    .line 854
    new-array v0, p1, [Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 775
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->newArray(I)[Landroid/net/wifi/ScanResult;

    move-result-object p1

    return-object p1
.end method
