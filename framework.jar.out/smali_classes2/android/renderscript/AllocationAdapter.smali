.class public Landroid/renderscript/AllocationAdapter;
.super Landroid/renderscript/Allocation;
.source "AllocationAdapter.java"


# instance fields
.field mWindow:Landroid/renderscript/Type;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)V
    .locals 6
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "alloc"    # Landroid/renderscript/Allocation;
    .param p5, "t"    # Landroid/renderscript/Type;

    .line 27
    iget-object v4, p4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget v5, p4, Landroid/renderscript/Allocation;->mUsage:I

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    .line 28
    iput-object p4, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 29
    iput-object p5, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    .line 30
    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .line 232
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 233
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/renderscript/Type;->createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;

    move-result-object v0

    .line 234
    .local v0, "t":Landroid/renderscript/Type;
    invoke-static {p0, p1, v0}, Landroid/renderscript/AllocationAdapter;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .line 239
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 240
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Type;->createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v0

    .line 241
    .local v0, "t":Landroid/renderscript/Type;
    invoke-static {p0, p1, v0}, Landroid/renderscript/AllocationAdapter;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;
    .locals 11
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;
    .param p2, "t"    # Landroid/renderscript/Type;

    .line 267
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 269
    iget-object v0, p1, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-nez v0, :cond_6

    .line 273
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 277
    invoke-virtual {p2}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_4

    .line 281
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 282
    .local v0, "at":Landroid/renderscript/Type;
    invoke-virtual {p2}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 283
    invoke-virtual {p2}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 284
    invoke-virtual {p2}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 285
    invoke-virtual {p2}, Landroid/renderscript/Type;->getArrayCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getArrayCount()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 290
    invoke-virtual {p2}, Landroid/renderscript/Type;->getArrayCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2, v1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 292
    invoke-virtual {p2, v1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    :cond_0
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string v3, "Type cannot have dimension larger than the source allocation."

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1, p0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/renderscript/RenderScript;->nAllocationAdapterCreate(JJ)J

    move-result-wide v1

    .line 300
    .local v1, "id":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    .line 303
    new-instance v3, Landroid/renderscript/AllocationAdapter;

    move-object v5, v3

    move-wide v6, v1

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Landroid/renderscript/AllocationAdapter;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)V

    return-object v3

    .line 301
    :cond_2
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "AllocationAdapter creation failed."

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 287
    .end local v1    # "id":J
    :cond_3
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "Type cannot have dimension larger than the source allocation."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    .end local v0    # "at":Landroid/renderscript/Type;
    :cond_4
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Adapters do not support window types with Mipmaps or Faces."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_5
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Element must match Allocation type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_6
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Adapters cannot be nested."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateOffsets()V
    .locals 17

    .line 73
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "a1":I
    const/4 v2, 0x0

    .local v2, "a2":I
    const/4 v3, 0x0

    .local v3, "a3":I
    const/4 v4, 0x0

    .line 75
    .local v4, "a4":I
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    if-eqz v5, :cond_3

    .line 76
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v5, v5

    if-lez v5, :cond_0

    .line 77
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    const/4 v6, 0x0

    aget v1, v5, v6

    .line 79
    :cond_0
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v5, v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-le v5, v6, :cond_1

    .line 80
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v2, v5, v7

    .line 82
    :cond_1
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v5, v5

    if-le v5, v7, :cond_2

    .line 83
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v3, v5, v7

    .line 85
    :cond_2
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v5, v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_3

    .line 86
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v4, v5, v6

    .line 89
    :cond_3
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, v0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v6}, Landroid/renderscript/AllocationAdapter;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    iget v8, v0, Landroid/renderscript/AllocationAdapter;->mSelectedX:I

    iget v9, v0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    iget v10, v0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    iget v11, v0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    iget-object v12, v0, Landroid/renderscript/AllocationAdapter;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v12, v12, Landroid/renderscript/Type$CubemapFace;->mID:I

    move v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v5 .. v16}, Landroid/renderscript/RenderScript;->nAllocationAdapterOffset(JIIIIIIIII)V

    .line 92
    return-void
.end method


# virtual methods
.method initLOD(I)V
    .locals 7
    .param p1, "lod"    # I

    .line 40
    if-ltz p1, :cond_8

    .line 44
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v0, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 45
    .local v0, "tx":I
    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v1, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    .line 46
    .local v1, "ty":I
    iget-object v2, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v2, v2, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    .line 48
    .local v2, "tz":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v0

    move v0, v3

    .local v0, "ct":I
    .local v1, "tx":I
    .local v2, "ty":I
    .local v4, "tz":I
    :goto_0
    const/4 v5, 0x1

    if-ge v0, p1, :cond_5

    .line 49
    if-ne v1, v5, :cond_1

    if-ne v2, v5, :cond_1

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 50
    :cond_0
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to set lod ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") out of range."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_1
    :goto_1
    if-le v1, v5, :cond_2

    shr-int/lit8 v1, v1, 0x1

    .line 54
    :cond_2
    if-le v2, v5, :cond_3

    shr-int/lit8 v2, v2, 0x1

    .line 55
    :cond_3
    if-le v4, v5, :cond_4

    shr-int/lit8 v4, v4, 0x1

    .line 48
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "ct":I
    :cond_5
    iput v1, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimX:I

    .line 59
    iput v2, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    .line 60
    iput v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    .line 61
    iget v0, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimX:I

    iput v0, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    .line 62
    iget v0, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    if-le v0, v5, :cond_6

    .line 63
    iget v0, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    iget v6, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    mul-int/2addr v0, v6

    iput v0, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    .line 65
    :cond_6
    iget v0, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    if-le v0, v5, :cond_7

    .line 66
    iget v0, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    iget v5, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    mul-int/2addr v0, v5

    iput v0, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    .line 68
    :cond_7
    iput v3, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    .line 69
    iput v3, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    .line 70
    return-void

    .line 41
    .end local v1    # "tx":I
    .end local v2    # "ty":I
    .end local v4    # "tz":I
    :cond_8
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to set negative lod ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized resize(I)V
    .locals 2
    .param p1, "dimX"    # I

    monitor-enter p0

    .line 313
    :try_start_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Resize not allowed for Adapters."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "dimX":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/renderscript/AllocationAdapter;
    throw p1
.end method

.method public setArray(II)V
    .locals 2
    .param p1, "arrayNum"    # I
    .param p2, "arrayVal"    # I

    .line 214
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    if-le v0, p2, :cond_2

    .line 220
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 223
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aput p2, v0, p1

    .line 228
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 229
    return-void

    .line 224
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set (arrayNum + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set arrayNum when the adapter includes arrayNum."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_2
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set arrayNum greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_3
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set arrayNum when the allocation type does not include arrayNum dim."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFace(Landroid/renderscript/Type$CubemapFace;)V
    .locals 2
    .param p1, "cf"    # Landroid/renderscript/Type$CubemapFace;

    .line 123
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    if-eqz p1, :cond_0

    .line 133
    iput-object p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    .line 134
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 135
    return-void

    .line 130
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Cannot set null face."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set face when the adapter includes faces."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Face when the allocation type does not include faces."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLOD(I)V
    .locals 2
    .param p1, "lod"    # I

    .line 104
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->initLOD(I)V

    .line 112
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    .line 113
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 114
    return-void

    .line 108
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set LOD when the adapter includes mipmaps."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set LOD when the allocation type does not include mipmaps."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setX(I)V
    .locals 2
    .param p1, "x"    # I

    .line 146
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 149
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 156
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedX:I

    .line 157
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 158
    return-void

    .line 153
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set (X + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set X when the adapter includes X."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set X greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setY(I)V
    .locals 2
    .param p1, "y"    # I

    .line 168
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 174
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 177
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 181
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    .line 182
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 183
    return-void

    .line 178
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set (Y + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Y when the adapter includes Y."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_2
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Y greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_3
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Y when the allocation type does not include Y dim."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setZ(I)V
    .locals 2
    .param p1, "z"    # I

    .line 193
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 199
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 202
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 206
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    .line 207
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 208
    return-void

    .line 203
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set (Z + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Z when the adapter includes Z."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_2
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Z greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_3
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Z when the allocation type does not include Z dim."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
