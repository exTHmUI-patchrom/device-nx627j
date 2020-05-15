.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;
.super Ljava/lang/Object;
.source "PageFlippingRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final COLOR_DELTA_END:F = 0.7f

.field private static final COLOR_DELTA_START:F = 0.3f

.field private static final COLOR_SCALE_END:F = 0.3f

.field private static final COLOR_SCALE_START:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "PageFlippingController"


# instance fields
.field private mCbb:Ljava/nio/ByteBuffer;

.field private final mContext:Landroid/content/Context;

.field private mDrawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

.field private final mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mIbb:Ljava/nio/ByteBuffer;

.field private mIsDrawFirstFrame:Z

.field private final mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

.field private mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

.field private mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

.field private mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

.field private mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

.field private mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

.field private mProgramStagger:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

.field private mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

.field private mSurfaceRotation:I

.field private mSurfaceStateListener:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;

.field private mTextureIdShadow:I

.field private mVbb:Ljava/nio/ByteBuffer;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p2, "viewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceRotation:I

    .line 74
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 77
    const/4 v1, 0x7

    .line 78
    .local v1, "num":I
    new-array v2, v1, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    .line 80
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 81
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    new-instance v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    invoke-direct {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;-><init>()V

    aput-object v3, v2, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->initBuffer()V

    .line 85
    return-void
.end method

.method private checkModelListTexture()Z
    .locals 8

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "n":I
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    array-length v1, v1

    .line 117
    .local v1, "num":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 118
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->isNeedDraw()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    if-gtz v3, :cond_1

    .line 126
    const-string v4, "PageFlippingController"

    const-string v5, "PageFlippingRenderer checkModelListTexture null"

    invoke-static {v4, v5}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v2

    .line 130
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 131
    const/4 v2, 0x1

    .line 133
    .local v2, "isTextureValid":Z
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    .line 134
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getPage()Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v4

    .line 136
    .local v4, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdFg()I

    move-result v5

    if-eqz v5, :cond_3

    .line 137
    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdBg()I

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 133
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    :cond_3
    :goto_2
    const/4 v2, 0x0

    .line 139
    nop

    .line 143
    .end local v4    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_4
    if-eqz v2, :cond_6

    .line 144
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getPage()Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v4

    .line 146
    .restart local v4    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdFg()I

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdBg()I

    move-result v5

    if-nez v5, :cond_6

    .line 148
    :cond_5
    const/4 v2, 0x0

    .line 152
    .end local v4    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_6
    if-nez v2, :cond_7

    .line 153
    const/4 v0, 0x0

    :goto_3
    if-gt v0, v3, :cond_7

    .line 154
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getPage()Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v4

    .line 156
    .restart local v4    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    const-string v5, "PageFlippingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PageFlippingRenderer checkModelListTexture i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; fg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdFg()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; bg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdBg()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 156
    invoke-static {v5, v6}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 162
    .end local v4    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_7
    return v2
.end method

.method private createShaderProgram()V
    .locals 5

    .line 428
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 430
    .local v0, "resource":Landroid/content/res/Resources;
    const-string/jumbo v1, "pageflipping_shader/vertex.glsl"

    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "vertexShader":Ljava/lang/String;
    const-string/jumbo v2, "pageflipping_shader/frag.glsl"

    invoke-static {v2, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "fragShader":Ljava/lang/String;
    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 435
    .local v3, "id":I
    new-instance v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    invoke-direct {v4, v3}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;-><init>(I)V

    iput-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    .line 437
    const-string/jumbo v4, "pageflipping_shader/vertex_fg_back.glsl"

    invoke-static {v4, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 439
    const-string/jumbo v4, "pageflipping_shader/frag_fg_back.glsl"

    invoke-static {v4, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 442
    new-instance v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgBackShaderProgram;

    invoke-direct {v4, v3}, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgBackShaderProgram;-><init>(I)V

    iput-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    .line 444
    const-string/jumbo v4, "pageflipping_shader/vertex_bg.glsl"

    invoke-static {v4, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 446
    const-string/jumbo v4, "pageflipping_shader/frag_bg.glsl"

    invoke-static {v4, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 449
    new-instance v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/BgShaderProgram;

    invoke-direct {v4, v3}, Lcn/nubia/server/policy/edge/effects/animation/opengl/BgShaderProgram;-><init>(I)V

    iput-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    .line 451
    const-string/jumbo v4, "pageflipping_shader/vertex_roll.glsl"

    invoke-static {v4, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 453
    const-string/jumbo v4, "pageflipping_shader/frag_roll.glsl"

    invoke-static {v4, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 455
    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 456
    new-instance v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;

    invoke-direct {v4, v3}, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;-><init>(I)V

    iput-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    .line 458
    const-string/jumbo v4, "pageflipping_shader/vertex_stagger.glsl"

    invoke-static {v4, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 460
    const-string/jumbo v4, "pageflipping_shader/frag_stagger.glsl"

    invoke-static {v4, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 463
    new-instance v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/StaggerShaderProgram;

    invoke-direct {v4, v3}, Lcn/nubia/server/policy/edge/effects/animation/opengl/StaggerShaderProgram;-><init>(I)V

    iput-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramStagger:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    .line 465
    const-string/jumbo v4, "pageflipping_shader/vertex_fg.glsl"

    invoke-static {v4, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 467
    const-string/jumbo v4, "pageflipping_shader/frag_fg.glsl"

    invoke-static {v4, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 470
    new-instance v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgShaderProgram;

    invoke-direct {v4, v3}, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgShaderProgram;-><init>(I)V

    iput-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    .line 480
    return-void
.end method

.method private createShadowTexture()V
    .locals 3

    .line 484
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 486
    .local v0, "resource":Landroid/content/res/Resources;
    const v1, 0x307005e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 487
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->addTexture(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mTextureIdShadow:I

    .line 488
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 489
    return-void
.end method

.method private drawBg(I[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;IFF)V
    .locals 15
    .param p1, "num"    # I
    .param p2, "triangle"    # [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .param p3, "textureId"    # I
    .param p4, "bgDim"    # F
    .param p5, "alpha"    # F

    move-object v0, p0

    move/from16 v1, p3

    .line 647
    const/4 v2, 0x0

    .line 651
    .local v2, "n":I
    if-nez v1, :cond_0

    .line 652
    return-void

    .line 656
    :cond_0
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 657
    .local v3, "mVertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 659
    .local v11, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    const/4 v12, 0x0

    move v13, v2

    move v2, v12

    .local v2, "i":I
    .local v13, "n":I
    :goto_0
    const/4 v4, 0x1

    move/from16 v14, p1

    if-ge v2, v14, :cond_2

    .line 660
    aget-object v5, p2, v2

    invoke-virtual {v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->IsValid()Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 661
    aget-object v4, p2, v2

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getVertex()[F

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 662
    aget-object v4, p2, v2

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getTextureCoor()[F

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 663
    add-int/lit8 v13, v13, 0x1

    .line 659
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 667
    :cond_2
    invoke-virtual {v3, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 668
    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 670
    if-gtz v13, :cond_3

    .line 671
    return-void

    .line 674
    :cond_3
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v5, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 675
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v5, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    .line 676
    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v6

    .line 675
    invoke-static {v5, v4, v12, v6, v12}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 677
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mBgDimHandle:I

    move/from16 v10, p4

    invoke-static {v4, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 678
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    move/from16 v9, p5

    invoke-static {v4, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 679
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v5, 0x3

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0xc

    move-object v9, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 681
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    move-object v10, v11

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 683
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 684
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 685
    const v4, 0x84c0

    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 686
    const/16 v4, 0xde1

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 687
    const/4 v4, 0x4

    mul-int/lit8 v5, v13, 0x3

    invoke-static {v4, v12, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 688
    return-void
.end method

.method private drawFg(I[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;IFF)V
    .locals 15
    .param p1, "num"    # I
    .param p2, "triangle"    # [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .param p3, "textureId"    # I
    .param p4, "fgDim"    # F
    .param p5, "alpha"    # F

    move-object v0, p0

    move/from16 v1, p3

    .line 546
    const/4 v2, 0x0

    .line 550
    .local v2, "n":I
    if-nez v1, :cond_0

    .line 551
    return-void

    .line 555
    :cond_0
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 556
    .local v3, "mVertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 558
    .local v11, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    const/4 v12, 0x0

    move v13, v2

    move v2, v12

    .local v2, "i":I
    .local v13, "n":I
    :goto_0
    const/4 v4, 0x1

    move/from16 v14, p1

    if-ge v2, v14, :cond_2

    .line 559
    aget-object v5, p2, v2

    invoke-virtual {v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->IsValid()Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 560
    aget-object v4, p2, v2

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getVertex()[F

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 561
    aget-object v4, p2, v2

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getTextureCoor()[F

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 562
    add-int/lit8 v13, v13, 0x1

    .line 558
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 566
    :cond_2
    invoke-virtual {v3, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 567
    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 569
    if-gtz v13, :cond_3

    .line 570
    return-void

    .line 573
    :cond_3
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v5, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 574
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v5, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    .line 575
    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v6

    .line 574
    invoke-static {v5, v4, v12, v6, v12}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 576
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mFgDimHandle:I

    move/from16 v10, p4

    invoke-static {v4, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 577
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    move/from16 v9, p5

    invoke-static {v4, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 578
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v5, 0x3

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0xc

    move-object v9, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 580
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    move-object v10, v11

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 582
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 583
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 584
    const v4, 0x84c0

    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 585
    const/16 v4, 0xde1

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 586
    const/4 v4, 0x4

    mul-int/lit8 v5, v13, 0x3

    invoke-static {v4, v12, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 587
    return-void
.end method

.method private drawFgBack(I[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;IFF)V
    .locals 18
    .param p1, "num"    # I
    .param p2, "triangle"    # [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .param p3, "textureId"    # I
    .param p4, "fgDim"    # F
    .param p5, "alpha"    # F

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 591
    const/4 v2, 0x0

    .line 598
    .local v2, "n":I
    if-nez v1, :cond_0

    .line 599
    return-void

    .line 603
    :cond_0
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 604
    .local v3, "mVertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 606
    .local v11, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    const/4 v12, 0x0

    move v13, v2

    move v2, v12

    .local v2, "i":I
    .local v13, "n":I
    :goto_0
    const/4 v4, 0x1

    move/from16 v14, p1

    if-ge v2, v14, :cond_2

    .line 607
    aget-object v5, p2, v2

    invoke-virtual {v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->IsValid()Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 608
    aget-object v4, p2, v2

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getVertex()[F

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 609
    aget-object v4, p2, v2

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getTextureCoor()[F

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 610
    add-int/lit8 v13, v13, 0x1

    .line 606
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 614
    :cond_2
    invoke-virtual {v3, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 615
    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 617
    if-gtz v13, :cond_3

    .line 618
    return-void

    .line 621
    :cond_3
    sget v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v10, v5

    .line 622
    .local v10, "sinEndAngle":F
    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-static {v10, v8, v7, v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v9

    .line 624
    .local v9, "colorScale":F
    const v5, 0x3f333333    # 0.7f

    invoke-static {v10, v8, v7, v6, v5}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v8

    .line 627
    .local v8, "colorDelta":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v5, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 628
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v5, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    .line 629
    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v6

    .line 628
    invoke-static {v5, v4, v12, v6, v12}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 630
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mFgDimHandle:I

    move/from16 v7, p4

    invoke-static {v4, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 631
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    move/from16 v6, p5

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 632
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mColorScaleHandle:I

    invoke-static {v4, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 633
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mColorDeltaHandle:I

    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 634
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v5, 0x3

    const/16 v15, 0x1406

    const/16 v16, 0x0

    const/16 v17, 0xc

    move v6, v15

    move/from16 v7, v16

    move v15, v8

    move/from16 v8, v17

    .end local v8    # "colorDelta":F
    .local v15, "colorDelta":F
    move/from16 v16, v9

    move-object v9, v3

    .end local v9    # "colorScale":F
    .local v16, "colorScale":F
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 636
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    move v4, v10

    move-object v10, v11

    .end local v10    # "sinEndAngle":F
    .local v4, "sinEndAngle":F
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 638
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v5, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 639
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v5, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 640
    const v5, 0x84c0

    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 641
    const/16 v5, 0xde1

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 642
    const/4 v5, 0x4

    mul-int/lit8 v6, v13, 0x3

    invoke-static {v5, v12, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 643
    return-void
.end method

.method private drawIcon()V
    .locals 5

    .line 795
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mDrawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mIconList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    .line 797
    .local v0, "iconList":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;
    if-nez v0, :cond_0

    .line 798
    return-void

    .line 801
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 802
    .local v3, "anIconList":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;
    if-eqz v3, :cond_1

    .line 803
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    invoke-virtual {v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->onDrawFrame(Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;)V

    .line 801
    .end local v3    # "anIconList":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 806
    :cond_2
    return-void
.end method

.method private drawRoll(I[F[FIFFF)V
    .locals 17
    .param p1, "num"    # I
    .param p2, "vertex"    # [F
    .param p3, "texCoor"    # [F
    .param p4, "textureId"    # I
    .param p5, "radius"    # F
    .param p6, "fgDim"    # F
    .param p7, "alpha"    # F

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    .line 697
    if-nez v2, :cond_0

    .line 698
    return-void

    .line 701
    :cond_0
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 702
    .local v3, "mVertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 703
    .local v11, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    move-object/from16 v12, p2

    invoke-virtual {v3, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 704
    move-object/from16 v13, p3

    invoke-virtual {v11, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 705
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 706
    invoke-virtual {v11, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 708
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mIbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v14

    .line 710
    .local v14, "mIndexBuffer":Ljava/nio/ShortBuffer;
    move v5, v4

    .local v5, "i":I
    :goto_0
    move v15, v5

    .end local v5    # "i":I
    .local v15, "i":I
    const/4 v5, 0x1

    if-ge v15, v1, :cond_1

    .line 711
    mul-int/lit8 v6, v15, 0x2

    int-to-short v6, v6

    invoke-virtual {v14, v6}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 712
    mul-int/lit8 v6, v15, 0x2

    add-int/2addr v6, v5

    int-to-short v6, v6

    invoke-virtual {v14, v6}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 713
    mul-int/lit8 v6, v15, 0x2

    add-int/lit8 v6, v6, 0x2

    int-to-short v6, v6

    invoke-virtual {v14, v6}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 714
    mul-int/lit8 v6, v15, 0x2

    add-int/lit8 v6, v6, 0x2

    int-to-short v6, v6

    invoke-virtual {v14, v6}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 715
    mul-int/lit8 v6, v15, 0x2

    add-int/2addr v6, v5

    int-to-short v5, v6

    invoke-virtual {v14, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 716
    mul-int/lit8 v5, v15, 0x2

    add-int/lit8 v5, v5, 0x3

    int-to-short v5, v5

    invoke-virtual {v14, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 710
    add-int/lit8 v5, v15, 0x1

    .end local v15    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .line 719
    .end local v5    # "i":I
    .restart local v15    # "i":I
    :cond_1
    invoke-virtual {v14, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 721
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v6, v6, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 722
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v6, v6, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    .line 723
    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v7

    .line 722
    invoke-static {v6, v5, v4, v7, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 724
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mFgDimHandle:I

    move/from16 v10, p6

    invoke-static {v4, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 725
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    move/from16 v9, p7

    invoke-static {v4, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 726
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mRadiusHandle:I

    move/from16 v8, p5

    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 727
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mColorScaleStartHandle:I

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 728
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mColorScaleEndHandle:I

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 729
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mColorDeltaStartHandle:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 730
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mColorDeltaEndHandle:I

    const v5, 0x3f333333    # 0.7f

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 732
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v5, 0x3

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v16, 0xc

    move/from16 v8, v16

    move-object v9, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 734
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    move-object v10, v11

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 736
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 737
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 738
    const v4, 0x84c0

    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 739
    const/16 v4, 0xde1

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 740
    const/4 v4, 0x4

    mul-int/lit8 v5, v1, 0x6

    const/16 v6, 0x1403

    invoke-static {v4, v5, v6, v14}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 742
    return-void
.end method

.method private drawShadow(I[F[FIF)V
    .locals 16
    .param p1, "num"    # I
    .param p2, "vertex"    # [F
    .param p3, "texCoor"    # [F
    .param p4, "textureId"    # I
    .param p5, "alpha"    # F

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    .line 751
    if-nez v2, :cond_0

    .line 752
    return-void

    .line 755
    :cond_0
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 756
    .local v3, "mVertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 757
    .local v11, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    move-object/from16 v12, p2

    invoke-virtual {v3, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 758
    move-object/from16 v13, p3

    invoke-virtual {v11, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 759
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 760
    invoke-virtual {v11, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 762
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mIbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v14

    .line 764
    .local v14, "mIndexBuffer":Ljava/nio/ShortBuffer;
    move v5, v4

    .local v5, "i":I
    :goto_0
    move v15, v5

    .end local v5    # "i":I
    .local v15, "i":I
    const/4 v10, 0x1

    if-ge v15, v1, :cond_1

    .line 765
    mul-int/lit8 v5, v15, 0x4

    int-to-short v5, v5

    invoke-virtual {v14, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 766
    mul-int/lit8 v5, v15, 0x4

    add-int/2addr v5, v10

    int-to-short v5, v5

    invoke-virtual {v14, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 767
    mul-int/lit8 v5, v15, 0x4

    add-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    invoke-virtual {v14, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 768
    mul-int/lit8 v5, v15, 0x4

    add-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    invoke-virtual {v14, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 769
    mul-int/lit8 v5, v15, 0x4

    add-int/2addr v5, v10

    int-to-short v5, v5

    invoke-virtual {v14, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 770
    mul-int/lit8 v5, v15, 0x4

    add-int/lit8 v5, v5, 0x3

    int-to-short v5, v5

    invoke-virtual {v14, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 764
    add-int/lit8 v5, v15, 0x1

    .end local v15    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .line 773
    .end local v5    # "i":I
    .restart local v15    # "i":I
    :cond_1
    invoke-virtual {v14, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 775
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v5, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 776
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v5, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    .line 777
    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v6

    .line 776
    invoke-static {v5, v10, v4, v6, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 778
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    move/from16 v9, p5

    invoke-static {v4, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 779
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v4, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v5, 0x3

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0xc

    move-object v9, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 781
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    move v4, v10

    move-object v10, v11

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 783
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v5, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 784
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v5, v5, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 785
    const v5, 0x84c0

    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 786
    const/16 v5, 0xde1

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 787
    const/16 v5, 0xbe2

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 788
    const/16 v6, 0x303

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 789
    mul-int/lit8 v4, v1, 0x6

    const/16 v6, 0x1403

    const/4 v7, 0x4

    invoke-static {v7, v4, v6, v14}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 791
    invoke-static {v5}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 792
    return-void
.end method

.method private drawStaggerPage()V
    .locals 3

    .line 810
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mDrawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    .line 812
    .local v0, "staggerPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;
    if-eqz v0, :cond_0

    .line 813
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramStagger:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->onDrawFrame(Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;)V

    .line 814
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mTextureIdShadow:I

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->onDrawFrameShadow(ILcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;)V

    .line 816
    :cond_0
    return-void
.end method

.method private initBuffer()V
    .locals 2

    .line 88
    const/16 v0, 0x558

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mVbb:Ljava/nio/ByteBuffer;

    .line 89
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mVbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 90
    const/16 v0, 0x390

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mCbb:Ljava/nio/ByteBuffer;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mCbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 92
    const/16 v0, 0x1c8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mIbb:Ljava/nio/ByteBuffer;

    .line 93
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mIbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 94
    return-void
.end method

.method private onDrawFrameEx()V
    .locals 6

    .line 240
    const/4 v0, 0x0

    .line 244
    .local v0, "n":I
    iget-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mIsDrawFirstFrame:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 245
    iput-boolean v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mIsDrawFirstFrame:Z

    .line 246
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceStateListener:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;

    invoke-interface {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;->onDrawFirstFrame()V

    .line 249
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    array-length v1, v1

    .line 251
    .local v1, "num":I
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 252
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->isNeedDraw()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 253
    add-int/lit8 v4, v4, 0x1

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawStaggerPage()V

    .line 260
    if-gt v4, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 262
    .local v2, "isDrawShadow":Z
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_4

    .line 263
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->isNeedDraw()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 264
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v3, v3, v0

    invoke-direct {p0, v3, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->onDrawFrameItem(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;Z)V

    .line 262
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 268
    :cond_4
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawIcon()V

    .line 269
    return-void
.end method

.method private onDrawFrameItem(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;Z)V
    .locals 21
    .param p1, "model"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;
    .param p2, "isDrawShadow"    # Z

    move-object/from16 v8, p0

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getPage()Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v9

    .line 285
    .local v9, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-virtual {v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdFg()I

    move-result v10

    .line 286
    .local v10, "textureIdFg":I
    invoke-virtual {v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdBg()I

    move-result v11

    .line 287
    .local v11, "textureIdBg":I
    invoke-virtual {v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getFgDim()F

    move-result v12

    .line 288
    .local v12, "fgDim":F
    invoke-virtual {v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getBgDim()F

    move-result v13

    .line 290
    .local v13, "bgDim":F
    invoke-virtual {v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getFgAlpha()F

    move-result v14

    .line 291
    .local v14, "fgAlpha":F
    invoke-virtual {v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getBgAlpha()F

    move-result v15

    .line 293
    .local v15, "bgAlpha":F
    if-nez v10, :cond_0

    if-nez v11, :cond_0

    .line 294
    return-void

    .line 297
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDrawFgBack()Z

    move-result v0

    const/4 v7, 0x1

    if-ne v7, v0, :cond_1

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTriangleFgBack()[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    move-result-object v6

    .line 299
    .local v6, "triangle":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTriangleNumFgBack()I

    move-result v16

    .line 300
    .local v16, "num":I
    move-object v0, v8

    move/from16 v1, v16

    move-object v2, v6

    move v3, v10

    move v4, v12

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawFgBack(I[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;IFF)V

    .line 303
    .end local v6    # "triangle":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .end local v16    # "num":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDrawRoll()Z

    move-result v0

    if-ne v7, v0, :cond_2

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getRollVertex()[F

    move-result-object v16

    .line 307
    .local v16, "vertex":[F
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getRollTexCoor()[F

    move-result-object v17

    .line 308
    .local v17, "texCoor":[F
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getRollNum()I

    move-result v18

    .line 309
    .local v18, "num":I
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getRollRadius()F

    move-result v19

    .line 310
    .local v19, "radius":F
    move-object v0, v8

    move/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move v4, v10

    move/from16 v5, v19

    move v6, v12

    move-object/from16 v20, v9

    move v9, v7

    move v7, v14

    .end local v9    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .local v20, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-direct/range {v0 .. v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawRoll(I[F[FIFFF)V

    .end local v16    # "vertex":[F
    .end local v17    # "texCoor":[F
    .end local v18    # "num":I
    .end local v19    # "radius":F
    goto :goto_0

    .line 313
    .end local v20    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .restart local v9    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_2
    move-object/from16 v20, v9

    move v9, v7

    .end local v9    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .restart local v20    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDrawBg()Z

    move-result v0

    if-ne v9, v0, :cond_3

    .line 314
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTriangleBg()[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    move-result-object v6

    .line 315
    .restart local v6    # "triangle":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTriangleNumBg()I

    move-result v7

    .line 316
    .local v7, "num":I
    move-object v0, v8

    move v1, v7

    move-object v2, v6

    move v3, v11

    move v4, v13

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawBg(I[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;IFF)V

    .line 319
    .end local v6    # "triangle":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .end local v7    # "num":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDrawFg()Z

    move-result v0

    if-ne v9, v0, :cond_4

    .line 320
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTriangleFg()[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    move-result-object v6

    .line 321
    .restart local v6    # "triangle":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTriangleNumFg()I

    move-result v7

    .line 322
    .restart local v7    # "num":I
    move-object v0, v8

    move v1, v7

    move-object v2, v6

    move v3, v10

    move v4, v12

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawFg(I[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;IFF)V

    .line 325
    .end local v6    # "triangle":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .end local v7    # "num":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDrawShadowPage()Z

    move-result v0

    if-ne v9, v0, :cond_5

    .line 326
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getShadowPageVertex()[F

    move-result-object v6

    .line 327
    .local v6, "vertex":[F
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getShadowPageTexCoor()[F

    move-result-object v7

    .line 328
    .local v7, "texCoor":[F
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getShadowPageNum()I

    move-result v16

    .line 329
    .local v16, "num":I
    iget v4, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mTextureIdShadow:I

    move-object v0, v8

    move/from16 v1, v16

    move-object v2, v6

    move-object v3, v7

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawShadow(I[F[FIF)V

    .line 332
    .end local v6    # "vertex":[F
    .end local v7    # "texCoor":[F
    .end local v16    # "num":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDrawShadowRoll()Z

    move-result v0

    if-ne v9, v0, :cond_6

    move/from16 v6, p2

    if-ne v9, v6, :cond_7

    .line 333
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getShadowRollVertex()[F

    move-result-object v7

    .line 334
    .local v7, "vertex":[F
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getShadowRollTexCoor()[F

    move-result-object v9

    .line 335
    .local v9, "texCoor":[F
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getShadowRollNum()I

    move-result v16

    .line 336
    .restart local v16    # "num":I
    iget v4, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mTextureIdShadow:I

    move-object v0, v8

    move/from16 v1, v16

    move-object v2, v7

    move-object v3, v9

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawShadow(I[F[FIF)V

    .end local v7    # "vertex":[F
    .end local v9    # "texCoor":[F
    .end local v16    # "num":I
    goto :goto_1

    .line 338
    :cond_6
    move/from16 v6, p2

    :cond_7
    :goto_1
    return-void
.end method

.method private onProcessIcon([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;)V
    .locals 6
    .param p1, "iconList"    # [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    .line 182
    if-nez p1, :cond_0

    .line 183
    return-void

    .line 186
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 187
    .local v2, "anIconList":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;
    if-eqz v2, :cond_1

    .line 188
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceRotation:I

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mWidth:I

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mHeight:I

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->onProcess(III)V

    .line 186
    .end local v2    # "anIconList":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_2
    return-void
.end method

.method private onProcessPageTurning(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p1, "pageList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 199
    .local v0, "n":I
    const/4 v1, 0x7

    .line 201
    .local v1, "num":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 202
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    .line 204
    .local v4, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    if-lt v3, v1, :cond_0

    .line 205
    goto :goto_1

    .line 208
    :cond_0
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->setNeedDraw(Z)V

    .line 209
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v5, v5, v3

    iget v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceRotation:I

    invoke-virtual {v5, v4, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->onProcessPageTurning(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;I)V

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    .end local v4    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_1
    :goto_1
    if-ge v3, v1, :cond_2

    .line 213
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->setNeedDraw(Z)V

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 217
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 218
    return-void
.end method

.method private onProcessStaggerPage(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V
    .locals 2
    .param p1, "staggerPage"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    .line 221
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mHeight:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->onProcess(FF)V

    .line 222
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mHeight:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->onProcessShadow(FF)V

    .line 223
    return-void
.end method

.method private resetModelList()V
    .locals 4

    .line 417
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    array-length v0, v0

    .line 419
    .local v0, "num":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 420
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->setNeedDraw(Z)V

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    :cond_0
    return-void
.end method

.method private setCamera(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 405
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 406
    .local v0, "x":F
    int-to-float v2, p2

    div-float v1, v2, v1

    .line 407
    .local v1, "y":F
    const/4 v2, 0x0

    invoke-static {v2, v2, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 408
    const/high16 v4, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x0

    move v2, v0

    move v3, v1

    move v5, v0

    move v6, v1

    invoke-static/range {v2 .. v10}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->gluLookAt(FFFFFFFFF)V

    .line 409
    neg-float v2, v0

    neg-float v4, v1

    const/high16 v6, -0x3bea0000    # -600.0f

    const/high16 v7, 0x44160000    # 600.0f

    move v3, v0

    move v5, v1

    invoke-static/range {v2 .. v7}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->glOrtho(FFFFFF)V

    .line 412
    return-void
.end method


# virtual methods
.method public createPageTexture(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 492
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->addTexture(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    .line 495
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public createPageTextures(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 516
    .local p1, "textureIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 517
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 519
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 520
    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->addTexture(Landroid/graphics/Bitmap;)I

    move-result v3

    .line 521
    .local v3, "textureId":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 523
    .end local v3    # "textureId":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public createPageTextures([I[Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "textureIds"    # [I
    .param p2, "bitmaps"    # [Landroid/graphics/Bitmap;

    .line 502
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 503
    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 504
    aget-object v2, p2, v1

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->addTexture(Landroid/graphics/Bitmap;)I

    move-result v2

    aput v2, p1, v1

    goto :goto_1

    .line 506
    :cond_0
    aput v0, p1, v1

    .line 502
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    :cond_1
    return-void
.end method

.method public deleteTexture(I)V
    .locals 2
    .param p1, "textureId"    # I

    .line 531
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 532
    .local v0, "textureIds":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 533
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->delTextures([I)V

    .line 534
    return-void
.end method

.method public deleteTextures(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 541
    .local p1, "textureIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->delTextures(Ljava/util/List;)V

    .line 542
    return-void
.end method

.method public deleteTextures([I)V
    .locals 0
    .param p1, "textureIds"    # [I

    .line 537
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->delTextures([I)V

    .line 538
    return-void
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 383
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mHeight:I

    return v0
.end method

.method public getSurfaceRotation()I
    .locals 1

    .line 105
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceRotation:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 379
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mWidth:I

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 228
    const/16 v0, 0x4100

    :try_start_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 230
    const/4 v0, 0x1

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->checkModelListTexture()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 231
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->onDrawFrameEx()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V
    .locals 3
    .param p1, "drawContent"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    .line 166
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mDrawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    .line 168
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mDrawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mIconList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    .line 169
    .local v0, "iconList":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->onProcessIcon([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;)V

    .line 171
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mDrawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v1, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mPageList:Ljava/util/List;

    .line 172
    .local v1, "pageList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;>;"
    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->onProcessPageTurning(Ljava/util/List;)V

    .line 174
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mDrawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    .line 175
    .local v2, "staggerPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;
    if-eqz v2, :cond_0

    .line 176
    invoke-direct {p0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->onProcessStaggerPage(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 342
    const-string v0, "PageFlippingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PageFlippingRenderer onSurfaceChanged width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 349
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceRotation:I

    .line 350
    invoke-virtual {p0, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->setSize(II)V

    .line 351
    invoke-direct {p0, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->setCamera(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    .line 355
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 359
    const-string v0, "PageFlippingController"

    const-string v1, "PageFlippingRenderer onSurfaceCreated"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->resetModelList()V

    .line 366
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 367
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 368
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 369
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->createShaderProgram()V

    .line 370
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->createShadowTexture()V

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mIsDrawFirstFrame:Z

    .line 372
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceStateListener:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;->onSurfaceCreated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    .line 376
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 0
    .param p1, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 101
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 102
    return-void
.end method

.method public setSize(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 387
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mHeight:I

    if-ne p2, v0, :cond_0

    .line 388
    return-void

    .line 391
    :cond_0
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mWidth:I

    .line 392
    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mHeight:I

    .line 395
    const/4 v0, 0x7

    .line 397
    .local v0, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 398
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v2, v2, v1

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mWidth:I

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mHeight:I

    invoke-virtual {v2, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->setSize(II)V

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    :cond_1
    return-void
.end method

.method public setSurfaceListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;

    .line 97
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceStateListener:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;

    .line 98
    return-void
.end method
