.class public Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;
.super Ljava/lang/Object;
.source "ProtocolPortTuple.java"


# static fields
.field public static final PROTO_STATUS_CLOSED:I = 0x0

.field public static final PROTO_STATUS_OPEN:I = 0x1

.field public static final PROTO_STATUS_UNKNOWN:I = 0x2

.field public static final RAW_BYTE_SIZE:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mPort:I

.field private final mProtocol:I

.field private final mStatus:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "protocol"    # I
    .param p2, "port"    # I
    .param p3, "status"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mProtocol:I

    .line 53
    iput p2, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mPort:I

    .line 54
    iput p3, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mStatus:I

    .line 55
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;
    .locals 4
    .param p0, "payload"    # Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 66
    .local v0, "protocol":I
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v1

    long-to-int v1, v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 68
    .local v1, "port":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 69
    .local v2, "status":I
    new-instance v3, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;-><init>(III)V

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 87
    return v0

    .line 89
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 90
    return v2

    .line 92
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;

    .line 93
    .local v1, "that":Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;
    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mProtocol:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mProtocol:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mPort:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mPort:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mStatus:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mStatus:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getPort()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mPort:I

    return v0
.end method

.method public getProtocol()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mProtocol:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 100
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mProtocol:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mPort:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mStatus:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtocolTuple{mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
