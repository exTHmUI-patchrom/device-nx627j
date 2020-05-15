.class public Lcom/android/server/wifi/util/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# instance fields
.field public final m:I

.field public final mem:[D

.field public final n:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "rows"    # I
    .param p2, "cols"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    .line 35
    iput p2, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    .line 36
    mul-int v0, p1, p2

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    .line 37
    return-void
.end method

.method public constructor <init>(I[D)V
    .locals 3
    .param p1, "stride"    # I
    .param p2, "values"    # [D

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    array-length v0, p2

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    .line 50
    iput p1, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    .line 51
    iput-object p2, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    array-length v0, v0

    iget v1, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v2, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 53
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/android/server/wifi/util/Matrix;)V
    .locals 4
    .param p1, "that"    # Lcom/android/server/wifi/util/Matrix;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iget v0, p1, Lcom/android/server/wifi/util/Matrix;->n:I

    iput v0, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    .line 62
    iget v0, p1, Lcom/android/server/wifi/util/Matrix;->m:I

    iput v0, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    .line 63
    iget-object v0, p1, Lcom/android/server/wifi/util/Matrix;->mem:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    iget-object v2, p1, Lcom/android/server/wifi/util/Matrix;->mem:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public dot(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;
    .locals 3
    .param p1, "that"    # Lcom/android/server/wifi/util/Matrix;

    .line 190
    new-instance v0, Lcom/android/server/wifi/util/Matrix;

    iget v1, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v2, p1, Lcom/android/server/wifi/util/Matrix;->m:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/util/Matrix;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/util/Matrix;->dot(Lcom/android/server/wifi/util/Matrix;Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public dot(Lcom/android/server/wifi/util/Matrix;Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;
    .locals 10
    .param p1, "that"    # Lcom/android/server/wifi/util/Matrix;
    .param p2, "result"    # Lcom/android/server/wifi/util/Matrix;

    .line 204
    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v1, p2, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    iget v1, p1, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Lcom/android/server/wifi/util/Matrix;->m:I

    iget v1, p2, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ne v0, v1, :cond_3

    .line 207
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ge v1, v2, :cond_2

    .line 208
    move v2, v0

    .local v2, "j":I
    :goto_1
    iget v3, p1, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ge v2, v3, :cond_1

    .line 209
    const-wide/16 v3, 0x0

    .line 210
    .local v3, "s":D
    move-wide v4, v3

    move v3, v0

    .local v3, "k":I
    .local v4, "s":D
    :goto_2
    iget v6, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ge v3, v6, :cond_0

    .line 211
    invoke-virtual {p0, v1, v3}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v6

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 213
    .end local v3    # "k":I
    :cond_0
    invoke-virtual {p2, v1, v2, v4, v5}, Lcom/android/server/wifi/util/Matrix;->put(IID)V

    .line 208
    .end local v4    # "s":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "i":I
    :cond_2
    return-object p2

    .line 205
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public dotTranspose(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;
    .locals 3
    .param p1, "that"    # Lcom/android/server/wifi/util/Matrix;

    .line 330
    new-instance v0, Lcom/android/server/wifi/util/Matrix;

    iget v1, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v2, p1, Lcom/android/server/wifi/util/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/util/Matrix;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/util/Matrix;->dotTranspose(Lcom/android/server/wifi/util/Matrix;Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public dotTranspose(Lcom/android/server/wifi/util/Matrix;Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;
    .locals 10
    .param p1, "that"    # Lcom/android/server/wifi/util/Matrix;
    .param p2, "result"    # Lcom/android/server/wifi/util/Matrix;

    .line 344
    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v1, p2, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    iget v1, p1, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v1, p2, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ne v0, v1, :cond_3

    .line 347
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ge v1, v2, :cond_2

    .line 348
    move v2, v0

    .local v2, "j":I
    :goto_1
    iget v3, p1, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ge v2, v3, :cond_1

    .line 349
    const-wide/16 v3, 0x0

    .line 350
    .local v3, "s":D
    move-wide v4, v3

    move v3, v0

    .local v3, "k":I
    .local v4, "s":D
    :goto_2
    iget v6, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ge v3, v6, :cond_0

    .line 351
    invoke-virtual {p0, v1, v3}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v6

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 350
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 353
    .end local v3    # "k":I
    :cond_0
    invoke-virtual {p2, v1, v2, v4, v5}, Lcom/android/server/wifi/util/Matrix;->put(IID)V

    .line 348
    .end local v4    # "s":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 347
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "i":I
    :cond_2
    return-object p2

    .line 345
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "that"    # Ljava/lang/Object;

    .line 364
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 365
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/util/Matrix;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 366
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/util/Matrix;

    .line 367
    .local v1, "other":Lcom/android/server/wifi/util/Matrix;
    iget v3, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v4, v1, Lcom/android/server/wifi/util/Matrix;->n:I

    if-eq v3, v4, :cond_2

    return v2

    .line 368
    :cond_2
    iget v3, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    iget v4, v1, Lcom/android/server/wifi/util/Matrix;->m:I

    if-eq v3, v4, :cond_3

    return v2

    .line 369
    :cond_3
    move v3, v2

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 370
    iget-object v4, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    aget-wide v4, v4, v3

    iget-object v6, v1, Lcom/android/server/wifi/util/Matrix;->mem:[D

    aget-wide v6, v6, v3

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_4

    return v2

    .line 369
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 372
    .end local v3    # "i":I
    :cond_5
    return v0
.end method

.method public get(II)D
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 78
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ge p2, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    iget v1, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aget-wide v0, v0, v1

    return-wide v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 5

    .line 380
    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    mul-int/lit8 v0, v0, 0x65

    iget v1, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    add-int/2addr v0, v1

    .line 381
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 382
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->hashCode(D)I

    move-result v3

    add-int v0, v2, v3

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public inverse()Lcom/android/server/wifi/util/Matrix;
    .locals 5

    .line 254
    new-instance v0, Lcom/android/server/wifi/util/Matrix;

    iget v1, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v2, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/util/Matrix;-><init>(II)V

    new-instance v1, Lcom/android/server/wifi/util/Matrix;

    iget v2, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v3, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    const/4 v4, 0x2

    mul-int/2addr v4, v3

    invoke-direct {v1, v2, v4}, Lcom/android/server/wifi/util/Matrix;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/util/Matrix;->inverse(Lcom/android/server/wifi/util/Matrix;Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public inverse(Lcom/android/server/wifi/util/Matrix;Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;
    .locals 18
    .param p1, "result"    # Lcom/android/server/wifi/util/Matrix;
    .param p2, "scratch"    # Lcom/android/server/wifi/util/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 267
    move-object/from16 v2, p2

    iget v3, v0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v4, v0, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ne v3, v4, :cond_10

    iget v3, v0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v4, v1, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ne v3, v4, :cond_10

    iget v3, v0, Lcom/android/server/wifi/util/Matrix;->m:I

    iget v4, v1, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ne v3, v4, :cond_10

    iget v3, v0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v4, v2, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ne v3, v4, :cond_10

    const/4 v3, 0x2

    iget v4, v0, Lcom/android/server/wifi/util/Matrix;->m:I

    mul-int/2addr v3, v4

    iget v4, v2, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ne v3, v4, :cond_10

    .line 271
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    iget v5, v0, Lcom/android/server/wifi/util/Matrix;->n:I

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_2

    .line 272
    move v5, v3

    .local v5, "j":I
    :goto_1
    iget v8, v0, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ge v5, v8, :cond_1

    .line 273
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v8

    invoke-virtual {v2, v4, v5, v8, v9}, Lcom/android/server/wifi/util/Matrix;->put(IID)V

    .line 274
    iget v8, v0, Lcom/android/server/wifi/util/Matrix;->m:I

    add-int/2addr v8, v5

    if-ne v4, v5, :cond_0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_0
    move-wide v9, v6

    :goto_2
    invoke-virtual {v2, v4, v8, v9, v10}, Lcom/android/server/wifi/util/Matrix;->put(IID)V

    .line 272
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 271
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 278
    .end local v4    # "i":I
    :cond_2
    move v4, v3

    .restart local v4    # "i":I
    :goto_3
    iget v5, v0, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ge v4, v5, :cond_a

    .line 279
    move v5, v4

    .line 280
    .local v5, "ibest":I
    invoke-virtual {v2, v5, v5}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 281
    .local v8, "vbest":D
    add-int/lit8 v10, v4, 0x1

    .local v10, "ii":I
    :goto_4
    iget v11, v0, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ge v10, v11, :cond_4

    .line 282
    invoke-virtual {v2, v10, v4}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    .line 283
    .local v11, "v":D
    cmpl-double v13, v11, v8

    if-lez v13, :cond_3

    .line 284
    move v5, v10

    .line 285
    move-wide v8, v11

    .line 281
    .end local v11    # "v":D
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 288
    .end local v10    # "ii":I
    :cond_4
    if-eq v5, v4, :cond_5

    .line 289
    move v10, v3

    .local v10, "j":I
    :goto_5
    iget v11, v2, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ge v10, v11, :cond_5

    .line 290
    invoke-virtual {v2, v4, v10}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v11

    .line 291
    .local v11, "t":D
    invoke-virtual {v2, v5, v10}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v13

    invoke-virtual {v2, v4, v10, v13, v14}, Lcom/android/server/wifi/util/Matrix;->put(IID)V

    .line 292
    invoke-virtual {v2, v5, v10, v11, v12}, Lcom/android/server/wifi/util/Matrix;->put(IID)V

    .line 289
    .end local v11    # "t":D
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 295
    .end local v10    # "j":I
    :cond_5
    invoke-virtual {v2, v4, v4}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v10

    .line 296
    .local v10, "d":D
    cmpl-double v12, v10, v6

    if-eqz v12, :cond_9

    .line 297
    move v12, v3

    .local v12, "j":I
    :goto_6
    iget v13, v2, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ge v12, v13, :cond_6

    .line 298
    invoke-virtual {v2, v4, v12}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v13

    div-double/2addr v13, v10

    invoke-virtual {v2, v4, v12, v13, v14}, Lcom/android/server/wifi/util/Matrix;->put(IID)V

    .line 297
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 300
    .end local v12    # "j":I
    :cond_6
    add-int/lit8 v12, v4, 0x1

    .local v12, "ii":I
    :goto_7
    iget v13, v0, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ge v12, v13, :cond_8

    .line 301
    invoke-virtual {v2, v12, v4}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v10

    .line 302
    move v13, v3

    .local v13, "j":I
    :goto_8
    iget v14, v2, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ge v13, v14, :cond_7

    .line 303
    invoke-virtual {v2, v12, v13}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v14

    invoke-virtual {v2, v4, v13}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v16

    mul-double v16, v16, v10

    sub-double v14, v14, v16

    invoke-virtual {v2, v12, v13, v14, v15}, Lcom/android/server/wifi/util/Matrix;->put(IID)V

    .line 302
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 300
    .end local v13    # "j":I
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 278
    .end local v5    # "ibest":I
    .end local v8    # "vbest":D
    .end local v10    # "d":D
    .end local v12    # "ii":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 296
    .restart local v5    # "ibest":I
    .restart local v8    # "vbest":D
    .restart local v10    # "d":D
    :cond_9
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v6, "Singular matrix"

    invoke-direct {v3, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 307
    .end local v4    # "i":I
    .end local v5    # "ibest":I
    .end local v8    # "vbest":D
    .end local v10    # "d":D
    :cond_a
    iget v4, v0, Lcom/android/server/wifi/util/Matrix;->n:I

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "i":I
    :goto_9
    if-ltz v4, :cond_d

    .line 308
    move v5, v3

    .local v5, "ii":I
    :goto_a
    if-ge v5, v4, :cond_c

    .line 309
    invoke-virtual {v2, v5, v4}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v6

    .line 310
    .local v6, "d":D
    move v8, v3

    .local v8, "j":I
    :goto_b
    iget v9, v2, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ge v8, v9, :cond_b

    .line 311
    invoke-virtual {v2, v5, v8}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v9

    invoke-virtual {v2, v4, v8}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v11

    mul-double/2addr v11, v6

    sub-double/2addr v9, v11

    invoke-virtual {v2, v5, v8, v9, v10}, Lcom/android/server/wifi/util/Matrix;->put(IID)V

    .line 310
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 308
    .end local v6    # "d":D
    .end local v8    # "j":I
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 307
    .end local v5    # "ii":I
    :cond_c
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 315
    .end local v4    # "i":I
    :cond_d
    move v4, v3

    .restart local v4    # "i":I
    :goto_c
    iget v5, v1, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ge v4, v5, :cond_f

    .line 316
    move v5, v3

    .local v5, "j":I
    :goto_d
    iget v6, v1, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ge v5, v6, :cond_e

    .line 317
    iget v6, v0, Lcom/android/server/wifi/util/Matrix;->m:I

    add-int/2addr v6, v5

    invoke-virtual {v2, v4, v6}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/android/server/wifi/util/Matrix;->put(IID)V

    .line 316
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 315
    .end local v5    # "j":I
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 320
    .end local v4    # "i":I
    :cond_f
    return-object v1

    .line 268
    :cond_10
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public minus(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;
    .locals 3
    .param p1, "that"    # Lcom/android/server/wifi/util/Matrix;

    .line 133
    new-instance v0, Lcom/android/server/wifi/util/Matrix;

    iget v1, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v2, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/util/Matrix;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/util/Matrix;->minus(Lcom/android/server/wifi/util/Matrix;Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lcom/android/server/wifi/util/Matrix;Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;
    .locals 6
    .param p1, "that"    # Lcom/android/server/wifi/util/Matrix;
    .param p2, "result"    # Lcom/android/server/wifi/util/Matrix;

    .line 145
    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v1, p1, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    iget v1, p1, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v1, p2, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    iget v1, p2, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ne v0, v1, :cond_1

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 149
    iget-object v1, p2, Lcom/android/server/wifi/util/Matrix;->mem:[D

    iget-object v2, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    aget-wide v2, v2, v0

    iget-object v4, p1, Lcom/android/server/wifi/util/Matrix;->mem:[D

    aget-wide v4, v4, v0

    sub-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "i":I
    :cond_0
    return-object p2

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public plus(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;
    .locals 3
    .param p1, "that"    # Lcom/android/server/wifi/util/Matrix;

    .line 103
    new-instance v0, Lcom/android/server/wifi/util/Matrix;

    iget v1, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v2, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/util/Matrix;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/util/Matrix;->plus(Lcom/android/server/wifi/util/Matrix;Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lcom/android/server/wifi/util/Matrix;Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;
    .locals 6
    .param p1, "that"    # Lcom/android/server/wifi/util/Matrix;
    .param p2, "result"    # Lcom/android/server/wifi/util/Matrix;

    .line 116
    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v1, p1, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    iget v1, p1, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v1, p2, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    iget v1, p2, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ne v0, v1, :cond_1

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v1, p2, Lcom/android/server/wifi/util/Matrix;->mem:[D

    iget-object v2, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    aget-wide v2, v2, v0

    iget-object v4, p1, Lcom/android/server/wifi/util/Matrix;->mem:[D

    aget-wide v4, v4, v0

    add-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    :cond_0
    return-object p2

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public put(IID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "v"    # D

    .line 91
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ge p2, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    iget v1, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aput-wide p3, v0, v1

    .line 93
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public times(D)Lcom/android/server/wifi/util/Matrix;
    .locals 3
    .param p1, "scalar"    # D

    .line 161
    new-instance v0, Lcom/android/server/wifi/util/Matrix;

    iget v1, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v2, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/util/Matrix;-><init>(II)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wifi/util/Matrix;->times(DLcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public times(DLcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;
    .locals 4
    .param p1, "scalar"    # D
    .param p3, "result"    # Lcom/android/server/wifi/util/Matrix;

    .line 173
    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v1, p3, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    iget v1, p3, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ne v0, v1, :cond_1

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v1, p3, Lcom/android/server/wifi/util/Matrix;->mem:[D

    iget-object v2, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    aget-wide v2, v2, v0

    mul-double/2addr v2, p1

    aput-wide v2, v1, v0

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "i":I
    :cond_0
    return-object p3

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v2, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 395
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 397
    if-lez v1, :cond_1

    iget v2, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    rem-int v2, v1, v2

    if-nez v2, :cond_0

    const-string v2, "; "

    goto :goto_1

    :cond_0
    const-string v2, ", "

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/util/Matrix;->mem:[D

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v1    # "i":I
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public transpose()Lcom/android/server/wifi/util/Matrix;
    .locals 3

    .line 225
    new-instance v0, Lcom/android/server/wifi/util/Matrix;

    iget v1, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    iget v2, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/util/Matrix;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/util/Matrix;->transpose(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public transpose(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;
    .locals 5
    .param p1, "result"    # Lcom/android/server/wifi/util/Matrix;

    .line 238
    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    iget v1, p1, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    iget v1, p1, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ne v0, v1, :cond_2

    .line 239
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/server/wifi/util/Matrix;->n:I

    if-ge v1, v2, :cond_1

    .line 240
    move v2, v0

    .local v2, "j":I
    :goto_1
    iget v3, p0, Lcom/android/server/wifi/util/Matrix;->m:I

    if-ge v2, v3, :cond_0

    .line 241
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v3

    invoke-virtual {p1, v2, v1, v3, v4}, Lcom/android/server/wifi/util/Matrix;->put(IID)V

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 239
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "i":I
    :cond_1
    return-object p1

    .line 238
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
