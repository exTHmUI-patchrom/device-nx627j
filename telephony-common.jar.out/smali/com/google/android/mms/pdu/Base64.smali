.class public Lcom/google/android/mms/pdu/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final BASELENGTH:I = 0xff

.field static final FOURBYTE:I = 0x4

.field static final PAD:B = 0x3dt

.field private static base64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 42
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_0
    const/16 v0, 0x5a

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    .line 45
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 47
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x7a

    .restart local v0    # "i":I
    :goto_2
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    .line 48
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 50
    .end local v0    # "i":I
    :cond_2
    const/16 v0, 0x39

    .restart local v0    # "i":I
    :goto_3
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    .line 51
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 54
    .end local v0    # "i":I
    :cond_3
    sget-object v0, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    .line 55
    sget-object v0, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64([B)[B
    .locals 15
    .param p0, "base64Data"    # [B

    .line 66
    invoke-static {p0}, Lcom/google/android/mms/pdu/Base64;->discardNonBase64([B)[B

    move-result-object p0

    .line 69
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 70
    new-array v0, v1, [B

    return-object v0

    .line 73
    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    .line 74
    .local v0, "numberQuadruple":I
    const/4 v2, 0x0

    .line 75
    .local v2, "decodedData":[B
    const/4 v3, 0x0

    .local v3, "b1":B
    const/4 v4, 0x0

    .local v4, "b2":B
    const/4 v5, 0x0

    .local v5, "b3":B
    const/4 v6, 0x0

    .local v6, "b4":B
    const/4 v7, 0x0

    .local v7, "marker0":B
    const/4 v8, 0x0

    .line 79
    .local v8, "marker1":B
    const/4 v9, 0x0

    .line 80
    .local v9, "encodedIndex":I
    const/4 v10, 0x0

    .line 83
    .local v10, "dataIndex":I
    array-length v11, p0

    .line 85
    .local v11, "lastData":I
    :cond_1
    add-int/lit8 v12, v11, -0x1

    aget-byte v12, p0, v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_2

    .line 86
    add-int/lit8 v11, v11, -0x1

    if-nez v11, :cond_1

    .line 87
    new-array v1, v1, [B

    return-object v1

    .line 90
    :cond_2
    sub-int v12, v11, v0

    new-array v2, v12, [B

    .line 93
    .end local v11    # "lastData":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 94
    mul-int/lit8 v10, v1, 0x4

    .line 95
    add-int/lit8 v11, v10, 0x2

    aget-byte v7, p0, v11

    .line 96
    add-int/lit8 v11, v10, 0x3

    aget-byte v8, p0, v11

    .line 98
    sget-object v11, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v12, p0, v10

    aget-byte v3, v11, v12

    .line 99
    sget-object v11, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v12, v10, 0x1

    aget-byte v12, p0, v12

    aget-byte v4, v11, v12

    .line 101
    if-eq v7, v13, :cond_3

    if-eq v8, v13, :cond_3

    .line 103
    sget-object v11, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v5, v11, v7

    .line 104
    sget-object v11, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v6, v11, v8

    .line 106
    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v9

    .line 107
    add-int/lit8 v11, v9, 0x1

    and-int/lit8 v12, v4, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v14, v5, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v2, v11

    .line 109
    add-int/lit8 v11, v9, 0x2

    shl-int/lit8 v12, v5, 0x6

    or-int/2addr v12, v6

    int-to-byte v12, v12

    aput-byte v12, v2, v11

    goto :goto_1

    .line 110
    :cond_3
    if-ne v7, v13, :cond_4

    .line 112
    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v9

    goto :goto_1

    .line 113
    :cond_4
    if-ne v8, v13, :cond_5

    .line 115
    sget-object v11, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v5, v11, v7

    .line 117
    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v9

    .line 118
    add-int/lit8 v11, v9, 0x1

    and-int/lit8 v12, v4, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v14, v5, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v2, v11

    .line 121
    :cond_5
    :goto_1
    add-int/lit8 v9, v9, 0x3

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_6
    return-object v2
.end method

.method static discardNonBase64([B)[B
    .locals 6
    .param p0, "data"    # [B

    .line 152
    array-length v0, p0

    new-array v0, v0, [B

    .line 153
    .local v0, "groomedData":[B
    const/4 v1, 0x0

    .line 155
    .local v1, "bytesCopied":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "bytesCopied":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 156
    aget-byte v4, p0, v1

    invoke-static {v4}, Lcom/google/android/mms/pdu/Base64;->isBase64(B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    add-int/lit8 v4, v3, 0x1

    .local v4, "bytesCopied":I
    aget-byte v5, p0, v1

    aput-byte v5, v0, v3

    .line 155
    .end local v3    # "bytesCopied":I
    move v3, v4

    .end local v4    # "bytesCopied":I
    .restart local v3    # "bytesCopied":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "i":I
    :cond_1
    new-array v1, v3, [B

    .line 163
    .local v1, "packedData":[B
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 165
    return-object v1
.end method

.method private static isBase64(B)Z
    .locals 3
    .param p0, "octect"    # B

    .line 133
    const/4 v0, 0x1

    const/16 v1, 0x3d

    if-ne p0, v1, :cond_0

    .line 134
    return v0

    .line 135
    :cond_0
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 136
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_1
    return v0
.end method
