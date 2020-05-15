.class public Landroid/view/ThreadedRenderer$SimpleRenderer;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleRenderer"
.end annotation


# instance fields
.field private final mFrameInfo:Landroid/view/FrameInfo;

.field private final mLightY:F

.field private final mLightZ:F

.field private mNativeProxy:J

.field private final mRootNode:Landroid/view/RenderNode;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "surface"    # Landroid/view/Surface;

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    new-instance v0, Landroid/view/FrameInfo;

    invoke-direct {v0}, Landroid/view/FrameInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mFrameInfo:Landroid/view/FrameInfo;

    .line 1013
    sget-object v0, Lcom/android/internal/R$styleable;->Lighting:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1014
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightY:F

    .line 1015
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightZ:F

    .line 1016
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 1017
    .local v3, "lightRadius":F
    nop

    .line 1018
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 1019
    .local v4, "ambientShadowAlpha":I
    nop

    .line 1020
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    mul-float/2addr v5, v2

    add-float/2addr v5, v6

    float-to-int v2, v5

    .line 1021
    .local v2, "spotShadowAlpha":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1023
    invoke-static {}, Landroid/view/ThreadedRenderer;->access$000()J

    move-result-wide v5

    .line 1024
    .local v5, "rootNodePtr":J
    invoke-static {v5, v6}, Landroid/view/RenderNode;->adopt(J)Landroid/view/RenderNode;

    move-result-object v8

    iput-object v8, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/view/RenderNode;

    .line 1025
    iget-object v8, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v8, v1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 1026
    invoke-static {v7, v5, v6}, Landroid/view/ThreadedRenderer;->access$100(ZJ)J

    move-result-wide v7

    iput-wide v7, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    .line 1027
    iget-wide v7, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {v7, v8, p2}, Landroid/view/ThreadedRenderer;->access$200(JLjava/lang/String;)V

    .line 1029
    sget-object v1, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    iget-wide v7, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-virtual {v1, p1, v7, v8}, Landroid/view/ThreadedRenderer$ProcessInitializer;->init(Landroid/content/Context;J)V

    .line 1030
    iget-wide v7, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {v7, v8}, Landroid/view/ThreadedRenderer;->access$300(J)Z

    .line 1032
    iget-wide v7, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {v7, v8, v3, v4, v2}, Landroid/view/ThreadedRenderer;->access$400(JFII)V

    .line 1034
    iput-object p3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mSurface:Landroid/view/Surface;

    .line 1035
    iget-wide v7, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {v7, v8, p3}, Landroid/view/ThreadedRenderer;->access$500(JLandroid/view/Surface;)V

    .line 1036
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .line 1073
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mSurface:Landroid/view/Surface;

    .line 1074
    iget-wide v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    iget-object v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-wide v2, v2, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->access$900(JJ)V

    .line 1075
    return-void
.end method

.method public draw(Landroid/view/ThreadedRenderer$FrameDrawingCallback;)V
    .locals 6
    .param p1, "callback"    # Landroid/view/ThreadedRenderer$FrameDrawingCallback;

    .line 1060
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 1061
    .local v0, "vsync":J
    iget-object v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/FrameInfo;->setVsync(JJ)V

    .line 1062
    iget-object v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mFrameInfo:Landroid/view/FrameInfo;

    const-wide/16 v3, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/view/FrameInfo;->addFlags(J)V

    .line 1063
    if-eqz p1, :cond_0

    .line 1064
    iget-wide v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {v2, v3, p1}, Landroid/view/ThreadedRenderer;->access$700(JLandroid/view/ThreadedRenderer$FrameDrawingCallback;)V

    .line 1066
    :cond_0
    iget-wide v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    iget-object v4, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mFrameInfo:Landroid/view/FrameInfo;

    iget-object v4, v4, Landroid/view/FrameInfo;->mFrameInfo:[J

    iget-object v5, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mFrameInfo:Landroid/view/FrameInfo;

    iget-object v5, v5, Landroid/view/FrameInfo;->mFrameInfo:[J

    array-length v5, v5

    invoke-static {v2, v3, v4, v5}, Landroid/view/ThreadedRenderer;->access$800(J[JI)I

    .line 1067
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1080
    :try_start_0
    iget-wide v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->access$1000(J)V

    .line 1081
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1084
    nop

    .line 1085
    return-void

    .line 1083
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getRootNode()Landroid/view/RenderNode;
    .locals 1

    .line 1053
    iget-object v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/view/RenderNode;

    return-object v0
.end method

.method public setLightCenter(Landroid/view/Display;II)V
    .locals 6
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "windowLeft"    # I
    .param p3, "windowTop"    # I

    .line 1044
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1045
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1046
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v2, p2

    sub-float/2addr v1, v2

    .line 1047
    .local v1, "lightX":F
    iget v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightY:F

    int-to-float v3, p3

    sub-float/2addr v2, v3

    .line 1049
    .local v2, "lightY":F
    iget-wide v3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    iget v5, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightZ:F

    invoke-static {v3, v4, v1, v2, v5}, Landroid/view/ThreadedRenderer;->access$600(JFFF)V

    .line 1050
    return-void
.end method
