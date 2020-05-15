.class public Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;
.super Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;
.source "ExpandedEAPMethod.java"


# static fields
.field public static final EXPECTED_LENGTH_VALUE:I = 0x7


# instance fields
.field private final mVendorID:I

.field private final mVendorType:J


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0
    .param p1, "authType"    # I
    .param p2, "vendorID"    # I
    .param p3, "vendorType"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;-><init>(I)V

    .line 44
    iput p2, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    .line 45
    iput-wide p3, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    .line 46
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;IZ)Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;
    .locals 7
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "inner"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 66
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 68
    .local v0, "vendorID":I
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x4

    invoke-static {p0, v1, v2}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    and-long/2addr v3, v5

    .line 71
    .local v3, "vendorType":J
    if-eqz p2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .line 73
    .local v1, "authType":I
    new-instance v2, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;-><init>(IIJ)V

    return-object v2

    .line 61
    .end local v0    # "vendorID":I
    .end local v1    # "authType":I
    .end local v3    # "vendorType":J
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 87
    return v0

    .line 89
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 90
    return v2

    .line 92
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;

    .line 93
    .local v1, "that":Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;
    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    iget-wide v5, v1, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getVendorID()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    return v0
.end method

.method public getVendorType()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 98
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExpandedEAPMethod{mVendorID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mVendorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
