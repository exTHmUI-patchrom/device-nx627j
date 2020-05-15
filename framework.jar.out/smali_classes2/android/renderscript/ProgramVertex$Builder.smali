.class public Landroid/renderscript/ProgramVertex$Builder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramVertex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 94
    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 95
    return-void
.end method


# virtual methods
.method public addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;
    .locals 3
    .param p1, "e"    # Landroid/renderscript/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 107
    iget v0, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 110
    invoke-virtual {p1}, Landroid/renderscript/Element;->isComplex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputs:[Landroid/renderscript/Element;

    iget v1, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    aput-object p1, v0, v1

    .line 114
    return-object p0

    .line 111
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Complex elements not allowed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Max input count exceeded."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create()Landroid/renderscript/ProgramVertex;
    .locals 8

    .line 124
    iget-object v0, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 125
    iget v0, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    iget v1, p0, Landroid/renderscript/ProgramVertex$Builder;->mOutputCount:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/ProgramVertex$Builder;->mConstantCount:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    .line 126
    .local v0, "tmp":[J
    iget v1, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureCount:I

    new-array v1, v1, [Ljava/lang/String;

    .line 127
    .local v1, "texNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 129
    .local v2, "idx":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "idx":I
    :goto_0
    iget v5, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    if-ge v2, v5, :cond_0

    .line 130
    add-int/lit8 v5, v4, 0x1

    .local v5, "idx":I
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v6, v6

    aput-wide v6, v0, v4

    .line 131
    .end local v4    # "idx":I
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "idx":I
    iget-object v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v2

    iget-object v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 129
    .end local v5    # "idx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "i":I
    :cond_0
    move v2, v3

    .restart local v2    # "i":I
    :goto_1
    iget v5, p0, Landroid/renderscript/ProgramVertex$Builder;->mOutputCount:I

    if-ge v2, v5, :cond_1

    .line 134
    add-int/lit8 v5, v4, 0x1

    .restart local v5    # "idx":I
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v6, v6

    aput-wide v6, v0, v4

    .line 135
    .end local v4    # "idx":I
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "idx":I
    iget-object v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v2

    iget-object v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 133
    .end local v5    # "idx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    .end local v2    # "i":I
    :cond_1
    move v2, v3

    .restart local v2    # "i":I
    :goto_2
    iget v5, p0, Landroid/renderscript/ProgramVertex$Builder;->mConstantCount:I

    if-ge v2, v5, :cond_2

    .line 138
    add-int/lit8 v5, v4, 0x1

    .restart local v5    # "idx":I
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v6, v6

    aput-wide v6, v0, v4

    .line 139
    .end local v4    # "idx":I
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "idx":I
    iget-object v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mConstants:[Landroid/renderscript/Type;

    aget-object v6, v6, v2

    iget-object v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 137
    .end local v5    # "idx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 141
    .end local v2    # "i":I
    :cond_2
    nop

    .local v3, "i":I
    :goto_3
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget v3, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureCount:I

    if-ge v2, v3, :cond_3

    .line 142
    add-int/lit8 v3, v4, 0x1

    .local v3, "idx":I
    sget-object v5, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v5, v5, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v4

    .line 143
    .end local v4    # "idx":I
    add-int/lit8 v4, v3, 0x1

    .restart local v4    # "idx":I
    iget-object v5, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/renderscript/Program$TextureType;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v3

    .line 144
    .end local v3    # "idx":I
    iget-object v3, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    .line 141
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_3

    .line 147
    .end local v3    # "i":I
    :cond_3
    iget-object v2, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/ProgramVertex$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Landroid/renderscript/RenderScript;->nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide v2

    .line 148
    .local v2, "id":J
    new-instance v5, Landroid/renderscript/ProgramVertex;

    iget-object v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v5, v2, v3, v6}, Landroid/renderscript/ProgramVertex;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 149
    .local v5, "pv":Landroid/renderscript/ProgramVertex;
    invoke-virtual {p0, v5}, Landroid/renderscript/ProgramVertex$Builder;->initProgram(Landroid/renderscript/Program;)V

    .line 150
    return-object v5
.end method
