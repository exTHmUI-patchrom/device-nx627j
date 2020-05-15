.class public Landroid/filterpacks/videosrc/SurfaceTextureTarget;
.super Landroid/filterfw/core/Filter;
.source "SurfaceTextureTarget.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureTarget"


# instance fields
.field private final RENDERMODE_CUSTOMIZE:I

.field private final RENDERMODE_FILL_CROP:I

.field private final RENDERMODE_FIT:I

.field private final RENDERMODE_STRETCH:I

.field private mAspectRatio:F

.field private mLogVerbose:Z

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRenderMode:I

.field private mRenderModeString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "renderMode"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mScreenHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "height"
    .end annotation
.end field

.field private mScreenWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "width"
    .end annotation
.end field

.field private mSourceQuad:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceQuad"
    .end annotation
.end field

.field private mSurfaceId:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "surfaceTexture"
    .end annotation
.end field

.field private mTargetQuad:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "targetQuad"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_STRETCH:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_FIT:I

    .line 46
    const/4 v1, 0x2

    iput v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_FILL_CROP:I

    .line 47
    const/4 v2, 0x3

    iput v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_CUSTOMIZE:I

    .line 74
    new-instance v2, Landroid/filterfw/geometry/Quad;

    new-instance v3, Landroid/filterfw/geometry/Point;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v6, Landroid/filterfw/geometry/Point;

    invoke-direct {v6, v5, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v7, Landroid/filterfw/geometry/Point;

    invoke-direct {v7, v4, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v8, Landroid/filterfw/geometry/Point;

    invoke-direct {v8, v5, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    invoke-direct {v2, v3, v6, v7, v8}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSourceQuad:Landroid/filterfw/geometry/Quad;

    .line 80
    new-instance v2, Landroid/filterfw/geometry/Quad;

    new-instance v3, Landroid/filterfw/geometry/Point;

    invoke-direct {v3, v4, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v6, Landroid/filterfw/geometry/Point;

    invoke-direct {v6, v5, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v7, Landroid/filterfw/geometry/Point;

    invoke-direct {v7, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v4, Landroid/filterfw/geometry/Point;

    invoke-direct {v4, v5, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    invoke-direct {v2, v3, v6, v7, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 90
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    .line 91
    iput v5, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    .line 99
    const-string v0, "SurfaceTextureTarget"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    .line 100
    return-void
.end method

.method private updateTargetRect()V
    .locals 8

    .line 267
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "SurfaceTextureTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTargetRect. Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    if-lez v0, :cond_6

    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v0, :cond_6

    .line 269
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 270
    .local v0, "screenAspectRatio":F
    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    div-float v1, v0, v1

    .line 271
    .local v1, "relativeAspectRatio":F
    iget-boolean v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v2, :cond_1

    .line 272
    const-string v2, "SurfaceTextureTarget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UTR. screen w = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " x screen h = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " Screen AR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", frame AR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", relative AR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_2

    iget v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    .line 278
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v3, v5, v5, v2, v2}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 279
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v4}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    goto/16 :goto_3

    .line 281
    :cond_2
    iget v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 323
    :pswitch_0
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSourceQuad:Landroid/filterfw/geometry/Quad;

    invoke-virtual {v2, v3}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    goto/16 :goto_2

    .line 307
    :pswitch_1
    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    .line 309
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    mul-float v4, v7, v1

    sub-float v4, v7, v4

    invoke-virtual {v3, v5, v4}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 310
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    mul-float v4, v7, v1

    sub-float v4, v7, v4

    invoke-virtual {v3, v2, v4}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 311
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    mul-float v4, v7, v1

    add-float/2addr v4, v7

    invoke-virtual {v3, v5, v4}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 312
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    mul-float v4, v7, v1

    add-float/2addr v7, v4

    invoke-virtual {v3, v2, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    goto :goto_0

    .line 315
    :cond_3
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    div-float v4, v7, v1

    sub-float v4, v7, v4

    invoke-virtual {v3, v4, v5}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 316
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    div-float v4, v7, v1

    add-float/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 317
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    div-float v4, v7, v1

    sub-float v4, v7, v4

    invoke-virtual {v3, v4, v2}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 318
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    div-float v4, v7, v1

    add-float/2addr v7, v4

    invoke-virtual {v3, v7, v2}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 320
    :goto_0
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v6}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 321
    goto/16 :goto_2

    .line 290
    :pswitch_2
    cmpl-float v3, v1, v2

    if-lez v3, :cond_4

    .line 292
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    div-float v4, v7, v1

    sub-float v4, v7, v4

    invoke-virtual {v3, v4, v5}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 293
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    div-float v4, v7, v1

    add-float/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 294
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    div-float v4, v7, v1

    sub-float v4, v7, v4

    invoke-virtual {v3, v4, v2}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 295
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    div-float v4, v7, v1

    add-float/2addr v7, v4

    invoke-virtual {v3, v7, v2}, Landroid/filterfw/geometry/Point;->set(FF)V

    goto :goto_1

    .line 299
    :cond_4
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    mul-float v4, v7, v1

    sub-float v4, v7, v4

    invoke-virtual {v3, v5, v4}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 300
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    mul-float v4, v7, v1

    sub-float v4, v7, v4

    invoke-virtual {v3, v2, v4}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 301
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    mul-float v4, v7, v1

    add-float/2addr v4, v7

    invoke-virtual {v3, v5, v4}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 302
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    mul-float v4, v7, v1

    add-float/2addr v7, v4

    invoke-virtual {v3, v2, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 304
    :goto_1
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v6}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 305
    goto :goto_2

    .line 283
    :pswitch_3
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, v5, v5}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 284
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, v2, v5}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 285
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, v5, v2}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 286
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, v2, v2}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 287
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v4}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 288
    nop

    .line 326
    :goto_2
    iget-boolean v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v2, :cond_5

    const-string v2, "SurfaceTextureTarget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UTR. quad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_5
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    invoke-virtual {v2, v3}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    .line 330
    .end local v0    # "screenAspectRatio":F
    .end local v1    # "relativeAspectRatio":F
    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized close(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    monitor-enter p0

    .line 176
    :try_start_0
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    if-lez v0, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_0
    monitor-exit p0

    return-void

    .line 175
    .end local p1    # "context":Landroid/filterfw/core/FilterContext;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/filterpacks/videosrc/SurfaceTextureTarget;
    throw p1
.end method

.method public declared-synchronized disconnect(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    monitor-enter p0

    .line 186
    :try_start_0
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "SurfaceTextureTarget"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 188
    const-string v0, "SurfaceTextureTarget"

    const-string v1, "SurfaceTexture is already null. Nothing to disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 191
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 197
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    if-lez v0, :cond_2

    .line 198
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :cond_2
    monitor-exit p0

    return-void

    .line 185
    .end local p1    # "context":Landroid/filterfw/core/FilterContext;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/filterpacks/videosrc/SurfaceTextureTarget;
    throw p1
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 255
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "SurfaceTextureTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FPVU. Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateRenderMode()V

    .line 257
    return-void
.end method

.method public declared-synchronized open(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    iget v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/filterfw/core/GLEnvironment;->registerSurfaceTexture(Landroid/graphics/SurfaceTexture;II)I

    move-result v0

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    .line 161
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    .line 164
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not register SurfaceTexture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    const-string v0, "SurfaceTextureTarget"

    const-string v1, "SurfaceTexture is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not register SurfaceTexture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .end local p1    # "context":Landroid/filterfw/core/FilterContext;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/filterpacks/videosrc/SurfaceTextureTarget;
    throw p1
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 133
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "SurfaceTextureTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare. Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 137
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 138
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v0, v3, v3, v3}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    .line 140
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateRenderMode()V

    .line 143
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 145
    .local v0, "screenFormat":Landroid/filterfw/core/MutableFrameFormat;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 146
    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 147
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    const/16 v2, 0x65

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/GLFrame;

    iput-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 150
    return-void
.end method

.method public declared-synchronized process(Landroid/filterfw/core/FilterContext;)V
    .locals 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    monitor-enter p0

    .line 206
    :try_start_0
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    .line 207
    monitor-exit p0

    return-void

    .line 209
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 212
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    const-string v1, "frame"

    invoke-virtual {p0, v1}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 213
    .local v1, "input":Landroid/filterfw/core/Frame;
    const/4 v2, 0x0

    .line 215
    .local v2, "createdFrame":Z
    nop

    .line 216
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 217
    .local v3, "currentAspectRatio":F
    iget v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    .line 218
    iget-boolean v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v4, :cond_1

    .line 219
    const-string v4, "SurfaceTextureTarget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process. New aspect ratio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", previously: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ". Thread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1
    iput v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    .line 223
    invoke-direct {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateTargetRect()V

    .line 227
    :cond_2
    const/4 v4, 0x0

    .line 228
    .local v4, "gpuFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    .line 229
    .local v5, "target":I
    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 230
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    move-result-object v6

    move-object v4, v6

    .line 232
    const/4 v2, 0x1

    goto :goto_0

    .line 234
    :cond_3
    move-object v4, v1

    .line 238
    :goto_0
    iget v6, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    invoke-virtual {v0, v6}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 241
    iget-object v6, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v7, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v6, v4, v7}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 243
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/filterfw/core/GLEnvironment;->setSurfaceTimestamp(J)V

    .line 246
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 248
    if-eqz v2, :cond_4

    .line 249
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    :cond_4
    monitor-exit p0

    return-void

    .line 205
    .end local v0    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    .end local v1    # "input":Landroid/filterfw/core/Frame;
    .end local v2    # "createdFrame":Z
    .end local v3    # "currentAspectRatio":F
    .end local v4    # "gpuFrame":Landroid/filterfw/core/Frame;
    .end local v5    # "target":I
    .end local p1    # "context":Landroid/filterfw/core/FilterContext;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/filterpacks/videosrc/SurfaceTextureTarget;
    throw p1
.end method

.method public declared-synchronized setupPorts()V
    .locals 2

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "frame"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 106
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null SurfaceTexture passed to SurfaceTextureTarget"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/filterpacks/videosrc/SurfaceTextureTarget;
    throw v0
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 261
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 264
    :cond_0
    return-void
.end method

.method public updateRenderMode()V
    .locals 3

    .line 114
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "SurfaceTextureTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRenderMode. Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 116
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    const-string/jumbo v1, "stretch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fill_crop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    goto :goto_0

    .line 122
    :cond_3
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    const-string v1, "customize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    const/4 v0, 0x3

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    goto :goto_0

    .line 125
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown render mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_5
    :goto_0
    invoke-direct {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateTargetRect()V

    .line 129
    return-void
.end method
