.class public Landroid/filterpacks/imageproc/CropFilter;
.super Landroid/filterfw/core/Filter;
.source "CropFilter.java"


# instance fields
.field private mFillBlack:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "fillblack"
    .end annotation
.end field

.field private final mFragShader:Ljava/lang/String;

.field private mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private mOutputHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "oheight"
    .end annotation
.end field

.field private mOutputWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "owidth"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputWidth:I

    .line 43
    iput v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputHeight:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mFillBlack:Z

    .line 53
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec2 lo = vec2(0.0, 0.0);\n  const vec2 hi = vec2(1.0, 1.0);\n  const vec4 black = vec4(0.0, 0.0, 0.0, 1.0);\n  bool out_of_bounds =\n    any(lessThan(v_texcoord, lo)) ||\n    any(greaterThan(v_texcoord, hi));\n  if (out_of_bounds) {\n    gl_FragColor = black;\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mFragShader:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method protected createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 89
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 90
    :cond_0
    iput-object p2, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 92
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    iget-boolean v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mFillBlack:Z

    if-eqz v0, :cond_2

    .line 95
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec2 lo = vec2(0.0, 0.0);\n  const vec2 hi = vec2(1.0, 1.0);\n  const vec4 black = vec4(0.0, 0.0, 0.0, 1.0);\n  bool out_of_bounds =\n    any(lessThan(v_texcoord, lo)) ||\n    any(greaterThan(v_texcoord, hi));\n  if (out_of_bounds) {\n    gl_FragColor = black;\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 97
    :cond_2
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 101
    :goto_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_3

    .line 104
    return-void

    .line 102
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create a program for crop filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 2
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 82
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 83
    .local v0, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 84
    return-object v0
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .line 109
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/CropFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 110
    .local v0, "imageFrame":Landroid/filterfw/core/Frame;
    const-string v1, "box"

    invoke-virtual {p0, v1}, Landroid/filterpacks/imageproc/CropFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 112
    .local v1, "boxFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/CropFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    .line 115
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/geometry/Quad;

    .line 118
    .local v2, "box":Landroid/filterfw/geometry/Quad;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    .line 119
    .local v3, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    iget v4, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputWidth:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/filterfw/core/MutableFrameFormat;->getWidth()I

    move-result v4

    goto :goto_0

    :cond_0
    iget v4, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputWidth:I

    .line 120
    :goto_0
    iget v6, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputHeight:I

    if-ne v6, v5, :cond_1

    invoke-virtual {v3}, Landroid/filterfw/core/MutableFrameFormat;->getHeight()I

    move-result v5

    goto :goto_1

    :cond_1
    iget v5, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputHeight:I

    .line 119
    :goto_1
    invoke-virtual {v3, v4, v5}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 123
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 126
    .local v4, "output":Landroid/filterfw/core/Frame;
    iget-object v5, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    instance-of v5, v5, Landroid/filterfw/core/ShaderProgram;

    if-eqz v5, :cond_2

    .line 127
    iget-object v5, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast v5, Landroid/filterfw/core/ShaderProgram;

    .line 128
    .local v5, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    invoke-virtual {v5, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 131
    .end local v5    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    :cond_2
    iget-object v5, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v5, v0, v4}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 134
    const-string v5, "image"

    invoke-virtual {p0, v5, v4}, Landroid/filterpacks/imageproc/CropFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 137
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 138
    return-void
.end method

.method public setupPorts()V
    .locals 3

    .line 73
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CropFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 74
    const-string v0, "box"

    const-class v1, Landroid/filterfw/geometry/Quad;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CropFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 75
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CropFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
