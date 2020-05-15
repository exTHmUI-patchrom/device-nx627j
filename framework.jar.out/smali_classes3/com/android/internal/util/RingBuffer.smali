.class public Lcom/android/internal/util/RingBuffer;
.super Ljava/lang/Object;
.source "RingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mCursor:J


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 2
    .param p2, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    .line 39
    const-string v0, "A RingBuffer cannot have 0 capacity"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 41
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    .line 42
    return-void
.end method

.method private indexOf(J)I
    .locals 2
    .param p1, "cursor"    # J

    .line 100
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    rem-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public append(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    invoke-direct {p0, v1, v2}, Lcom/android/internal/util/RingBuffer;->indexOf(J)I

    move-result v1

    aput-object p1, v0, v1

    .line 61
    return-void
.end method

.method public clear()V
    .locals 3

    .line 53
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "i":I
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    .line 57
    return-void
.end method

.method protected createNewItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNextSlot()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    iget-wide v0, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/RingBuffer;->indexOf(J)I

    move-result v0

    .line 70
    .local v0, "nextSlotIdx":I
    iget-object v1, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->createNewItem()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 49
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 4

    .line 45
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "out":[Ljava/lang/Object;, "[TT;"
    iget-wide v1, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 92
    .local v1, "inCursor":J
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    .line 93
    .local v5, "outIdx":I
    :goto_0
    if-ltz v5, :cond_0

    .line 94
    add-int/lit8 v6, v5, -0x1

    .local v6, "outIdx":I
    iget-object v7, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    sub-long v8, v1, v3

    .local v8, "inCursor":J
    invoke-direct {p0, v1, v2}, Lcom/android/internal/util/RingBuffer;->indexOf(J)I

    move-result v1

    .end local v1    # "inCursor":J
    aget-object v1, v7, v1

    aput-object v1, v0, v5

    .line 92
    .end local v5    # "outIdx":I
    move v5, v6

    move-wide v1, v8

    goto :goto_0

    .line 96
    .end local v6    # "outIdx":I
    .end local v8    # "inCursor":J
    .restart local v1    # "inCursor":J
    .restart local v5    # "outIdx":I
    :cond_0
    return-object v0
.end method
