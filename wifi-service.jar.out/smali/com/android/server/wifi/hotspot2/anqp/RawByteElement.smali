.class public Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;
.super Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.source "RawByteElement.java"


# instance fields
.field private final mPayload:[B


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;[B)V
    .locals 0
    .param p1, "infoID"    # Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V

    .line 33
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->mPayload:[B

    .line 34
    return-void
.end method

.method public static parse(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;
    .locals 2
    .param p0, "infoID"    # Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 44
    .local v0, "rawBytes":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 47
    :cond_0
    new-instance v1, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;[B)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 56
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 57
    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 60
    return v2

    .line 62
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;

    .line 63
    .local v1, "that":Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->getID()Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->getID()Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    move-result-object v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->mPayload:[B

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->mPayload:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getPayload()[B
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->mPayload:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->mPayload:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
