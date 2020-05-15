.class public Lcom/android/server/wifi/ByteBufferReader;
.super Ljava/lang/Object;
.source "ByteBufferReader.java"


# static fields
.field public static final MAXIMUM_INTEGER_SIZE:I = 0x8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MINIMUM_INTEGER_SIZE:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J
    .locals 11
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .param p2, "size"    # I

    .line 47
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const/16 v1, 0x8

    if-gt p2, v1, :cond_2

    .line 52
    new-array v2, p2, [B

    .line 53
    .local v2, "octets":[B
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 56
    const-wide/16 v3, 0x0

    .line 57
    .local v3, "value":J
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v5, :cond_0

    .line 58
    array-length v5, v2

    sub-int/2addr v5, v0

    .local v5, "n":I
    :goto_0
    move v0, v5

    .end local v5    # "n":I
    .local v0, "n":I
    if-ltz v0, :cond_1

    .line 59
    shl-long v5, v3, v1

    aget-byte v7, v2, v0

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long v3, v5, v7

    .line 58
    add-int/lit8 v5, v0, -0x1

    .end local v0    # "n":I
    .restart local v5    # "n":I
    goto :goto_0

    .line 62
    .end local v5    # "n":I
    :cond_0
    array-length v0, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    aget-byte v6, v2, v5

    .line 63
    .local v6, "octet":B
    shl-long v7, v3, v1

    and-int/lit16 v9, v6, 0xff

    int-to-long v9, v9

    or-long v3, v7, v9

    .line 62
    .end local v6    # "octet":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 66
    :cond_1
    return-wide v3

    .line 48
    .end local v2    # "octets":[B
    .end local v3    # "value":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 80
    new-array v0, p1, [B

    .line 81
    .local v0, "octets":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 82
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static readStringWithByteLength(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 96
    .local v0, "length":I
    invoke-static {p0, v0, p1}, Lcom/android/server/wifi/ByteBufferReader;->readString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
