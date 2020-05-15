.class public Lcom/android/server/wifi/util/ByteArrayRingBuffer;
.super Ljava/lang/Object;
.source "ByteArrayRingBuffer.java"


# instance fields
.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mBytesUsed:I

.field private mMaxBytes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxBytes"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    .line 39
    iput p1, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mMaxBytes:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    .line 41
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private pruneToSize(I)V
    .locals 4
    .param p1, "sizeBytes"    # I

    .line 90
    iget v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    .line 91
    .local v0, "newBytesUsed":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 92
    .local v0, "i":I
    .local v2, "newBytesUsed":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    if-le v2, p1, :cond_0

    .line 93
    iget-object v3, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    sub-int/2addr v2, v3

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 97
    iput v2, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    .line 98
    return-void
.end method


# virtual methods
.method public appendBuffer([B)Z
    .locals 2
    .param p1, "newData"    # [B

    .line 53
    iget v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mMaxBytes:I

    array-length v1, p1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->pruneToSize(I)V

    .line 54
    iget v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mMaxBytes:I

    if-le v0, v1, :cond_0

    .line 55
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public getBuffer(I)[B
    .locals 1
    .param p1, "i"    # I

    .line 69
    iget-object v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getNumBuffers()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public resize(I)V
    .locals 0
    .param p1, "maxBytes"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->pruneToSize(I)V

    .line 86
    iput p1, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mMaxBytes:I

    .line 87
    return-void
.end method
