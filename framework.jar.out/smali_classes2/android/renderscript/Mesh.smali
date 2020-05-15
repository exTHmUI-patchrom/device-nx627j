.class public Landroid/renderscript/Mesh;
.super Landroid/renderscript/BaseObj;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$TriangleMeshBuilder;,
        Landroid/renderscript/Mesh$AllocationBuilder;,
        Landroid/renderscript/Mesh$Builder;,
        Landroid/renderscript/Mesh$Primitive;
    }
.end annotation


# instance fields
.field mIndexBuffers:[Landroid/renderscript/Allocation;

.field mPrimitives:[Landroid/renderscript/Mesh$Primitive;

.field mVertexBuffers:[Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 94
    iget-object v0, p0, Landroid/renderscript/Mesh;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 95
    return-void
.end method


# virtual methods
.method public getIndexSetAllocation(I)Landroid/renderscript/Allocation;
    .locals 1
    .param p1, "slot"    # I

    .line 138
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrimitive(I)Landroid/renderscript/Mesh$Primitive;
    .locals 1
    .param p1, "slot"    # I

    .line 147
    iget-object v0, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrimitiveCount()I
    .locals 1

    .line 124
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    array-length v0, v0

    return v0
.end method

.method public getVertexAllocation(I)Landroid/renderscript/Allocation;
    .locals 1
    .param p1, "slot"    # I

    .line 115
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getVertexAllocationCount()I
    .locals 1

    .line 103
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    array-length v0, v0

    return v0
.end method

.method updateFromNative()V
    .locals 18

    .line 152
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 153
    iget-object v1, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nMeshGetVertexBufferCount(J)I

    move-result v1

    .line 154
    .local v1, "vtxCount":I
    iget-object v2, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/RenderScript;->nMeshGetIndexCount(J)I

    move-result v2

    .line 156
    .local v2, "idxCount":I
    new-array v3, v1, [J

    .line 157
    .local v3, "vtxIDs":[J
    new-array v4, v2, [J

    .line 158
    .local v4, "idxIDs":[J
    new-array v11, v2, [I

    .line 160
    .local v11, "primitives":[I
    iget-object v5, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v6}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v3, v1}, Landroid/renderscript/RenderScript;->nMeshGetVertices(J[JI)V

    .line 161
    iget-object v5, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v6}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    move-object v8, v4

    move-object v9, v11

    move v10, v2

    invoke-virtual/range {v5 .. v10}, Landroid/renderscript/RenderScript;->nMeshGetIndices(J[J[II)V

    .line 163
    new-array v5, v1, [Landroid/renderscript/Allocation;

    iput-object v5, v0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 164
    new-array v5, v2, [Landroid/renderscript/Allocation;

    iput-object v5, v0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 165
    new-array v5, v2, [Landroid/renderscript/Mesh$Primitive;

    iput-object v5, v0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 167
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    const-wide/16 v7, 0x0

    if-ge v6, v1, :cond_1

    .line 168
    aget-wide v9, v3, v6

    cmp-long v7, v9, v7

    if-eqz v7, :cond_0

    .line 169
    iget-object v7, v0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    new-instance v8, Landroid/renderscript/Allocation;

    aget-wide v13, v3, v6

    iget-object v15, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v12, v8

    invoke-direct/range {v12 .. v17}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v8, v7, v6

    .line 170
    iget-object v7, v0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/renderscript/Allocation;->updateFromNative()V

    .line 167
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 174
    .end local v6    # "i":I
    :cond_1
    nop

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 175
    aget-wide v9, v4, v5

    cmp-long v6, v9, v7

    if-eqz v6, :cond_2

    .line 176
    iget-object v6, v0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    new-instance v9, Landroid/renderscript/Allocation;

    aget-wide v13, v4, v5

    iget-object v15, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v12, v9

    invoke-direct/range {v12 .. v17}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v9, v6, v5

    .line 177
    iget-object v6, v0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->updateFromNative()V

    .line 179
    :cond_2
    iget-object v6, v0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    invoke-static {}, Landroid/renderscript/Mesh$Primitive;->values()[Landroid/renderscript/Mesh$Primitive;

    move-result-object v9

    aget v10, v11, v5

    aget-object v9, v9, v10

    aput-object v9, v6, v5

    .line 174
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 181
    .end local v5    # "i":I
    :cond_3
    return-void
.end method
