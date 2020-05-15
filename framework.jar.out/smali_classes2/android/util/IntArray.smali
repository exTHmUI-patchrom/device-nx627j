.class public Landroid/util/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/IntArray;-><init>(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/IntArray;->mValues:[I

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/IntArray;->mValues:[I

    .line 56
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    .line 57
    return-void
.end method

.method private constructor <init>([II)V
    .locals 3
    .param p1, "array"    # [I
    .param p2, "size"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    .line 37
    array-length v0, p1

    const-string/jumbo v1, "size"

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    .line 38
    return-void
.end method

.method private checkBounds(I)V
    .locals 2
    .param p1, "index"    # I

    .line 228
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/util/IntArray;->mSize:I

    if-le v0, p1, :cond_0

    .line 231
    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0
.end method

.method private ensureCapacity(I)V
    .locals 7
    .param p1, "count"    # I

    .line 148
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    .line 149
    .local v0, "currentSize":I
    add-int v1, v0, p1

    .line 150
    .local v1, "minCapacity":I
    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 151
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 152
    const/16 v2, 0xc

    goto :goto_0

    :cond_0
    shr-int/lit8 v2, v0, 0x1

    :goto_0
    add-int/2addr v2, v0

    .line 153
    .local v2, "targetCap":I
    if-le v2, v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 154
    .local v3, "newCapacity":I
    :goto_1
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v4

    .line 155
    .local v4, "newValues":[I
    iget-object v5, p0, Landroid/util/IntArray;->mValues:[I

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iput-object v4, p0, Landroid/util/IntArray;->mValues:[I

    .line 158
    .end local v2    # "targetCap":I
    .end local v3    # "newCapacity":I
    .end local v4    # "newValues":[I
    :cond_2
    return-void
.end method

.method public static fromArray([II)Landroid/util/IntArray;
    .locals 1
    .param p0, "array"    # [I
    .param p1, "size"    # I

    .line 70
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([I)Landroid/util/IntArray;
    .locals 2
    .param p0, "array"    # [I

    .line 63
    new-instance v0, Landroid/util/IntArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Landroid/util/IntArray;-><init>([II)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "value"    # I

    .line 92
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-virtual {p0, v0, p1}, Landroid/util/IntArray;->add(II)V

    .line 93
    return-void
.end method

.method public add(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 103
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    sub-int/2addr v1, p1

    .line 104
    .local v1, "rightSegment":I
    iget v2, p0, Landroid/util/IntArray;->mSize:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/util/IntArray;->mSize:I

    .line 105
    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    .line 107
    if-eqz v1, :cond_0

    .line 109
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, p1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    :cond_0
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    aput p2, v0, p1

    .line 113
    return-void
.end method

.method public addAll(Landroid/util/IntArray;)V
    .locals 5
    .param p1, "values"    # Landroid/util/IntArray;

    .line 137
    iget v0, p1, Landroid/util/IntArray;->mSize:I

    .line 138
    .local v0, "count":I
    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 140
    iget-object v1, p1, Landroid/util/IntArray;->mValues:[I

    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    iget v3, p0, Landroid/util/IntArray;->mSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/IntArray;->mSize:I

    .line 142
    return-void
.end method

.method public binarySearch(I)I
    .locals 2
    .param p1, "value"    # I

    .line 130
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    .line 165
    return-void
.end method

.method public clone()Landroid/util/IntArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 169
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    .line 170
    .local v0, "clone":Landroid/util/IntArray;
    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/util/IntArray;->mValues:[I

    .line 171
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public get(I)I
    .locals 1
    .param p1, "index"    # I

    .line 178
    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    .line 179
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method

.method public indexOf(I)I
    .locals 3
    .param p1, "value"    # I

    .line 195
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    .line 196
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 197
    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 198
    return v1

    .line 196
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public remove(I)V
    .locals 4
    .param p1, "index"    # I

    .line 208
    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    .line 209
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    iget v3, p0, Landroid/util/IntArray;->mSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    .line 211
    return-void
.end method

.method public resize(I)V
    .locals 3
    .param p1, "newSize"    # I

    .line 79
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 80
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0

    .line 83
    :cond_0
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 85
    :goto_0
    iput p1, p0, Landroid/util/IntArray;->mSize:I

    .line 86
    return-void
.end method

.method public set(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 186
    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    .line 187
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    aput p2, v0, p1

    .line 188
    return-void
.end method

.method public size()I
    .locals 1

    .line 217
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    return v0
.end method

.method public toArray()[I
    .locals 2

    .line 224
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method
