.class public Landroid/filterpacks/imageproc/RotateFilter;
.super Landroid/filterfw/core/Filter;
.source "RotateFilter.java"


# instance fields
.field private mAngle:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "angle"
    .end annotation
.end field

.field private mHeight:I

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 39
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTileSize:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    .line 45
    iput v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    .line 46
    iput v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    .line 53
    return-void
.end method

.method private updateParameters()V
    .locals 11

    .line 125
    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    rem-int/lit8 v0, v0, 0x5a

    if-nez v0, :cond_3

    .line 126
    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    rem-int/lit16 v0, v0, 0xb4

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "sinTheta":F
    iget v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    rem-int/lit16 v3, v3, 0x168

    if-nez v3, :cond_0

    move v1, v2

    nop

    .local v1, "cosTheta":F
    :cond_0
    goto :goto_1

    .line 130
    .end local v0    # "sinTheta":F
    .end local v1    # "cosTheta":F
    :cond_1
    const/4 v0, 0x0

    .line 131
    .local v0, "cosTheta":F
    iget v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    add-int/lit8 v3, v3, 0x5a

    rem-int/lit16 v3, v3, 0x168

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 133
    .local v1, "sinTheta":F
    :goto_0
    iget v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    iput v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    .line 134
    iget v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    iput v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    .line 137
    move v10, v1

    move v1, v0

    move v0, v10

    .line 140
    .local v0, "sinTheta":F
    .local v1, "cosTheta":F
    :goto_1
    new-instance v3, Landroid/filterfw/geometry/Point;

    neg-float v4, v1

    add-float/2addr v4, v0

    add-float/2addr v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    neg-float v6, v0

    sub-float/2addr v6, v1

    add-float/2addr v6, v2

    mul-float/2addr v6, v5

    invoke-direct {v3, v4, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 142
    .local v3, "x0":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    add-float v6, v1, v0

    add-float/2addr v6, v2

    mul-float/2addr v6, v5

    sub-float v7, v0, v1

    add-float/2addr v7, v2

    mul-float/2addr v7, v5

    invoke-direct {v4, v6, v7}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 144
    .local v4, "x1":Landroid/filterfw/geometry/Point;
    new-instance v6, Landroid/filterfw/geometry/Point;

    neg-float v7, v1

    sub-float/2addr v7, v0

    add-float/2addr v7, v2

    mul-float/2addr v7, v5

    neg-float v8, v0

    add-float/2addr v8, v1

    add-float/2addr v8, v2

    mul-float/2addr v8, v5

    invoke-direct {v6, v7, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 146
    .local v6, "x2":Landroid/filterfw/geometry/Point;
    new-instance v7, Landroid/filterfw/geometry/Point;

    sub-float v8, v1, v0

    add-float/2addr v8, v2

    mul-float/2addr v8, v5

    add-float v9, v0, v1

    add-float/2addr v9, v2

    mul-float/2addr v5, v9

    invoke-direct {v7, v8, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    move-object v2, v7

    .line 148
    .local v2, "x3":Landroid/filterfw/geometry/Point;
    new-instance v5, Landroid/filterfw/geometry/Quad;

    invoke-direct {v5, v3, v4, v6, v2}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 149
    .local v5, "quad":Landroid/filterfw/geometry/Quad;
    iget-object v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast v7, Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v7, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    .line 150
    return-void

    .line 137
    .end local v0    # "sinTheta":F
    .end local v1    # "cosTheta":F
    .end local v2    # "x3":Landroid/filterfw/geometry/Point;
    .end local v3    # "x0":Landroid/filterfw/geometry/Point;
    .end local v4    # "x1":Landroid/filterfw/geometry/Point;
    .end local v5    # "quad":Landroid/filterfw/geometry/Quad;
    .end local v6    # "x2":Landroid/filterfw/geometry/Point;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "degree has to be multiply of 90."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 79
    iget-object v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Landroid/filterpacks/imageproc/RotateFilter;->updateParameters()V

    .line 82
    :cond_0
    return-void
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 62
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 64
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    .line 65
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 67
    iput-object v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 68
    nop

    .line 74
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    .line 75
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter Sharpen does not support frames of target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 87
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/RotateFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 88
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 91
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    iget v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    if-eq v2, v3, :cond_1

    .line 92
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/RotateFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 95
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    if-eq v2, v3, :cond_3

    .line 96
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    iput v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    .line 97
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    .line 98
    iget v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    iput v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    .line 99
    iget v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    iput v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    .line 101
    invoke-direct {p0}, Landroid/filterpacks/imageproc/RotateFilter;->updateParameters()V

    .line 105
    :cond_3
    iget v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    iget v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, v4}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    .line 109
    .local v2, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 112
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v0, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 115
    const-string v4, "image"

    invoke-virtual {p0, v4, v3}, Landroid/filterpacks/imageproc/RotateFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 118
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 119
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .line 57
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/RotateFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 58
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/RotateFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method
