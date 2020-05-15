.class public Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;
.super Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.source "ThreeGPPNetworkElement.java"


# static fields
.field public static final GUD_VERSION_1:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;>;"
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V

    .line 52
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;->mNetworks:Ljava/util/List;

    .line 53
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;
    .locals 5
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 67
    .local v0, "gudVersion":I
    if-nez v0, :cond_3

    .line 72
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 73
    .local v1, "length":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;

    move-result-object v3

    .line 82
    .local v3, "network":Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;
    if-eqz v3, :cond_0

    .line 83
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v3    # "network":Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;
    :cond_0
    goto :goto_0

    .line 86
    :cond_1
    new-instance v3, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;

    invoke-direct {v3, v2}, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;-><init>(Ljava/util/List;)V

    return-object v3

    .line 74
    .end local v2    # "networks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;>;"
    :cond_2
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatch length and buffer size: length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bufferSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    .end local v1    # "length":I
    :cond_3
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported GUD version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 95
    if-ne p0, p1, :cond_0

    .line 96
    const/4 v0, 0x1

    return v0

    .line 98
    :cond_0
    instance-of v0, p1, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;

    if-nez v0, :cond_1

    .line 99
    const/4 v0, 0x0

    return v0

    .line 101
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;

    .line 102
    .local v0, "that":Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;->mNetworks:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;->mNetworks:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;->mNetworks:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;->mNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThreeGPPNetwork{mNetworks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;->mNetworks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
