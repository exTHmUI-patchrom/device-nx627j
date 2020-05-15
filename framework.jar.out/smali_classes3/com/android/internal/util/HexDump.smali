.class public Lcom/android/internal/util/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field private static final HEX_DIGITS:[C

.field private static final HEX_LOWER_CASE_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    .line 22
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/util/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendByteAsHex(Ljava/lang/StringBuilder;BZ)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # B
    .param p2, "upperCase"    # Z

    .line 178
    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/util/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    .line 179
    .local v0, "digits":[C
    :goto_0
    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    and-int/lit8 v1, p1, 0xf

    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    return-object p0
.end method

.method public static dumpHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B

    .line 26
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/util/HexDump;->dumpHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpHexString([BII)Ljava/lang/String;
    .locals 10
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v0, "result":Ljava/lang/StringBuilder;
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 34
    .local v2, "line":[B
    const/4 v3, 0x0

    .line 36
    .local v3, "lineIndex":I
    const-string v4, "\n0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move v4, v3

    move v3, p1

    .local v3, "i":I
    .local v4, "lineIndex":I
    :goto_0
    add-int v5, p1, p2

    const/16 v6, 0x7e

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v3, v5, :cond_3

    .line 41
    if-ne v4, v1, :cond_2

    .line 43
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    nop

    .local v8, "j":I
    :goto_1
    move v5, v8

    .end local v8    # "j":I
    .local v5, "j":I
    if-ge v5, v1, :cond_1

    .line 47
    aget-byte v8, v2, v5

    if-le v8, v7, :cond_0

    aget-byte v8, v2, v5

    if-ge v8, v6, :cond_0

    .line 49
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2, v5, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 53
    :cond_0
    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :goto_2
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "j":I
    .restart local v8    # "j":I
    goto :goto_1

    .line 57
    .end local v8    # "j":I
    :cond_1
    const-string v5, "\n0x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/4 v4, 0x0

    .line 62
    :cond_2
    aget-byte v5, p0, v3

    .line 63
    .local v5, "b":B
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    sget-object v6, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    sget-object v6, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    and-int/lit8 v7, v5, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    add-int/lit8 v6, v4, 0x1

    .local v6, "lineIndex":I
    aput-byte v5, v2, v4

    .line 39
    .end local v4    # "lineIndex":I
    .end local v5    # "b":B
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 70
    .end local v3    # "i":I
    .end local v6    # "lineIndex":I
    .restart local v4    # "lineIndex":I
    :cond_3
    if-eq v4, v1, :cond_6

    .line 72
    sub-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x3

    .line 73
    .local v1, "count":I
    add-int/2addr v1, v9

    .line 74
    move v3, v8

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 76
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 79
    .end local v3    # "i":I
    :cond_4
    nop

    .local v8, "i":I
    :goto_4
    move v3, v8

    .end local v8    # "i":I
    .restart local v3    # "i":I
    if-ge v3, v4, :cond_6

    .line 81
    aget-byte v5, v2, v3

    if-le v5, v7, :cond_5

    aget-byte v5, v2, v3

    if-ge v5, v6, :cond_5

    .line 83
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v3, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 87
    :cond_5
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :goto_5
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "i":I
    .restart local v8    # "i":I
    goto :goto_4

    .line 92
    .end local v1    # "count":I
    .end local v8    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "hexString"    # Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 167
    .local v0, "length":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 169
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 171
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toByte(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toByte(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 169
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static toByte(C)I
    .locals 3
    .param p0, "c"    # C

    .line 157
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 158
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 159
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 161
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toByteArray(B)[B
    .locals 2
    .param p0, "b"    # B

    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 139
    .local v0, "array":[B
    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 140
    return-object v0
.end method

.method public static toByteArray(I)[B
    .locals 3
    .param p0, "i"    # I

    .line 145
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 147
    .local v0, "array":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 148
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 149
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 150
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 152
    return-object v0
.end method

.method public static toHexString(B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # B

    .line 97
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toByteArray(B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .line 133
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [B

    .line 102
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 112
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BIIZ)Ljava/lang/String;
    .locals 7
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "upperCase"    # Z

    .line 117
    if-eqz p3, :cond_0

    sget-object v0, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/util/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    .line 118
    .local v0, "digits":[C
    :goto_0
    mul-int/lit8 v1, p2, 0x2

    new-array v1, v1, [C

    .line 120
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 121
    .local v2, "bufIndex":I
    move v3, v2

    move v2, p1

    .local v2, "i":I
    .local v3, "bufIndex":I
    :goto_1
    add-int v4, p1, p2

    if-ge v2, v4, :cond_1

    .line 123
    aget-byte v4, p0, v2

    .line 124
    .local v4, "b":B
    add-int/lit8 v5, v3, 0x1

    .local v5, "bufIndex":I
    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    aput-char v6, v1, v3

    .line 125
    .end local v3    # "bufIndex":I
    add-int/lit8 v3, v5, 0x1

    .restart local v3    # "bufIndex":I
    and-int/lit8 v6, v4, 0xf

    aget-char v6, v0, v6

    aput-char v6, v1, v5

    .line 121
    .end local v4    # "b":B
    .end local v5    # "bufIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 128
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static toHexString([BZ)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "upperCase"    # Z

    .line 107
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
