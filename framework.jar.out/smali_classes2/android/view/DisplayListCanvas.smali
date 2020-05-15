.class public final Landroid/view/DisplayListCanvas;
.super Landroid/view/RecordingCanvas;
.source "DisplayListCanvas.java"


# static fields
.field private static final MAX_BITMAP_SIZE:I = 0x6400000

.field private static final POOL_LIMIT:I = 0x19

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/DisplayListCanvas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHeight:I

.field mNode:Landroid/view/RenderNode;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(Landroid/view/RenderNode;II)V
    .locals 2
    .param p1, "node"    # Landroid/view/RenderNode;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 85
    iget-wide v0, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p2, p3}, Landroid/view/DisplayListCanvas;->nCreateDisplayListCanvas(JII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RecordingCanvas;-><init>(J)V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/DisplayListCanvas;->mDensity:I

    .line 87
    return-void
.end method

.method private static native nCallDrawGLFunction(JJLjava/lang/Runnable;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nCreateDisplayListCanvas(JII)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nDrawCircle(JJJJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nDrawRenderNode(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nDrawRoundRect(JJJJJJJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nDrawTextureLayer(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nFinishRecording(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetMaximumTextureHeight()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetMaximumTextureWidth()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInsertReorderBarrier(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nResetDisplayListCanvas(JJII)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method static obtain(Landroid/view/RenderNode;II)Landroid/view/DisplayListCanvas;
    .locals 7
    .param p0, "node"    # Landroid/view/RenderNode;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 52
    if-eqz p0, :cond_1

    .line 53
    sget-object v0, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayListCanvas;

    .line 54
    .local v0, "canvas":Landroid/view/DisplayListCanvas;
    if-nez v0, :cond_0

    .line 55
    new-instance v1, Landroid/view/DisplayListCanvas;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/DisplayListCanvas;-><init>(Landroid/view/RenderNode;II)V

    move-object v0, v1

    goto :goto_0

    .line 57
    :cond_0
    iget-wide v1, v0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    iget-wide v3, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Landroid/view/DisplayListCanvas;->nResetDisplayListCanvas(JJII)V

    .line 60
    :goto_0
    iput-object p0, v0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    .line 61
    iput p1, v0, Landroid/view/DisplayListCanvas;->mWidth:I

    .line 62
    iput p2, v0, Landroid/view/DisplayListCanvas;->mHeight:I

    .line 63
    return-object v0

    .line 52
    .end local v0    # "canvas":Landroid/view/DisplayListCanvas;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "node cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public callDrawGLFunction2(J)V
    .locals 3
    .param p1, "drawGLFunction"    # J

    .line 159
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Landroid/view/DisplayListCanvas;->nCallDrawGLFunction(JJLjava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .line 211
    .local p1, "cx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "cy":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "radius":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v4

    .line 212
    invoke-virtual {p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v6

    invoke-virtual {p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v8

    .line 211
    invoke-static/range {v0 .. v9}, Landroid/view/DisplayListCanvas;->nDrawCircle(JJJJJ)V

    .line 213
    return-void
.end method

.method public drawGLFunctor2(JLjava/lang/Runnable;)V
    .locals 2
    .param p1, "drawGLFunctor"    # J
    .param p3, "releasedCallback"    # Ljava/lang/Runnable;

    .line 175
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/DisplayListCanvas;->nCallDrawGLFunction(JJLjava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method public drawRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "renderNode"    # Landroid/view/RenderNode;

    .line 189
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->nDrawRenderNode(JJ)V

    .line 190
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .line 218
    .local p1, "left":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "top":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "right":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "bottom":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p5, "rx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p6, "ry":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p7, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v5

    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v7

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v9

    .line 220
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v11

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v13

    .line 221
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v15

    .line 218
    invoke-static/range {v1 .. v16}, Landroid/view/DisplayListCanvas;->nDrawRoundRect(JJJJJJJJ)V

    .line 222
    return-void
.end method

.method drawTextureLayer(Landroid/view/TextureLayer;)V
    .locals 4
    .param p1, "layer"    # Landroid/view/TextureLayer;

    .line 202
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/view/TextureLayer;->getLayerHandle()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->nDrawTextureLayer(JJ)V

    .line 203
    return-void
.end method

.method finishRecording()J
    .locals 2

    .line 72
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/view/DisplayListCanvas;->nFinishRecording(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 121
    iget v0, p0, Landroid/view/DisplayListCanvas;->mHeight:I

    return v0
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    .line 131
    invoke-static {}, Landroid/view/DisplayListCanvas;->nGetMaximumTextureHeight()I

    move-result v0

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    .line 126
    invoke-static {}, Landroid/view/DisplayListCanvas;->nGetMaximumTextureWidth()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 116
    iget v0, p0, Landroid/view/DisplayListCanvas;->mWidth:I

    return v0
.end method

.method public insertInorderBarrier()V
    .locals 3

    .line 145
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/DisplayListCanvas;->nInsertReorderBarrier(JZ)V

    .line 146
    return-void
.end method

.method public insertReorderBarrier()V
    .locals 3

    .line 140
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/view/DisplayListCanvas;->nInsertReorderBarrier(JZ)V

    .line 141
    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public isRecordingFor(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method recycle()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    .line 68
    sget-object v0, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDensity(I)V
    .locals 0
    .param p1, "density"    # I

    .line 97
    return-void
.end method

.method protected throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 226
    invoke-super {p0, p1}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 228
    .local v0, "bitmapSize":I
    const/high16 v1, 0x6400000

    if-gt v0, v1, :cond_0

    .line 232
    return-void

    .line 229
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canvas: trying to draw too large("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "bytes) bitmap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
