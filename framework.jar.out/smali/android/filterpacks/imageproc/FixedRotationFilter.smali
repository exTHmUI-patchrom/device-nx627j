.class public Landroid/filterpacks/imageproc/FixedRotationFilter;
.super Landroid/filterfw/core/Filter;
.source "FixedRotationFilter.java"


# instance fields
.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRotation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "rotation"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 44
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 55
    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 12
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 60
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 61
    .local v0, "input":Landroid/filterfw/core/Frame;
    iget v1, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    if-nez v1, :cond_0

    .line 62
    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 63
    return-void

    .line 65
    :cond_0
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 68
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v2, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-nez v2, :cond_1

    .line 69
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v2

    iput-object v2, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 71
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    .line 72
    .local v2, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    .line 73
    .local v3, "width":I
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    .line 74
    .local v4, "height":I
    new-instance v5, Landroid/filterfw/geometry/Point;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 75
    .local v5, "p1":Landroid/filterfw/geometry/Point;
    new-instance v7, Landroid/filterfw/geometry/Point;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 76
    .local v7, "p2":Landroid/filterfw/geometry/Point;
    new-instance v9, Landroid/filterfw/geometry/Point;

    invoke-direct {v9, v6, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    move-object v6, v9

    .line 77
    .local v6, "p3":Landroid/filterfw/geometry/Point;
    new-instance v9, Landroid/filterfw/geometry/Point;

    invoke-direct {v9, v8, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    move-object v8, v9

    .line 79
    .local v8, "p4":Landroid/filterfw/geometry/Point;
    iget v9, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    int-to-float v9, v9

    const/high16 v10, 0x42b40000    # 90.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    rem-int/lit8 v9, v9, 0x4

    packed-switch v9, :pswitch_data_0

    .line 93
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v5, v7, v6, v8}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    goto :goto_0

    .line 88
    :pswitch_0
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v7, v8, v5, v6}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 89
    .local v9, "sourceRegion":Landroid/filterfw/geometry/Quad;
    invoke-virtual {v2, v4, v3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 90
    goto :goto_0

    .line 85
    .end local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    :pswitch_1
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v8, v6, v7, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 86
    .restart local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    goto :goto_0

    .line 81
    .end local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    :pswitch_2
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v6, v5, v8, v7}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 82
    .restart local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    invoke-virtual {v2, v4, v3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 83
    nop

    .line 93
    :goto_0
    nop

    .line 97
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v10

    .line 100
    .local v10, "output":Landroid/filterfw/core/Frame;
    iget-object v11, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v11, v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 103
    iget-object v11, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v11, v0, v10}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 106
    const-string v11, "image"

    invoke-virtual {p0, v11, v10}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 109
    invoke-virtual {v10}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 110
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setupPorts()V
    .locals 2

    .line 48
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FixedRotationFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 50
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FixedRotationFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
