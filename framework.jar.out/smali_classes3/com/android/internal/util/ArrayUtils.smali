.class public Lcom/android/internal/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 503
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 504
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object p0, v0

    .line 506
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 507
    return-object p0
.end method

.method public static add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 523
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 526
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    return-object p0
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .line 317
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;
    .locals 3
    .param p3, "allowDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;Z)[TT;"
        }
    .end annotation

    .line 328
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    .line 329
    if-nez p3, :cond_0

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 330
    :cond_0
    array-length v0, p1

    .line 331
    .local v0, "end":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 332
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 334
    .end local v0    # "end":I
    .end local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_1
    const/4 v0, 0x0

    .line 335
    .restart local v0    # "end":I
    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 337
    .restart local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :goto_0
    aput-object p2, v1, v0

    .line 338
    return-object v1
.end method

.method public static appendInt([II)[I
    .locals 1
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .line 391
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([IIZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static appendInt([IIZ)[I
    .locals 4
    .param p0, "cur"    # [I
    .param p1, "val"    # I
    .param p2, "allowDuplicates"    # Z

    .line 369
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 370
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p1, v1, v0

    return-object v1

    .line 372
    :cond_0
    array-length v1, p0

    .line 373
    .local v1, "N":I
    if-nez p2, :cond_2

    .line 374
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 375
    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    .line 376
    return-object p0

    .line 374
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    .end local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    .line 381
    .local v2, "ret":[I
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    aput p1, v2, v1

    .line 383
    return-object v2
.end method

.method public static appendLong([JJ)[J
    .locals 1
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    .line 468
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v0

    return-object v0
.end method

.method public static appendLong([JJZ)[J
    .locals 5
    .param p0, "cur"    # [J
    .param p1, "val"    # J
    .param p3, "allowDuplicates"    # Z

    .line 446
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 447
    const/4 v1, 0x1

    new-array v1, v1, [J

    aput-wide p1, v1, v0

    return-object v1

    .line 449
    :cond_0
    array-length v1, p0

    .line 450
    .local v1, "N":I
    if-nez p3, :cond_2

    .line 451
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 452
    aget-wide v3, p0, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 453
    return-object p0

    .line 451
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 457
    .end local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [J

    .line 458
    .local v2, "ret":[J
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    aput-wide p1, v2, v1

    .line 460
    return-object v2
.end method

.method public static cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 499
    .local p0, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-eqz p0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static cloneOrNull([J)[J
    .locals 1
    .param p0, "array"    # [J

    .line 495
    if-eqz p0, :cond_0

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 543
    .local p0, "cur":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([CC)Z
    .locals 4
    .param p0, "array"    # [C
    .param p1, "value"    # C

    .line 262
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 263
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v3, p0, v2

    .line 264
    .local v3, "element":C
    if-ne v3, p1, :cond_1

    .line 265
    const/4 v0, 0x1

    return v0

    .line 263
    .end local v3    # "element":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_2
    return v0
.end method

.method public static contains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 242
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 243
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    .line 244
    .local v3, "element":I
    if-ne v3, p1, :cond_1

    .line 245
    const/4 v0, 0x1

    return v0

    .line 243
    .end local v3    # "element":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    :cond_2
    return v0
.end method

.method public static contains([JJ)Z
    .locals 6
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .line 252
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 253
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-wide v3, p0, v2

    .line 254
    .local v3, "element":J
    cmp-long v5, v3, p1

    if-nez v5, :cond_1

    .line 255
    const/4 v0, 0x1

    return v0

    .line 253
    .end local v3    # "element":J
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_2
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 200
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static containsAll([C[C)Z
    .locals 6
    .param p0, "array"    # [C
    .param p1, "check"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C[C)Z"
        }
    .end annotation

    .line 275
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 276
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-char v4, p1, v3

    .line 277
    .local v4, "checkItem":C
    invoke-static {p0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([CC)Z

    move-result v5

    if-nez v5, :cond_1

    .line 278
    return v2

    .line 276
    .end local v4    # "checkItem":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    :cond_2
    return v0
.end method

.method public static containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .line 219
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "check":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 220
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 221
    .local v4, "checkItem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 222
    return v2

    .line 220
    .end local v4    # "checkItem":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    :cond_2
    return v0
.end method

.method public static containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .line 232
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "check":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 233
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 234
    .local v3, "checkItem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    const/4 v0, 0x1

    return v0

    .line 233
    .end local v3    # "checkItem":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_2
    return v0
.end method

.method public static convertToIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 295
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 296
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 297
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertToLongArray([I)[J
    .locals 4
    .param p0, "intArray"    # [I

    .line 303
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_0
    array-length v0, p0

    new-array v0, v0, [J

    .line 305
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 306
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static defeatNullable([I)[I
    .locals 1
    .param p0, "val"    # [I

    .line 623
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    :goto_0
    return-object v0
.end method

.method public static defeatNullable([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "val"    # [Ljava/lang/String;

    .line 627
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 113
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    .line 114
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x49

    .line 118
    .local v0, "bucket":I
    sget-object v1, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 120
    .local v1, "cache":Ljava/lang/Object;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 121
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 122
    sget-object v2, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 127
    :cond_2
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    return-object v2
.end method

.method public static equals([B[BI)Z
    .locals 5
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "length"    # I

    .line 88
    if-ltz p2, :cond_5

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 93
    return v0

    .line 95
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v2, p0

    if-lt v2, p2, :cond_4

    array-length v2, p1

    if-ge v2, p2, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_3

    .line 99
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_2

    .line 100
    return v1

    .line 98
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "i":I
    :cond_3
    return v0

    .line 96
    :cond_4
    :goto_1
    return v1

    .line 89
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 208
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 209
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 210
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 209
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 134
    .local p0, "array":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 141
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .line 169
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([I)Z
    .locals 1
    .param p0, "array"    # [I

    .line 155
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([J)Z
    .locals 1
    .param p0, "array"    # [J

    .line 162
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 148
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([Z)Z
    .locals 1
    .param p0, "array"    # [Z

    .line 176
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "minLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .line 76
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static newUnpaddedBooleanArray(I)[Z
    .locals 2
    .param p0, "minLen"    # I

    .line 59
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static newUnpaddedByteArray(I)[B
    .locals 2
    .param p0, "minLen"    # I

    .line 47
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static newUnpaddedCharArray(I)[C
    .locals 2
    .param p0, "minLen"    # I

    .line 51
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static newUnpaddedFloatArray(I)[F
    .locals 2
    .param p0, "minLen"    # I

    .line 67
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static newUnpaddedIntArray(I)[I
    .locals 2
    .param p0, "minLen"    # I

    .line 55
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static newUnpaddedLongArray(I)[J
    .locals 2
    .param p0, "minLen"    # I

    .line 63
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static newUnpaddedObjectArray(I)[Ljava/lang/Object;
    .locals 2
    .param p0, "minLen"    # I

    .line 71
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;)Z"
        }
    .end annotation

    .line 561
    .local p0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "b":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 562
    return v0

    .line 565
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 566
    .local v1, "sizeA":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 567
    .local v2, "sizeB":I
    const/4 v3, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-eq v1, v2, :cond_1

    goto :goto_3

    .line 571
    :cond_1
    const/4 v4, 0x0

    .line 572
    .local v4, "diff":Z
    move v5, v4

    move v4, v3

    .local v4, "i":I
    .local v5, "diff":Z
    :goto_0
    if-ge v4, v1, :cond_3

    if-nez v5, :cond_3

    .line 573
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_2

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    or-int/2addr v5, v6

    .line 572
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 575
    .end local v4    # "i":I
    :cond_3
    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    return v0

    .line 568
    .end local v5    # "diff":Z
    :cond_5
    :goto_3
    return v3
.end method

.method public static remove(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 511
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 512
    return-object v0

    .line 514
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    return-object v0

    .line 518
    :cond_1
    return-object p0
.end method

.method public static remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 531
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 532
    return-object v0

    .line 534
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 535
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    return-object v0

    .line 538
    :cond_1
    return-object p0
.end method

.method public static removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .line 346
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_3

    .line 347
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 348
    :cond_0
    array-length v0, p1

    .line 349
    .local v0, "length":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 350
    aget-object v3, p1, v2

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 352
    const/4 v1, 0x0

    return-object v1

    .line 354
    :cond_1
    add-int/lit8 v4, v0, -0x1

    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 355
    .local v4, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    add-int/lit8 v1, v2, 0x1

    sub-int v5, v0, v2

    sub-int/2addr v5, v3

    invoke-static {p1, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    return-object v4

    .line 349
    .end local v4    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "length":I
    .end local v2    # "i":I
    :cond_3
    return-object p1
.end method

.method public static removeInt([II)[I
    .locals 5
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .line 398
    if-nez p0, :cond_0

    .line 399
    const/4 v0, 0x0

    return-object v0

    .line 401
    :cond_0
    array-length v0, p0

    .line 402
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 403
    aget v3, p0, v2

    if-ne v3, p1, :cond_3

    .line 404
    add-int/lit8 v3, v0, -0x1

    new-array v3, v3, [I

    .line 405
    .local v3, "ret":[I
    if-lez v2, :cond_1

    .line 406
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    :cond_1
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_2

    .line 409
    add-int/lit8 v1, v2, 0x1

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    :cond_2
    return-object v3

    .line 402
    .end local v3    # "ret":[I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    .end local v2    # "i":I
    :cond_4
    return-object p0
.end method

.method public static removeLong([JJ)[J
    .locals 5
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    .line 475
    if-nez p0, :cond_0

    .line 476
    const/4 v0, 0x0

    return-object v0

    .line 478
    :cond_0
    array-length v0, p0

    .line 479
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 480
    aget-wide v3, p0, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    .line 481
    add-int/lit8 v3, v0, -0x1

    new-array v3, v3, [J

    .line 482
    .local v3, "ret":[J
    if-lez v2, :cond_1

    .line 483
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    :cond_1
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_2

    .line 486
    add-int/lit8 v1, v2, 0x1

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    :cond_2
    return-object v3

    .line 479
    .end local v3    # "ret":[J
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    .end local v2    # "i":I
    :cond_4
    return-object p0
.end method

.method public static removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "cur"    # [Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 421
    if-nez p0, :cond_0

    .line 422
    const/4 v0, 0x0

    return-object v0

    .line 424
    :cond_0
    array-length v0, p0

    .line 425
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 426
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 427
    add-int/lit8 v3, v0, -0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 428
    .local v3, "ret":[Ljava/lang/String;
    if-lez v2, :cond_1

    .line 429
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    :cond_1
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_2

    .line 432
    add-int/lit8 v1, v2, 0x1

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    :cond_2
    return-object v3

    .line 425
    .end local v3    # "ret":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    .end local v2    # "i":I
    :cond_4
    return-object p0
.end method

.method public static size(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)I"
        }
    .end annotation

    .line 190
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static size([Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .line 183
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    return v0
.end method

.method public static total([J)J
    .locals 6
    .param p0, "array"    # [J

    .line 285
    const-wide/16 v0, 0x0

    .line 286
    .local v0, "total":J
    if-eqz p0, :cond_0

    .line 287
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    .line 288
    .local v4, "value":J
    add-long/2addr v0, v4

    .line 287
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    :cond_0
    return-wide v0
.end method

.method public static trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 547
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    array-length v0, p0

    if-ne v0, p1, :cond_1

    .line 550
    return-object p0

    .line 552
    :cond_1
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 548
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)I"
        }
    .end annotation

    .line 587
    .local p0, "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    if-nez p0, :cond_0

    .line 588
    const/4 v0, 0x0

    return v0

    .line 591
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 592
    .local v0, "size":I
    const/4 v1, 0x0

    .line 593
    .local v1, "leftIdx":I
    add-int/lit8 v2, v0, -0x1

    .line 594
    .local v2, "rightIdx":I
    :goto_0
    if-gt v1, v2, :cond_4

    .line 596
    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 597
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 601
    :cond_1
    :goto_2
    if-le v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 602
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 605
    :cond_2
    if-lt v1, v2, :cond_3

    .line 607
    goto :goto_3

    .line 610
    :cond_3
    invoke-static {p0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 611
    add-int/lit8 v1, v1, 0x1

    .line 612
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 616
    :cond_4
    :goto_3
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_4
    if-lt v3, v1, :cond_5

    .line 617
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 616
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 619
    .end local v3    # "i":I
    :cond_5
    sub-int v3, v0, v1

    return v3
.end method
