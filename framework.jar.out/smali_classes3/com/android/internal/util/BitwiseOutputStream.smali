.class public Lcom/android/internal/util/BitwiseOutputStream;
.super Ljava/lang/Object;
.source "BitwiseOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    }
.end annotation


# instance fields
.field private mBuf:[B

.field private mEnd:I

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "startingLength"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    .line 54
    shl-int/lit8 v0, p1, 0x3

    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 56
    return-void
.end method

.method private possExpand(I)V
    .locals 4
    .param p1, "bits"    # I

    .line 76
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    if-ge v0, v1, :cond_0

    return-void

    .line 77
    :cond_0
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 78
    .local v0, "newBuf":[B
    iget-object v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    ushr-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 79
    iput-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    .line 80
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    .line 81
    return-void
.end method


# virtual methods
.method public skip(I)V
    .locals 1
    .param p1, "bits"    # I

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    .line 128
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 129
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .line 64
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 65
    .local v0, "len":I
    new-array v1, v0, [B

    .line 66
    .local v1, "newBuf":[B
    iget-object v3, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 67
    return-object v1
.end method

.method public write(II)V
    .locals 6
    .param p1, "bits"    # I
    .param p2, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 93
    if-ltz p1, :cond_1

    const/16 v0, 0x8

    if-gt p1, v0, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    .line 97
    const/4 v1, -0x1

    rsub-int/lit8 v2, p1, 0x20

    ushr-int/2addr v1, v2

    and-int/2addr p2, v1

    .line 98
    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    ushr-int/lit8 v1, v1, 0x3

    .line 99
    .local v1, "index":I
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x10

    sub-int/2addr v2, p1

    .line 100
    .local v2, "offset":I
    shl-int/2addr p2, v2

    .line 101
    iget v3, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 102
    iget-object v3, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    aget-byte v4, v3, v1

    ushr-int/lit8 v5, p2, 0x8

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 103
    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, v0, v3

    and-int/lit16 v5, p2, 0xff

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 104
    :cond_0
    return-void

    .line 94
    .end local v1    # "index":I
    .end local v2    # "offset":I
    :cond_1
    new-instance v0, Lcom/android/internal/util/BitwiseOutputStream$AccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal write ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bits)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseOutputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeByteArray(I[B)V
    .locals 4
    .param p1, "bits"    # I
    .param p2, "arr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 114
    shl-int/lit8 v1, v0, 0x3

    sub-int v1, p1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 115
    .local v1, "increment":I
    if-lez v1, :cond_0

    .line 116
    aget-byte v3, p2, v0

    sub-int/2addr v2, v1

    ushr-int v2, v3, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 113
    .end local v1    # "increment":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
