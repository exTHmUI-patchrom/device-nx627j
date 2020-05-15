.class Landroid/media/midi/MidiPortImpl;
.super Ljava/lang/Object;
.source "MidiPortImpl.java"


# static fields
.field private static final DATA_PACKET_OVERHEAD:I = 0x9

.field public static final MAX_PACKET_DATA_SIZE:I = 0x3f7

.field public static final MAX_PACKET_SIZE:I = 0x400

.field public static final PACKET_TYPE_DATA:I = 0x1

.field public static final PACKET_TYPE_FLUSH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MidiPort"

.field private static final TIMESTAMP_SIZE:I = 0x8


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataOffset([BI)I
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "bufferLength"    # I

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public static getDataSize([BI)I
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "bufferLength"    # I

    .line 116
    add-int/lit8 v0, p1, -0x9

    return v0
.end method

.method public static getPacketTimestamp([BI)J
    .locals 10
    .param p0, "buffer"    # [B
    .param p1, "bufferLength"    # I

    .line 125
    move v0, p1

    .line 126
    .local v0, "offset":I
    const-wide/16 v1, 0x0

    .line 128
    .local v1, "timestamp":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 129
    add-int/lit8 v0, v0, -0x1

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    .line 130
    .local v5, "b":I
    shl-long v6, v1, v4

    int-to-long v8, v5

    or-long v1, v6, v8

    .line 128
    .end local v5    # "b":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v3    # "i":I
    :cond_0
    return-wide v1
.end method

.method public static getPacketType([BI)I
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "bufferLength"    # I

    .line 98
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    return v0
.end method

.method public static packData([BIIJ[B)I
    .locals 5
    .param p0, "message"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "timestamp"    # J
    .param p5, "dest"    # [B

    .line 67
    const/16 v0, 0x3f7

    if-le p2, v0, :cond_0

    .line 68
    const/16 p2, 0x3f7

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 72
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    .local v1, "length":I
    const/4 v2, 0x1

    aput-byte v2, p5, v0

    .line 74
    .end local v0    # "length":I
    invoke-static {p0, p1, p5, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 75
    add-int/2addr v1, p2

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 79
    add-int/lit8 v3, v1, 0x1

    .local v3, "length":I
    long-to-int v4, p3

    int-to-byte v4, v4

    aput-byte v4, p5, v1

    .line 80
    .end local v1    # "length":I
    shr-long/2addr p3, v2

    .line 78
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    .end local v3    # "length":I
    .restart local v1    # "length":I
    :cond_1
    return v1
.end method

.method public static packFlush([B)I
    .locals 2
    .param p0, "dest"    # [B

    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput-byte v1, p0, v0

    .line 91
    const/4 v0, 0x1

    return v0
.end method
