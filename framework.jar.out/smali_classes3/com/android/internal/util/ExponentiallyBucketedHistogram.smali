.class public Lcom/android/internal/util/ExponentiallyBucketedHistogram;
.super Ljava/lang/Object;
.source "ExponentiallyBucketedHistogram.java"


# instance fields
.field private final mData:[I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "numBuckets"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "numBuckets"

    const/4 v1, 0x1

    const/16 v2, 0x1f

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p1

    .line 41
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    .line 42
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .param p1, "value"    # I

    .line 53
    if-gtz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    iget-object v1, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 58
    :goto_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/CharSequence;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 75
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 78
    if-eqz v1, :cond_0

    .line 79
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 83
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    shl-int v2, v3, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 86
    :cond_1
    const-string v2, ">="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v2, v1, -0x1

    shl-int v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    :goto_1
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v2, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public reset()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 65
    return-void
.end method
