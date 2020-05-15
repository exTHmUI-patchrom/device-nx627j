.class public Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;
.super Ljava/lang/Object;
.source "AnswerToReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/AnswerToReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoricalBytes"
.end annotation


# static fields
.field private static final LENGTH_MASK:I = 0xf

.field private static final TAG_MASK:I = 0xf0


# instance fields
.field private final mCategory:B

.field private final mNodes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mRawData:[B


# direct methods
.method private constructor <init>([BLandroid/util/ArrayMap;B)V
    .locals 0
    .param p1, "rawData"    # [B
    .param p3, "category"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "[B>;B)V"
        }
    .end annotation

    .line 109
    .local p2, "nodes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->mRawData:[B

    .line 111
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->mNodes:Landroid/util/ArrayMap;

    .line 112
    iput-byte p3, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->mCategory:B

    .line 113
    return-void
.end method

.method static synthetic access$100([BII)Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 64
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->parseHistoricalBytes([BII)Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    move-result-object v0

    return-object v0
.end method

.method private static parseHistoricalBytes([BII)Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;
    .locals 5
    .param p0, "originalData"    # [B
    .param p1, "startIndex"    # I
    .param p2, "length"    # I

    .line 91
    const/4 v0, 0x0

    if-lez p2, :cond_3

    add-int v1, p1, p2

    array-length v2, p0

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 97
    .local v1, "nodes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;[B>;"
    add-int/lit8 v2, p1, 0x1

    .line 98
    .local v2, "index":I
    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_1

    .line 99
    add-int v3, p1, p2

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v1, p0, v3}, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->parseLtvNode(ILandroid/util/ArrayMap;[BI)I

    move-result v2

    goto :goto_0

    .line 101
    :cond_1
    if-gez v2, :cond_2

    .line 102
    return-object v0

    .line 104
    :cond_2
    new-array v0, p2, [B

    .line 105
    .local v0, "rawData":[B
    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v3, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 106
    new-instance v4, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    aget-byte v3, v0, v3

    invoke-direct {v4, v0, v1, v3}, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;-><init>([BLandroid/util/ArrayMap;B)V

    return-object v4

    .line 92
    .end local v0    # "rawData":[B
    .end local v1    # "nodes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;[B>;"
    .end local v2    # "index":I
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static parseLtvNode(ILandroid/util/ArrayMap;[BI)I
    .locals 5
    .param p0, "index"    # I
    .param p2, "data"    # [B
    .param p3, "lastByteIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "[B>;[BI)I"
        }
    .end annotation

    .line 117
    .local p1, "nodes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;[B>;"
    const/4 v0, -0x1

    if-le p0, p3, :cond_0

    .line 118
    return v0

    .line 120
    :cond_0
    aget-byte v1, p2, p0

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    .line 121
    .local v1, "tag":I
    add-int/lit8 v2, p0, 0x1

    .local v2, "index":I
    aget-byte p0, p2, p0

    .end local p0    # "index":I
    and-int/lit8 p0, p0, 0xf

    .line 122
    .local p0, "length":I
    add-int v3, v2, p0

    add-int/lit8 v4, p3, 0x1

    if-gt v3, v4, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    new-array v0, p0, [B

    .line 126
    .local v0, "value":[B
    const/4 v3, 0x0

    invoke-static {p2, v2, v0, v3, p0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int v3, v2, p0

    return v3

    .line 123
    .end local v0    # "value":[B
    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public getCategory()B
    .locals 1

    .line 74
    iget-byte v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->mCategory:B

    return v0
.end method

.method public getRawData()[B
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->mRawData:[B

    return-object v0
.end method

.method public getValue(I)[B
    .locals 2
    .param p1, "tag"    # I

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->mNodes:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
