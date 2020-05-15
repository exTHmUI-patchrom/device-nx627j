.class public Landroid/filterpacks/imageproc/ImageSlicer;
.super Landroid/filterfw/core/Filter;
.source "ImageSlicer.java"


# instance fields
.field private mInputHeight:I

.field private mInputWidth:I

.field private mOriginalFrame:Landroid/filterfw/core/Frame;

.field private mOutputHeight:I

.field private mOutputWidth:I

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

    .line 57
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 59
    return-void
.end method

.method private calcOutputFormatForInput(Landroid/filterfw/core/Frame;)V
    .locals 2
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .line 76
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    .line 77
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    .line 79
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    .line 80
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    .line 82
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    .line 83
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    .line 84
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 70
    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 91
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    if-nez v0, :cond_0

    .line 92
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ImageSlicer;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    .line 93
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-direct {p0, v0}, Landroid/filterpacks/imageproc/ImageSlicer;->calcOutputFormatForInput(Landroid/filterfw/core/Frame;)V

    .line 96
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    .line 97
    .local v0, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 98
    .local v1, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    iget v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    iget v3, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 101
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 104
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    if-nez v3, :cond_1

    .line 105
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v3

    iput-object v3, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    .line 109
    :cond_1
    iget v3, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    iget v4, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    rem-int/2addr v3, v4

    .line 110
    .local v3, "xSliceIndex":I
    iget v4, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    iget v5, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    div-int/2addr v4, v5

    .line 113
    .local v4, "ySliceIndex":I
    iget v5, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    mul-int/2addr v5, v3

    iget v6, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 114
    .local v5, "x0":F
    iget v6, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    mul-int/2addr v6, v4

    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 116
    .local v6, "y0":F
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    check-cast v7, Landroid/filterfw/core/ShaderProgram;

    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    int-to-float v8, v8

    iget v9, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v9, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    int-to-float v9, v9

    iget v10, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 121
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7, v8, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 122
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 124
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    iget v9, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    iget v10, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    mul-int/2addr v9, v10

    const/4 v10, 0x0

    if-ne v7, v9, :cond_2

    .line 125
    iput v10, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 126
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 127
    const-string v7, "image"

    invoke-virtual {p0, v7, v8}, Landroid/filterpacks/imageproc/ImageSlicer;->setWaitsOnInputPort(Ljava/lang/String;Z)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    .line 131
    const-string v7, "image"

    invoke-virtual {p0, v7, v10}, Landroid/filterpacks/imageproc/ImageSlicer;->setWaitsOnInputPort(Ljava/lang/String;Z)V

    .line 135
    :goto_0
    const-string v7, "image"

    invoke-virtual {p0, v7, v2}, Landroid/filterpacks/imageproc/ImageSlicer;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 138
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 139
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .line 63
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ImageSlicer;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 65
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ImageSlicer;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
