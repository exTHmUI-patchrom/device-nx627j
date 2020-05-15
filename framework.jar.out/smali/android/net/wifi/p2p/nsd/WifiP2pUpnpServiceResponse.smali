.class public Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.source "WifiP2pUpnpServiceResponse.java"


# instance fields
.field private mUniqueServiceNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method protected constructor <init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "transId"    # I
    .param p3, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p4, "data"    # [B

    .line 82
    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    .line 84
    invoke-direct {p0}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->parse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Malformed upnp service response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;
    .locals 2
    .param p0, "status"    # I
    .param p1, "transId"    # I
    .param p2, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p3, "data"    # [B

    .line 148
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 149
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    return-object v1

    .line 153
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 157
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method

.method private parse()Z
    .locals 6

    .line 101
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mData:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 103
    return v1

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mData:[B

    array-length v0, v0

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 107
    return v2

    .line 110
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mData:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mVersion:I

    .line 111
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mData:[B

    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mData:[B

    array-length v4, v4

    sub-int/2addr v4, v1

    invoke-direct {v0, v3, v1, v4}, Ljava/lang/String;-><init>([BII)V

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "names":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mUniqueServiceNames:Ljava/util/List;

    .line 113
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 114
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mUniqueServiceNames:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_2
    return v1
.end method


# virtual methods
.method public getUniqueServiceNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mUniqueServiceNames:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 51
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 121
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "serviceType:UPnP("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mStatus:I

    invoke-static {v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v1, " srcAddr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v1, " version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "%02x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mUniqueServiceNames:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mUniqueServiceNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    .local v2, "name":Ljava/lang/String;
    const-string v3, " usn:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
