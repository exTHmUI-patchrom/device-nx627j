.class public Landroid/filterpacks/imageproc/ImageStitcher;
.super Landroid/filterfw/core/Filter;
.source "ImageStitcher.java"


# instance fields
.field private mImageHeight:I

.field private mImageWidth:I

.field private mInputHeight:I

.field private mInputWidth:I

.field private mOutputFrame:Landroid/filterfw/core/Frame;

.field private mPadSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "padSize"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mSliceHeight:I

.field private mSliceIndex:I

.field private mSliceWidth:I

.field private mXSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xSlices"
    .end annotation
.end field

.field private mYSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "ySlices"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 57
    return-void
.end method

.method private calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 4
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 72
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 74
    .local v0, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    .line 75
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    .line 77
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    .line 78
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    mul-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    .line 80
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    .line 81
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    .line 83
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 84
    return-object v0
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 68
    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 13
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 90
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ImageStitcher;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 91
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 94
    .local v1, "format":Landroid/filterfw/core/FrameFormat;
    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    if-nez v2, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-direct {p0, v1}, Landroid/filterpacks/imageproc/ImageStitcher;->calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    iput-object v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    if-ne v2, v3, :cond_3

    .line 98
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    if-ne v2, v3, :cond_3

    .line 105
    :goto_0
    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    if-nez v2, :cond_1

    .line 106
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v2

    iput-object v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    .line 110
    :cond_1
    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 111
    .local v2, "x0":F
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    int-to-float v3, v3

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 113
    .local v3, "y0":F
    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v5, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    rem-int/2addr v4, v5

    iget v5, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    mul-int/2addr v4, v5

    .line 114
    .local v4, "outputOffsetX":I
    iget v5, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v6, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    div-int/2addr v5, v6

    iget v6, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    mul-int/2addr v5, v6

    .line 116
    .local v5, "outputOffsetY":I
    iget v6, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    iget v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    .line 117
    .local v6, "outputWidth":F
    iget v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    .line 120
    .local v7, "outputHeight":F
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast v8, Landroid/filterfw/core/ShaderProgram;

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v9, v9

    div-float v9, v6, v9

    iget v10, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v10, v10

    div-float v10, v7, v10

    invoke-virtual {v8, v2, v3, v9, v10}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 124
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast v8, Landroid/filterfw/core/ShaderProgram;

    int-to-float v9, v4

    iget v10, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v5

    iget v11, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget v11, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    int-to-float v11, v11

    div-float v11, v6, v11

    iget v12, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    int-to-float v12, v12

    div-float v12, v7, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 130
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    iget-object v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v8, v0, v9}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 131
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 134
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    iget v10, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr v9, v10

    if-ne v8, v9, :cond_2

    .line 135
    const-string v8, "image"

    iget-object v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p0, v8, v9}, Landroid/filterpacks/imageproc/ImageStitcher;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 136
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v8}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 137
    const/4 v8, 0x0

    iput v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 139
    :cond_2
    return-void

    .line 100
    .end local v2    # "x0":F
    .end local v3    # "y0":F
    .end local v4    # "outputOffsetX":I
    .end local v5    # "outputOffsetY":I
    .end local v6    # "outputWidth":F
    .end local v7    # "outputHeight":F
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Image size should not change."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setupPorts()V
    .locals 2

    .line 61
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ImageStitcher;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 63
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ImageStitcher;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
