.class public Landroid/text/AutoGrowArray$IntArray;
.super Ljava/lang/Object;
.source "AutoGrowArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/AutoGrowArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntArray"
.end annotation


# instance fields
.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 169
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    .line 170
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    if-nez p1, :cond_0

    .line 177
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    .line 181
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    .line 182
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 6
    .param p1, "count"    # I

    .line 207
    iget v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    add-int/2addr v0, p1

    .line 208
    .local v0, "requestedSize":I
    iget-object v1, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 209
    iget v1, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    invoke-static {v1, v0}, Landroid/text/AutoGrowArray;->access$000(II)I

    move-result v1

    .line 210
    .local v1, "newCapacity":I
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v2

    .line 211
    .local v2, "newValues":[I
    iget-object v3, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    iget v4, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iput-object v2, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    .line 214
    .end local v1    # "newCapacity":I
    .end local v2    # "newValues":[I
    :cond_0
    return-void
.end method


# virtual methods
.method public append(I)V
    .locals 3
    .param p1, "value"    # I

    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$IntArray;->ensureCapacity(I)V

    .line 200
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    iget v1, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    aput p1, v0, v1

    .line 201
    return-void
.end method

.method public clear()V
    .locals 1

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    .line 221
    return-void
.end method

.method public clearWithReleasingLargeArray()V
    .locals 2

    .line 228
    invoke-virtual {p0}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 229
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    array-length v0, v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    .line 230
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    .line 232
    :cond_0
    return-void
.end method

.method public get(I)I
    .locals 1
    .param p1, "index"    # I

    .line 238
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRawArray()[I
    .locals 1

    .line 262
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    return-object v0
.end method

.method public resize(I)V
    .locals 1
    .param p1, "newSize"    # I

    .line 189
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 190
    iget v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$IntArray;->ensureCapacity(I)V

    .line 192
    :cond_0
    iput p1, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    .line 193
    return-void
.end method

.method public set(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 245
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    aput p2, v0, p1

    .line 246
    return-void
.end method

.method public size()I
    .locals 1

    .line 252
    iget v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    return v0
.end method
