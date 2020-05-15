.class public Lcom/android/server/wifi/util/MetricsUtils;
.super Ljava/lang/Object;
.source "MetricsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;,
        Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addValueToLinearHistogram(ILandroid/util/SparseIntArray;[I)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "histogram"    # Landroid/util/SparseIntArray;
    .param p2, "hp"    # [I

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "bucket":I
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    .line 151
    .local v3, "limit":I
    if-lt p0, v3, :cond_0

    .line 152
    add-int/lit8 v0, v0, 0x1

    .line 153
    nop

    .line 150
    .end local v3    # "limit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 160
    .local v1, "newValue":I
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 162
    return v1
.end method

.method public static addValueToLogHistogram(JLandroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)I
    .locals 8
    .param p0, "x"    # J
    .param p2, "histogram"    # Landroid/util/SparseIntArray;
    .param p3, "hp"    # Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    .line 86
    iget v0, p3, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->b:I

    int-to-long v0, v0

    sub-long v0, p0, v0

    long-to-double v0, v0

    iget v2, p3, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->p:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 87
    .local v0, "logArg":D
    const/4 v2, -0x1

    .line 88
    .local v2, "bigBucketIndex":I
    const-wide/16 v3, 0x0

    cmpl-double v3, v0, v3

    if-lez v3, :cond_0

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    iget-wide v5, p3, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->mLog:D

    div-double/2addr v3, v5

    double-to-int v2, v3

    .line 92
    :cond_0
    if-gez v2, :cond_1

    .line 93
    const/4 v2, 0x0

    .line 94
    const/4 v3, 0x0

    .local v3, "subBucketIndex":I
    :goto_0
    goto :goto_1

    .line 95
    .end local v3    # "subBucketIndex":I
    :cond_1
    iget v3, p3, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->n:I

    if-lt v2, v3, :cond_2

    .line 96
    iget v3, p3, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->n:I

    add-int/lit8 v2, v3, -0x1

    .line 97
    iget v3, p3, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->s:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 99
    :cond_2
    long-to-double v3, p0

    iget-object v5, p3, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->bb:[D

    aget-wide v5, v5, v2

    sub-double/2addr v3, v5

    iget-object v5, p3, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->sbw:[D

    aget-wide v5, v5, v2

    div-double/2addr v3, v5

    double-to-int v3, v3

    .line 100
    .restart local v3    # "subBucketIndex":I
    iget v4, p3, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->s:I

    if-lt v3, v4, :cond_4

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    iget v4, p3, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->n:I

    if-lt v2, v4, :cond_3

    .line 103
    iget v4, p3, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->n:I

    add-int/lit8 v2, v4, -0x1

    .line 104
    iget v4, p3, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->s:I

    add-int/lit8 v3, v4, -0x1

    goto :goto_1

    .line 106
    :cond_3
    long-to-double v4, p0

    iget-object v6, p3, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->bb:[D

    aget-wide v6, v6, v2

    sub-double/2addr v4, v6

    iget-object v6, p3, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->sbw:[D

    aget-wide v6, v6, v2

    div-double/2addr v4, v6

    double-to-int v3, v4

    .line 110
    :cond_4
    :goto_1
    iget v4, p3, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->s:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    .line 113
    .local v4, "key":I
    invoke-virtual {p2, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 114
    .local v5, "newValue":I
    invoke-virtual {p2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    return v5
.end method

.method public static linearHistogramToGenericBuckets(Landroid/util/SparseIntArray;[I)[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;
    .locals 7
    .param p0, "histogram"    # Landroid/util/SparseIntArray;
    .param p1, "linearHistParams"    # [I

    .line 171
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    .line 172
    .local v0, "protoArray":[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 173
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 175
    .local v3, "bucket":I
    new-instance v4, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    invoke-direct {v4}, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;-><init>()V

    aput-object v4, v0, v2

    .line 176
    if-nez v3, :cond_0

    .line 177
    aget-object v4, v0, v2

    const-wide/32 v5, -0x80000000

    iput-wide v5, v4, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->start:J

    .line 178
    aget-object v4, v0, v2

    aget v5, p1, v1

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->end:J

    goto :goto_1

    .line 179
    :cond_0
    array-length v4, p1

    if-eq v3, v4, :cond_1

    .line 180
    aget-object v4, v0, v2

    add-int/lit8 v5, v3, -0x1

    aget v5, p1, v5

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->start:J

    .line 181
    aget-object v4, v0, v2

    aget v5, p1, v3

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->end:J

    goto :goto_1

    .line 183
    :cond_1
    aget-object v4, v0, v2

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    aget v5, p1, v5

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->start:J

    .line 184
    aget-object v4, v0, v2

    const-wide/32 v5, 0x7fffffff

    iput-wide v5, v4, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->end:J

    .line 186
    :goto_1
    aget-object v4, v0, v2

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    iput v5, v4, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->count:I

    .line 172
    .end local v3    # "bucket":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public static logHistogramToGenericBuckets(Landroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;
    .locals 10
    .param p0, "histogram"    # Landroid/util/SparseIntArray;
    .param p1, "hp"    # Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    .line 125
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    .line 126
    .local v0, "protoArray":[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 127
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 129
    .local v2, "key":I
    new-instance v3, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    invoke-direct {v3}, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;-><init>()V

    aput-object v3, v0, v1

    .line 130
    aget-object v3, v0, v1

    iget-object v4, p1, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->bb:[D

    iget v5, p1, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->s:I

    div-int v5, v2, v5

    aget-wide v4, v4, v5

    iget-object v6, p1, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->sbw:[D

    iget v7, p1, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->s:I

    div-int v7, v2, v7

    aget-wide v6, v6, v7

    iget v8, p1, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->s:I

    rem-int v8, v2, v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-long v4, v4

    iput-wide v4, v3, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->start:J

    .line 131
    aget-object v3, v0, v1

    aget-object v4, v0, v1

    iget-wide v4, v4, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->start:J

    long-to-double v4, v4

    iget-object v6, p1, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->sbw:[D

    iget v7, p1, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->s:I

    div-int v7, v2, v7

    aget-wide v6, v6, v7

    add-double/2addr v4, v6

    double-to-long v4, v4

    iput-wide v4, v3, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->end:J

    .line 132
    aget-object v3, v0, v1

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->count:I

    .line 126
    .end local v2    # "key":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
