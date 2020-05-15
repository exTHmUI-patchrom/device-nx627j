.class final Landroid/view/TextureLayer;
.super Ljava/lang/Object;
.source "TextureLayer.java"


# instance fields
.field private mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mRenderer:Landroid/view/ThreadedRenderer;


# direct methods
.method private constructor <init>(Landroid/view/ThreadedRenderer;J)V
    .locals 3
    .param p1, "renderer"    # Landroid/view/ThreadedRenderer;
    .param p2, "deferredUpdater"    # J

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 43
    iput-object p1, p0, Landroid/view/TextureLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 44
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/view/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 45
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either hardware renderer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " or deferredUpdater: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static adoptTextureLayer(Landroid/view/ThreadedRenderer;J)Landroid/view/TextureLayer;
    .locals 1
    .param p0, "renderer"    # Landroid/view/ThreadedRenderer;
    .param p1, "layer"    # J

    .line 143
    new-instance v0, Landroid/view/TextureLayer;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/TextureLayer;-><init>(Landroid/view/ThreadedRenderer;J)V

    return-object v0
.end method

.method private static native nPrepare(JIIZ)Z
.end method

.method private static native nSetLayerPaint(JJ)V
.end method

.method private static native nSetSurfaceTexture(JLandroid/graphics/SurfaceTexture;)V
.end method

.method private static native nSetTransform(JJ)V
.end method

.method private static native nUpdateSurfaceTexture(J)V
.end method


# virtual methods
.method public copyInto(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 93
    iget-object v0, p0, Landroid/view/TextureLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p0, p1}, Landroid/view/ThreadedRenderer;->copyLayerInto(Landroid/view/TextureLayer;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 71
    invoke-virtual {p0}, Landroid/view/TextureLayer;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/view/TextureLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->onLayerDestroyed(Landroid/view/TextureLayer;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/TextureLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 77
    iget-object v1, p0, Landroid/view/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    .line 78
    iput-object v0, p0, Landroid/view/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 79
    return-void
.end method

.method public detachSurfaceTexture()V
    .locals 3

    .line 125
    iget-object v0, p0, Landroid/view/TextureLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Landroid/view/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ThreadedRenderer;->detachSurfaceTexture(J)V

    .line 126
    return-void
.end method

.method public getDeferredLayerUpdater()J
    .locals 2

    .line 82
    iget-object v0, p0, Landroid/view/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLayerHandle()J
    .locals 2

    .line 129
    iget-object v0, p0, Landroid/view/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public isValid()Z
    .locals 4

    .line 64
    iget-object v0, p0, Landroid/view/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare(IIZ)Z
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOpaque"    # Z

    .line 108
    iget-object v0, p0, Landroid/view/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/TextureLayer;->nPrepare(JIIZ)Z

    move-result v0

    return v0
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Landroid/view/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/view/TextureLayer;->nSetLayerPaint(JJ)V

    .line 55
    iget-object v0, p0, Landroid/view/TextureLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/TextureLayer;)V

    .line 56
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 133
    iget-object v0, p0, Landroid/view/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/view/TextureLayer;->nSetSurfaceTexture(JLandroid/graphics/SurfaceTexture;)V

    .line 134
    iget-object v0, p0, Landroid/view/TextureLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/TextureLayer;)V

    .line 135
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 117
    iget-object v0, p0, Landroid/view/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/TextureLayer;->nSetTransform(JJ)V

    .line 118
    iget-object v0, p0, Landroid/view/TextureLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/TextureLayer;)V

    .line 119
    return-void
.end method

.method public updateSurfaceTexture()V
    .locals 2

    .line 138
    iget-object v0, p0, Landroid/view/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/TextureLayer;->nUpdateSurfaceTexture(J)V

    .line 139
    iget-object v0, p0, Landroid/view/TextureLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/TextureLayer;)V

    .line 140
    return-void
.end method
