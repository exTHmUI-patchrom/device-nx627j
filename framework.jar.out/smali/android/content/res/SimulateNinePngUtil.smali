.class Landroid/content/res/SimulateNinePngUtil;
.super Ljava/lang/Object;
.source "SimulateNinePngUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    }
.end annotation


# static fields
.field private static final DEBUG_THEME:Z = false

.field private static PNG_HEAD_FORMAT:[B = null

.field static final TAG_THEME:Ljava/lang/String; = "ThemeFramework"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    return-void

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static computePatchColor([B)I
    .locals 1
    .param p0, "abyte0"    # [B

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method private static convertByteToIntByBigEndian([BI)I
    .locals 3
    .param p0, "abyte0"    # [B
    .param p1, "i"    # I

    .line 37
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x18

    const/4 v2, 0x0

    add-int/2addr v2, v0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v2, v0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v2, v0

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/2addr v0, v1

    add-int/2addr v2, v0

    return v2
.end method

.method private static convertBytesFromIntByBigEndian([BII)V
    .locals 3
    .param p0, "abyte0"    # [B
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 44
    add-int/lit8 v0, p1, 0x0

    ushr-int/lit8 v1, p2, 0x18

    const/16 v2, 0xff

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 45
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 46
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 47
    add-int/lit8 v0, p1, 0x3

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 48
    return-void
.end method

.method public static convertIntoNinePngData([B)[B
    .locals 8
    .param p0, "pngData"    # [B

    .line 51
    if-eqz p0, :cond_4

    array-length v0, p0

    const/16 v1, 0x29

    if-lt v0, v1, :cond_4

    invoke-static {p0}, Landroid/content/res/SimulateNinePngUtil;->isPngFormat([B)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 55
    :cond_0
    invoke-static {p0}, Landroid/content/res/SimulateNinePngUtil;->isNinePngFormat([B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 60
    invoke-static {p0}, Landroid/content/res/SimulateNinePngUtil;->getNinePatchChunk([B)[B

    move-result-object v0

    .line 61
    .local v0, "header":[B
    const/16 v2, 0xc

    array-length v3, p0

    add-int/2addr v2, v3

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 62
    .local v2, "finalData":[B
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x21

    if-ge v4, v5, :cond_1

    .line 63
    aget-byte v5, p0, v4

    aput-byte v5, v2, v4

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65
    .end local v4    # "i":I
    :cond_1
    array-length v4, v0

    invoke-static {v2, v5, v4}, Landroid/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 66
    invoke-static {v2}, Landroid/content/res/SimulateNinePngUtil;->fillNinePngFormatMark([B)V

    .line 67
    move v4, v3

    .local v4, "j":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 68
    add-int/lit8 v5, v4, 0x29

    aget-byte v6, v0, v4

    aput-byte v6, v2, v5

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 70
    .end local v4    # "j":I
    :cond_2
    array-length v4, v0

    add-int/2addr v1, v4

    .line 71
    .local v1, "k":I
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 72
    .local v4, "crc32":Ljava/util/zip/CRC32;
    const/16 v5, 0x25

    array-length v6, v0

    const/4 v7, 0x4

    add-int/2addr v7, v6

    invoke-virtual {v4, v2, v5, v7}, Ljava/util/zip/CRC32;->update([BII)V

    .line 73
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v2, v1, v5}, Landroid/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 74
    nop

    .local v3, "l":I
    :goto_2
    const/16 v5, -0x21

    array-length v6, p0

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_3

    .line 75
    add-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v3

    add-int/lit8 v6, v3, 0x21

    aget-byte v6, p0, v6

    aput-byte v6, v2, v5

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 77
    .end local v3    # "l":I
    :cond_3
    return-object v2

    .line 52
    .end local v0    # "header":[B
    .end local v1    # "k":I
    .end local v2    # "finalData":[B
    .end local v4    # "crc32":Ljava/util/zip/CRC32;
    :cond_4
    :goto_3
    const/4 p0, 0x0

    .line 81
    :cond_5
    return-object p0
.end method

.method public static convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .param p0, "inputstream"    # Ljava/io/InputStream;

    .line 86
    const/16 v0, 0x29

    :try_start_0
    new-array v1, v0, [B

    .line 87
    .local v1, "localObject":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, [B

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 92
    .local v2, "i":I
    if-gtz v2, :cond_0

    .line 93
    const/4 v1, 0x0

    goto :goto_0

    .line 94
    :cond_0
    if-ge v2, v0, :cond_1

    .line 95
    move-object v0, v1

    check-cast v0, [B

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 96
    .local v0, "arrayOfByte1":[B
    move-object v1, v0

    .line 98
    .end local v0    # "arrayOfByte1":[B
    :cond_1
    :goto_0
    move-object v0, v1

    check-cast v0, [B

    invoke-static {v0}, Landroid/content/res/SimulateNinePngUtil;->convertIntoNinePngData([B)[B

    move-result-object v0

    .line 103
    .local v0, "arrayOfByte2":[B
    if-eqz v0, :cond_2

    .line 106
    new-instance v3, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;

    invoke-direct {v3, p0, v0}, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;-><init>(Ljava/io/InputStream;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 112
    .end local v0    # "arrayOfByte2":[B
    .end local v1    # "localObject":Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_2
    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 111
    .local v0, "localException":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    .end local v0    # "localException":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static fillNinePngFormatMark([B)V
    .locals 2
    .param p0, "abyte0"    # [B

    .line 117
    const/16 v0, 0x25

    const/16 v1, 0x6e

    aput-byte v1, p0, v0

    .line 118
    const/16 v0, 0x26

    const/16 v1, 0x70

    aput-byte v1, p0, v0

    .line 119
    const/16 v0, 0x27

    const/16 v1, 0x54

    aput-byte v1, p0, v0

    .line 120
    const/16 v0, 0x28

    const/16 v1, 0x63

    aput-byte v1, p0, v0

    .line 121
    return-void
.end method

.method private static getNinePatchChunk([B)[B
    .locals 5
    .param p0, "data"    # [B

    .line 124
    const/16 v0, 0x10

    invoke-static {p0, v0}, Landroid/content/res/SimulateNinePngUtil;->convertByteToIntByBigEndian([BI)I

    move-result v0

    .line 125
    .local v0, "i":I
    const/16 v1, 0x14

    invoke-static {p0, v1}, Landroid/content/res/SimulateNinePngUtil;->convertByteToIntByBigEndian([BI)I

    move-result v1

    .line 126
    .local v1, "j":I
    const/16 v2, 0x34

    new-array v2, v2, [B

    .line 127
    .local v2, "chunk":[B
    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 128
    const/4 v4, 0x2

    aput-byte v4, v2, v3

    .line 129
    aput-byte v4, v2, v4

    .line 130
    const/4 v4, 0x3

    aput-byte v3, v2, v4

    .line 131
    const/16 v3, 0x24

    invoke-static {v2, v3, v0}, Landroid/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 132
    const/16 v3, 0x2c

    invoke-static {v2, v3, v1}, Landroid/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 133
    invoke-static {p0}, Landroid/content/res/SimulateNinePngUtil;->computePatchColor([B)I

    move-result v3

    const/16 v4, 0x30

    invoke-static {v2, v4, v3}, Landroid/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 134
    return-object v2
.end method

.method private static isNinePngFormat([B)Z
    .locals 3
    .param p0, "pngdata"    # [B

    .line 139
    if-eqz p0, :cond_0

    array-length v0, p0

    .line 151
    :cond_0
    if-eqz p0, :cond_1

    array-length v0, p0

    const/16 v1, 0x28

    if-le v0, v1, :cond_1

    const/16 v0, 0x25

    aget-byte v0, p0, v0

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_1

    const/16 v0, 0x26

    aget-byte v0, p0, v0

    const/16 v2, 0x70

    if-ne v0, v2, :cond_1

    const/16 v0, 0x27

    aget-byte v0, p0, v0

    const/16 v2, 0x54

    if-ne v0, v2, :cond_1

    aget-byte v0, p0, v1

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isPngFormat([B)Z
    .locals 4
    .param p0, "data"    # [B

    .line 157
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 158
    aget-byte v2, p0, v1

    sget-object v3, Landroid/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    .line 159
    return v0

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
