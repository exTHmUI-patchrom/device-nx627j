.class public Landroid/filterpacks/imageproc/DrawRectFilter;
.super Landroid/filterfw/core/Filter;
.source "DrawRectFilter.java"


# instance fields
.field private mColorBlue:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "colorBlue"
    .end annotation
.end field

.field private mColorGreen:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "colorGreen"
    .end annotation
.end field

.field private mColorRed:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "colorRed"
    .end annotation
.end field

.field private final mFixedColorFragmentShader:Ljava/lang/String;

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 38
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorRed:F

    .line 41
    iput v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorGreen:F

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorBlue:F

    .line 47
    const-string v0, "attribute vec4 aPosition;\nvoid main() {\n  gl_Position = aPosition;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mVertexShader:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "precision mediump float;\nuniform vec4 color;\nvoid main() {\n  gl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mFixedColorFragmentShader:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private renderBox(Landroid/filterfw/geometry/Quad;)V
    .locals 10
    .param p1, "box"    # Landroid/filterfw/geometry/Quad;

    .line 110
    const/4 v0, 0x4

    .line 113
    .local v0, "FLOAT_SIZE":I
    const/4 v1, 0x4

    new-array v2, v1, [F

    iget v3, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorRed:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorGreen:F

    const/4 v5, 0x1

    aput v3, v2, v5

    iget v3, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorBlue:F

    const/4 v6, 0x2

    aput v3, v2, v6

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x3

    aput v3, v2, v7

    .line 114
    .local v2, "color":[F
    const/16 v8, 0x8

    new-array v8, v8, [F

    iget-object v9, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v9, v9, Landroid/filterfw/geometry/Point;->x:F

    aput v9, v8, v4

    iget-object v9, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v9, v9, Landroid/filterfw/geometry/Point;->y:F

    aput v9, v8, v5

    iget-object v5, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v5, v5, Landroid/filterfw/geometry/Point;->x:F

    aput v5, v8, v6

    iget-object v5, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v5, v5, Landroid/filterfw/geometry/Point;->y:F

    aput v5, v8, v7

    iget-object v5, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v5, v5, Landroid/filterfw/geometry/Point;->x:F

    aput v5, v8, v1

    iget-object v5, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v5, v5, Landroid/filterfw/geometry/Point;->y:F

    const/4 v7, 0x5

    aput v5, v8, v7

    iget-object v5, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v5, v5, Landroid/filterfw/geometry/Point;->x:F

    const/4 v7, 0x6

    aput v5, v8, v7

    iget-object v5, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v5, v5, Landroid/filterfw/geometry/Point;->y:F

    const/4 v7, 0x7

    aput v5, v8, v7

    move-object v5, v8

    .line 120
    .local v5, "vertexValues":[F
    iget-object v7, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v8, "color"

    invoke-virtual {v7, v8, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    iget-object v7, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v8, "aPosition"

    invoke-virtual {v7, v8, v5, v6}, Landroid/filterfw/core/ShaderProgram;->setAttributeValues(Ljava/lang/String;[FI)V

    .line 122
    iget-object v7, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v7, v1}, Landroid/filterfw/core/ShaderProgram;->setVertexCount(I)V

    .line 125
    iget-object v7, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v7}, Landroid/filterfw/core/ShaderProgram;->beginDrawing()V

    .line 126
    invoke-static {v3}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 127
    invoke-static {v6, v4, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 128
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 77
    return-object p2
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 82
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "attribute vec4 aPosition;\nvoid main() {\n  gl_Position = aPosition;\n}\n"

    const-string/jumbo v2, "precision mediump float;\nuniform vec4 color;\nvoid main() {\n  gl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 83
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .line 88
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/DrawRectFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 89
    .local v0, "imageFrame":Landroid/filterfw/core/Frame;
    const-string v1, "box"

    invoke-virtual {p0, v1}, Landroid/filterpacks/imageproc/DrawRectFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 92
    .local v1, "boxFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/geometry/Quad;

    .line 93
    .local v2, "box":Landroid/filterfw/geometry/Quad;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/filterfw/geometry/Quad;->scaled(F)Landroid/filterfw/geometry/Quad;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v4}, Landroid/filterfw/geometry/Quad;->translated(FF)Landroid/filterfw/geometry/Quad;

    move-result-object v2

    .line 96
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/filterfw/core/FrameManager;->duplicateFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object v3

    check-cast v3, Landroid/filterfw/core/GLFrame;

    .line 99
    .local v3, "output":Landroid/filterfw/core/GLFrame;
    invoke-virtual {v3}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 100
    invoke-direct {p0, v2}, Landroid/filterpacks/imageproc/DrawRectFilter;->renderBox(Landroid/filterfw/geometry/Quad;)V

    .line 103
    const-string v4, "image"

    invoke-virtual {p0, v4, v3}, Landroid/filterpacks/imageproc/DrawRectFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 106
    invoke-virtual {v3}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 107
    return-void
.end method

.method public setupPorts()V
    .locals 3

    .line 69
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/DrawRectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 71
    const-string v0, "box"

    const-class v1, Landroid/filterfw/geometry/Quad;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/DrawRectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 72
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/DrawRectFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method
