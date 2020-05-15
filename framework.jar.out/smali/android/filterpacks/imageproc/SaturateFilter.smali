.class public Landroid/filterpacks/imageproc/SaturateFilter;
.super Landroid/filterfw/core/Filter;
.source "SaturateFilter.java"


# instance fields
.field private mBenProgram:Landroid/filterfw/core/Program;

.field private final mBenSaturateShader:Ljava/lang/String;

.field private mHerfProgram:Landroid/filterfw/core/Program;

.field private final mHerfSaturateShader:Ljava/lang/String;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
    .end annotation
.end field

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    .line 33
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTileSize:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTarget:I

    .line 40
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float shift;\nuniform vec3 weights;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float kv = dot(color.rgb, weights) + shift;\n  vec3 new_color = scale * color.rgb + (1.0 - scale) * kv;\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenSaturateShader:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 weights;\nuniform vec3 exponents;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float de = dot(color.rgb, weights);\n  float inv_de = 1.0 / de;\n  vec3 new_color = de * pow(color.rgb * inv_de, exponents);\n  float max_color = max(max(max(new_color.r, new_color.g), new_color.b), 1.0);\n  gl_FragColor = vec4(new_color / max_color, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfSaturateShader:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private initParameters()V
    .locals 5

    .line 141
    const v0, 0x3b808081

    .line 142
    .local v0, "shift":F
    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 144
    .local v1, "weights":[F
    iget-object v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v3, "weights"

    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    iget-object v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v3, "shift"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    iget-object v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v3, "weights"

    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SaturateFilter;->updateParameters()V

    .line 150
    return-void

    nop

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f200000    # 0.625f
        0x3e000000    # 0.125f
    .end array-data
.end method

.method private updateParameters()V
    .locals 5

    .line 154
    iget v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 157
    .local v0, "exponents":[F
    const/4 v2, 0x0

    const v3, 0x3f666666    # 0.9f

    iget v4, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    aput v3, v0, v2

    .line 158
    const/4 v2, 0x1

    const v3, 0x40066666    # 2.1f

    iget v4, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    aput v3, v0, v2

    .line 159
    const/4 v2, 0x2

    const v3, 0x402ccccd    # 2.7f

    iget v4, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    aput v3, v0, v2

    .line 161
    iget-object v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    const-string v2, "exponents"

    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    .end local v0    # "exponents":[F
    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v2, "scale"

    iget v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    :goto_0
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 107
    iget-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SaturateFilter;->updateParameters()V

    .line 110
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 82
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 86
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 88
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float shift;\nuniform vec3 weights;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float kv = dot(color.rgb, weights) + shift;\n  vec3 new_color = scale * color.rgb + (1.0 - scale) * kv;\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 89
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 90
    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    .line 92
    new-instance v1, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 weights;\nuniform vec3 exponents;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float de = dot(color.rgb, weights);\n  float inv_de = 1.0 / de;\n  vec3 new_color = de * pow(color.rgb * inv_de, exponents);\n  float max_color = max(max(max(new_color.r, new_color.g), new_color.b), 1.0);\n  gl_FragColor = vec4(new_color / max_color, color.a);\n}\n"

    invoke-direct {v1, p1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    move-object v0, v1

    .line 93
    iget v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 94
    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    .line 96
    nop

    .line 102
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTarget:I

    .line 103
    return-void

    .line 99
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

    .line 115
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/SaturateFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 116
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 119
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    iget v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTarget:I

    if-eq v2, v3, :cond_1

    .line 120
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/SaturateFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 121
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SaturateFilter;->initParameters()V

    .line 125
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 128
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 129
    iget-object v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 134
    :goto_0
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/SaturateFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 137
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 138
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .line 76
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SaturateFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 77
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SaturateFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
