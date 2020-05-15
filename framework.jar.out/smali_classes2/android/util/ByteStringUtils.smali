.class public final Landroid/util/ByteStringUtils;
.super Ljava/lang/Object;
.source "ByteStringUtils.java"


# static fields
.field private static final HEX_LOWERCASE_ARRAY:[C

.field private static final HEX_UPPERCASE_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/util/ByteStringUtils;->HEX_LOWERCASE_ARRAY:[C

    .line 26
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/util/ByteStringUtils;->HEX_UPPERCASE_ARRAY:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static fromHexToByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 60
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 65
    .local v0, "chars":[C
    array-length v1, v0

    .line 66
    .local v1, "charLength":I
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    .line 68
    .local v2, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 69
    mul-int/lit8 v4, v3, 0x2

    aget-char v4, v0, v4

    .line 70
    invoke-static {v4}, Landroid/util/ByteStringUtils;->getIndex(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v4, v4, 0xf0

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v0, v5

    .line 71
    invoke-static {v5}, Landroid/util/ByteStringUtils;->getIndex(C)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 61
    .end local v0    # "chars":[C
    .end local v1    # "charLength":I
    .end local v2    # "bytes":[B
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getIndex(C)I
    .locals 2
    .param p0, "c"    # C

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/util/ByteStringUtils;->HEX_UPPERCASE_ARRAY:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 78
    sget-object v1, Landroid/util/ByteStringUtils;->HEX_UPPERCASE_ARRAY:[C

    aget-char v1, v1, v0

    if-eq v1, p0, :cond_1

    sget-object v1, Landroid/util/ByteStringUtils;->HEX_LOWERCASE_ARRAY:[C

    aget-char v1, v1, v0

    if-ne v1, p0, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    :goto_1
    return v0

    .line 82
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .line 38
    if-eqz p0, :cond_2

    array-length v0, p0

    if-eqz v0, :cond_2

    array-length v0, p0

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    array-length v0, p0

    .line 43
    .local v0, "byteLength":I
    mul-int/2addr v1, v0

    .line 44
    .local v1, "charCount":I
    new-array v2, v1, [C

    .line 46
    .local v2, "chars":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 47
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    .line 48
    .local v4, "byteHex":I
    mul-int/lit8 v5, v3, 0x2

    sget-object v6, Landroid/util/ByteStringUtils;->HEX_UPPERCASE_ARRAY:[C

    ushr-int/lit8 v7, v4, 0x4

    aget-char v6, v6, v7

    aput-char v6, v2, v5

    .line 49
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Landroid/util/ByteStringUtils;->HEX_UPPERCASE_ARRAY:[C

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    aput-char v6, v2, v5

    .line 46
    .end local v4    # "byteHex":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 39
    .end local v0    # "byteLength":I
    .end local v1    # "charCount":I
    .end local v2    # "chars":[C
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
