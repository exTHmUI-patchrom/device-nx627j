.class public Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;
.super Ljava/lang/Object;
.source "SurfaceTextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EGL_COLOR_BITLENGTH:I = 0x8

.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field private static final FLIP_TYPE_BOTH:I = 0x3

.field private static final FLIP_TYPE_HORIZONTAL:I = 0x1

.field private static final FLIP_TYPE_NONE:I = 0x0

.field private static final FLIP_TYPE_VERTICAL:I = 0x2

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final GLES_VERSION:I = 0x2

.field private static final GL_MATRIX_SIZE:I = 0x10

.field private static final LEGACY_PERF_PROPERTY:Ljava/lang/String; = "persist.camera.legacy_perf"

.field private static final PBUFFER_PIXEL_BYTES:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_POS_SIZE:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

.field private static final VERTEX_UV_SIZE:I = 0x2

.field private static final sBothFlipTriangleVertices:[F

.field private static final sHorizontalFlipTriangleVertices:[F

.field private static final sRegularTriangleVertices:[F

.field private static final sVerticalFlipTriangleVertices:[F


# instance fields
.field private mBothFlipTriangleVertices:Ljava/nio/FloatBuffer;

.field private mConfigs:Landroid/opengl/EGLConfig;

.field private mConversionSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private final mFacing:I

.field private mHorizontalFlipTriangleVertices:Ljava/nio/FloatBuffer;

.field private mMVPMatrix:[F

.field private mPBufferPixels:Ljava/nio/ByteBuffer;

.field private mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

.field private mProgram:I

.field private mRegularTriangleVertices:Ljava/nio/FloatBuffer;

.field private mSTMatrix:[F

.field private volatile mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mTextureID:I

.field private mVerticalFlipTriangleVertices:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-class v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    .line 91
    const/16 v0, 0x14

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sHorizontalFlipTriangleVertices:[F

    .line 100
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sVerticalFlipTriangleVertices:[F

    .line 109
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sBothFlipTriangleVertices:[F

    .line 118
    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sRegularTriangleVertices:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "facing"    # I

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 67
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    .line 164
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mMVPMatrix:[F

    .line 165
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSTMatrix:[F

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mTextureID:I

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    .line 178
    iput p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mFacing:I

    .line 180
    sget-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sRegularTriangleVertices:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 181
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mRegularTriangleVertices:Ljava/nio/FloatBuffer;

    .line 182
    iget-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mRegularTriangleVertices:Ljava/nio/FloatBuffer;

    sget-object v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sRegularTriangleVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 184
    sget-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sHorizontalFlipTriangleVertices:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 186
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mHorizontalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    .line 187
    iget-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mHorizontalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    sget-object v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sHorizontalFlipTriangleVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 189
    sget-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sVerticalFlipTriangleVertices:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 191
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mVerticalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    .line 192
    iget-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mVerticalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    sget-object v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sVerticalFlipTriangleVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 194
    sget-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sBothFlipTriangleVertices:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 196
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mBothFlipTriangleVertices:Ljava/nio/FloatBuffer;

    .line 197
    iget-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mBothFlipTriangleVertices:Ljava/nio/FloatBuffer;

    sget-object v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sBothFlipTriangleVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    iget-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSTMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 200
    return-void
.end method

.method private addGlTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .line 646
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    if-nez v0, :cond_0

    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/legacy/PerfMeasurement;->addTimestamp(J)V

    .line 648
    return-void
.end method

.method private beginGlTiming()V
    .locals 1

    .line 641
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    if-nez v0, :cond_0

    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->startTimer()V

    .line 643
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 562
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    move v1, v0

    .local v1, "error":I
    const/16 v2, 0x3000

    if-ne v0, v2, :cond_0

    .line 565
    return-void

    .line 563
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkGlDrawError(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, "surfaceAbandoned":Z
    const/4 v1, 0x0

    .line 580
    .local v1, "glError":Z
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    move v3, v2

    .local v3, "error":I
    if-eqz v2, :cond_1

    .line 581
    const/16 v2, 0x505

    if-ne v3, v2, :cond_0

    .line 582
    const/4 v0, 0x1

    goto :goto_0

    .line 584
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 587
    :cond_1
    if-nez v1, :cond_3

    .line 591
    if-nez v0, :cond_2

    .line 594
    return-void

    .line 592
    :cond_2
    new-instance v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;

    invoke-direct {v2}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;-><init>()V

    throw v2

    .line 588
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": GLES20 error: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 569
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    move v1, v0

    .local v1, "error":I
    if-nez v0, :cond_0

    .line 573
    return-void

    .line 570
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": GLES20 error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearState()V
    .locals 5

    .line 404
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 405
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 407
    .local v1, "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :try_start_0
    iget-object v2, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->disconnectSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    goto :goto_1

    .line 408
    :catch_0
    move-exception v2

    .line 409
    .local v2, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    sget-object v3, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v4, "Surface abandoned, skipping..."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .end local v1    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    .end local v2    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    :goto_1
    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPBufferPixels:Ljava/nio/ByteBuffer;

    .line 414
    iget-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 417
    :cond_1
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 418
    return-void
.end method

.method private configureEGLContext()V
    .locals 12

    .line 421
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 422
    iget-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_2

    .line 425
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 426
    .local v1, "version":[I
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v1, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    const/16 v2, 0xd

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    .line 439
    .local v5, "attribList":[I
    new-array v2, v3, [Landroid/opengl/EGLConfig;

    .line 440
    .local v2, "configs":[Landroid/opengl/EGLConfig;
    new-array v3, v3, [I

    .line 441
    .local v3, "numConfigs":[I
    iget-object v4, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    array-length v9, v2

    const/4 v11, 0x0

    move-object v7, v2

    move-object v10, v3

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 443
    const-string v4, "eglCreateContext RGB888+recordable ES2"

    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkEglError(Ljava/lang/String;)V

    .line 444
    aget-object v4, v2, v0

    iput-object v4, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConfigs:Landroid/opengl/EGLConfig;

    .line 445
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    .line 449
    .local v4, "attrib_list":[I
    iget-object v6, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v7, v2, v0

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v6, v7, v8, v4, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    .line 451
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkEglError(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v6, :cond_0

    .line 455
    return-void

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "No EGLContext could be made"

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    .end local v2    # "configs":[Landroid/opengl/EGLConfig;
    .end local v3    # "numConfigs":[I
    .end local v4    # "attrib_list":[I
    .end local v5    # "attribList":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    .end local v1    # "version":[I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3033
        0x5
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private configureEGLOutputSurfaces(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;",
            ">;)V"
        }
    .end annotation

    .line 458
    .local p1, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 464
    .local v0, "surfaceAttribs":[I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 465
    .local v3, "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    iget-object v4, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v5, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConfigs:Landroid/opengl/EGLConfig;

    iget-object v6, v3, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    invoke-static {v4, v5, v6, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 467
    const-string v4, "eglCreateWindowSurface"

    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkEglError(Ljava/lang/String;)V

    .line 468
    .end local v3    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    goto :goto_0

    .line 469
    :cond_0
    return-void

    .line 459
    .end local v0    # "surfaceAttribs":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No Surfaces were provided to draw to"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private configureEGLPbufferSurfaces(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;",
            ">;)V"
        }
    .end annotation

    .line 472
    .local p1, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "maxLength":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 478
    .local v2, "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    iget v3, v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    iget v4, v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    mul-int/2addr v3, v4

    .line 480
    .local v3, "length":I
    if-le v3, v0, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    move v0, v4

    .line 481
    const/4 v4, 0x5

    new-array v4, v4, [I

    const/16 v5, 0x3057

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    iget v7, v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    aput v7, v4, v5

    const/4 v5, 0x2

    const/16 v7, 0x3056

    aput v7, v4, v5

    const/4 v5, 0x3

    iget v7, v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    aput v7, v4, v5

    const/16 v5, 0x3038

    const/4 v7, 0x4

    aput v5, v4, v7

    .line 486
    .local v4, "surfaceAttribs":[I
    iget-object v5, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v7, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConfigs:Landroid/opengl/EGLConfig;

    .line 487
    invoke-static {v5, v7, v4, v6}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v5

    iput-object v5, v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 488
    const-string v5, "eglCreatePbufferSurface"

    invoke-direct {p0, v5}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkEglError(Ljava/lang/String;)V

    .line 489
    .end local v2    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    .end local v3    # "length":I
    .end local v4    # "surfaceAttribs":[I
    goto :goto_0

    .line 490
    :cond_1
    mul-int/lit8 v1, v0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 491
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPBufferPixels:Ljava/nio/ByteBuffer;

    .line 492
    return-void

    .line 473
    .end local v0    # "maxLength":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No Surfaces were provided to draw to"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .line 220
    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 221
    .local v0, "vertexShader":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 222
    return v1

    .line 224
    :cond_0
    const v2, 0x8b30

    invoke-direct {p0, v2, p2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 225
    .local v2, "pixelShader":I
    if-nez v2, :cond_1

    .line 226
    return v1

    .line 229
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 230
    .local v3, "program":I
    const-string v4, "glCreateProgram"

    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 231
    if-nez v3, :cond_2

    .line 232
    sget-object v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v5, "Could not create program"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_2
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 235
    const-string v4, "glAttachShader"

    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 236
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 237
    const-string v4, "glAttachShader"

    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 238
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 239
    const/4 v4, 0x1

    new-array v5, v4, [I

    .line 240
    .local v5, "linkStatus":[I
    const v6, 0x8b82

    invoke-static {v3, v6, v5, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 241
    aget v1, v5, v1

    if-ne v1, v4, :cond_3

    .line 248
    return v3

    .line 242
    :cond_3
    sget-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v4, "Could not link program: "

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 246
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Could not link program"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private drawFrame(Landroid/graphics/SurfaceTexture;III)V
    .locals 23
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flipType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 253
    const-string/jumbo v0, "onDrawFrame start"

    invoke-direct {v1, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 254
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSTMatrix:[F

    move-object/from16 v4, p1

    invoke-virtual {v4, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 256
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mMVPMatrix:[F

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 261
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getTextureSize(Landroid/graphics/SurfaceTexture;)Landroid/util/Size;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .local v0, "dimens":Landroid/util/Size;
    nop

    .line 264
    nop

    .line 266
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 267
    .local v6, "texWidth":F
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 269
    .local v7, "texHeight":F
    const/4 v8, 0x0

    cmpg-float v9, v6, v8

    if-lez v9, :cond_0

    cmpg-float v9, v7, v8

    if-lez v9, :cond_0

    .line 274
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 275
    .local v9, "intermediate":Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/RectF;

    int-to-float v11, v2

    int-to-float v12, v3

    invoke-direct {v10, v8, v8, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v8, v10

    .line 276
    .local v8, "output":Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 277
    .local v10, "boxingXform":Landroid/graphics/Matrix;
    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v8, v9, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 278
    invoke-virtual {v10, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 282
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float/2addr v11, v12

    .line 283
    .local v11, "scaleX":F
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float/2addr v12, v13

    .line 289
    .local v12, "scaleY":F
    iget-object v13, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mMVPMatrix:[F

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v5, v11, v12, v14}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 298
    invoke-static {v5, v5, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 305
    iget v13, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    invoke-static {v13}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 306
    const-string v13, "glUseProgram"

    invoke-direct {v1, v13}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 308
    const v13, 0x84c0

    invoke-static {v13}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 309
    const v13, 0x8d65

    iget v14, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mTextureID:I

    invoke-static {v13, v14}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 312
    packed-switch p4, :pswitch_data_0

    .line 323
    iget-object v14, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mRegularTriangleVertices:Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 320
    :pswitch_0
    iget-object v14, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mBothFlipTriangleVertices:Ljava/nio/FloatBuffer;

    .line 321
    .local v14, "triangleVertices":Ljava/nio/FloatBuffer;
    goto :goto_0

    .line 317
    .end local v14    # "triangleVertices":Ljava/nio/FloatBuffer;
    :pswitch_1
    iget-object v14, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mVerticalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    .line 318
    .restart local v14    # "triangleVertices":Ljava/nio/FloatBuffer;
    goto :goto_0

    .line 314
    .end local v14    # "triangleVertices":Ljava/nio/FloatBuffer;
    :pswitch_2
    iget-object v14, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mHorizontalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    .line 315
    .restart local v14    # "triangleVertices":Ljava/nio/FloatBuffer;
    nop

    .line 323
    :goto_0
    nop

    .line 327
    invoke-virtual {v14, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 328
    iget v15, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maPositionHandle:I

    const/16 v16, 0x3

    const/16 v17, 0x1406

    const/16 v18, 0x0

    const/16 v19, 0x14

    move-object/from16 v20, v14

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 330
    const-string v15, "glVertexAttribPointer maPosition"

    invoke-direct {v1, v15}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 331
    iget v15, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maPositionHandle:I

    invoke-static {v15}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 332
    const-string v15, "glEnableVertexAttribArray maPositionHandle"

    invoke-direct {v1, v15}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 334
    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 335
    iget v15, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maTextureHandle:I

    const/16 v16, 0x2

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 337
    const-string v15, "glVertexAttribPointer maTextureHandle"

    invoke-direct {v1, v15}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 338
    iget v15, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maTextureHandle:I

    invoke-static {v15}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 339
    const-string v15, "glEnableVertexAttribArray maTextureHandle"

    invoke-direct {v1, v15}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 341
    iget v15, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muMVPMatrixHandle:I

    move-object/from16 v21, v0

    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mMVPMatrix:[F

    .line 341
    .end local v0    # "dimens":Landroid/util/Size;
    .local v21, "dimens":Landroid/util/Size;
    const/4 v2, 0x1

    invoke-static {v15, v2, v5, v0, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 343
    iget v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muSTMatrixHandle:I

    iget-object v15, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSTMatrix:[F

    invoke-static {v0, v2, v5, v15, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 346
    const/4 v0, 0x5

    const/4 v2, 0x4

    invoke-static {v0, v5, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 347
    const-string v0, "glDrawArrays"

    invoke-direct {v1, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlDrawError(Ljava/lang/String;)V

    .line 348
    return-void

    .line 270
    .end local v8    # "output":Landroid/graphics/RectF;
    .end local v9    # "intermediate":Landroid/graphics/RectF;
    .end local v10    # "boxingXform":Landroid/graphics/Matrix;
    .end local v11    # "scaleX":F
    .end local v12    # "scaleY":F
    .end local v14    # "triangleVertices":Ljava/nio/FloatBuffer;
    .end local v21    # "dimens":Landroid/util/Size;
    .restart local v0    # "dimens":Landroid/util/Size;
    :cond_0
    move-object/from16 v21, v0

    .line 270
    .end local v0    # "dimens":Landroid/util/Size;
    .restart local v21    # "dimens":Landroid/util/Size;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Illegal intermediate texture with dimension of 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    .end local v6    # "texWidth":F
    .end local v7    # "texHeight":F
    .end local v21    # "dimens":Landroid/util/Size;
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 264
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "Surface abandoned, skipping drawFrame..."

    invoke-direct {v2, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpGlTiming()V
    .locals 11

    .line 601
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    if-nez v0, :cond_0

    return-void

    .line 603
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "CameraLegacy"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 604
    .local v0, "legacyStorageDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 605
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 606
    sget-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create directory for data dump"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void

    .line 611
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    .local v1, "path":Ljava/lang/StringBuilder;
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string v2, "durations_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 616
    .local v2, "now":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 617
    invoke-virtual {v2}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string v3, "_S"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget-object v3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 620
    .local v4, "surface":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    const-string v8, "_%d_%d"

    new-array v7, v7, [Ljava/lang/Object;

    iget v9, v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    iget v6, v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .end local v4    # "surface":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    goto :goto_0

    .line 622
    :cond_2
    const-string v3, "_C"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    iget-object v3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 624
    .restart local v4    # "surface":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    const-string v8, "_%d_%d"

    new-array v9, v7, [Ljava/lang/Object;

    iget v10, v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    iget v10, v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .end local v4    # "surface":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    goto :goto_1

    .line 626
    :cond_3
    const-string v3, ".txt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    iget-object v3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/legacy/PerfMeasurement;->dumpPerformanceData(Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method private endGlTiming()V
    .locals 1

    .line 651
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    if-nez v0, :cond_0

    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->stopTimer()V

    .line 653
    return-void
.end method

.method private getTextureId()I
    .locals 1

    .line 400
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mTextureID:I

    return v0
.end method

.method private initializeGLState()V
    .locals 4

    .line 354
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    .line 355
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    if-eqz v0, :cond_4

    .line 358
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maPositionHandle:I

    .line 359
    const-string v0, "glGetAttribLocation aPosition"

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 360
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maPositionHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 363
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maTextureHandle:I

    .line 364
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 365
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maTextureHandle:I

    if-eq v0, v1, :cond_2

    .line 369
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    const-string/jumbo v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muMVPMatrixHandle:I

    .line 370
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 371
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muMVPMatrixHandle:I

    if-eq v0, v1, :cond_1

    .line 375
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    const-string/jumbo v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muSTMatrixHandle:I

    .line 376
    const-string v0, "glGetUniformLocation uSTMatrix"

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 377
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muSTMatrixHandle:I

    if-eq v0, v1, :cond_0

    .line 381
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 382
    .local v1, "textures":[I
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 384
    aget v0, v1, v2

    iput v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mTextureID:I

    .line 385
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mTextureID:I

    const v2, 0x8d65

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 386
    const-string v0, "glBindTexture mTextureID"

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 388
    const/16 v0, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 390
    const/16 v0, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 392
    const/16 v0, 0x2802

    const v3, 0x812f

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 394
    const/16 v0, 0x2803

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 396
    const-string v0, "glTexParameter"

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 397
    return-void

    .line 378
    .end local v1    # "textures":[I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .line 203
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 204
    .local v0, "shader":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 205
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 206
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 207
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 208
    .local v1, "compiled":[I
    const/4 v2, 0x0

    const v3, 0x8b81

    invoke-static {v0, v3, v1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 209
    aget v2, v1, v2

    if-eqz v2, :cond_0

    .line 216
    return v0

    .line 210
    :cond_0
    sget-object v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 214
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private makeCurrent(Landroid/opengl/EGLSurface;)V
    .locals 2
    .param p1, "surface"    # Landroid/opengl/EGLSurface;

    .line 525
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 526
    const-string/jumbo v0, "makeCurrent"

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkEglError(Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method private releaseEGLContext()V
    .locals 4

    .line 495
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_4

    .line 496
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 498
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->dumpGlTiming()V

    .line 499
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 501
    .local v1, "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    iget-object v2, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_0

    .line 502
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 504
    .end local v1    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :cond_0
    goto :goto_0

    .line 506
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 507
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 508
    .restart local v1    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    iget-object v2, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_2

    .line 509
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 511
    .end local v1    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :cond_2
    goto :goto_1

    .line 513
    :cond_3
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 514
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 515
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 518
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConfigs:Landroid/opengl/EGLConfig;

    .line 519
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 520
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    .line 521
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->clearState()V

    .line 522
    return-void
.end method

.method private setupGlTiming()V
    .locals 2

    .line 631
    invoke-static {}, Landroid/hardware/camera2/legacy/PerfMeasurement;->isGlTimingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v1, "Enabling GL performance measurement"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-instance v0, Landroid/hardware/camera2/legacy/PerfMeasurement;

    invoke-direct {v0}, Landroid/hardware/camera2/legacy/PerfMeasurement;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    goto :goto_0

    .line 635
    :cond_0
    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v1, "GL performance measurement not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    .line 638
    :goto_0
    return-void
.end method

.method private swapBuffers(Landroid/opengl/EGLSurface;)Z
    .locals 5
    .param p1, "surface"    # Landroid/opengl/EGLSurface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    .line 533
    .local v0, "result":Z
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    .line 534
    .local v1, "error":I
    const/16 v2, 0x3000

    if-eq v1, v2, :cond_1

    const/16 v2, 0x300b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x300d

    if-eq v1, v2, :cond_0

    .line 555
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "swapBuffers: EGL error: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 552
    :cond_0
    new-instance v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;

    invoke-direct {v2}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;-><init>()V

    throw v2

    .line 536
    :cond_1
    return v0
.end method


# virtual methods
.method public cleanupEGLContext()V
    .locals 0

    .line 840
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->releaseEGLContext()V

    .line 841
    return-void
.end method

.method public configureSurfaces(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            ">;>;)V"
        }
    .end annotation

    .line 671
    .local p1, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->releaseEGLContext()V

    .line 673
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 678
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 679
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/Surface;

    .line 680
    .local v2, "s":Landroid/view/Surface;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/util/Size;

    .line 683
    .local v3, "surfaceSize":Landroid/util/Size;
    :try_start_0
    new-instance v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;-><init>(Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$1;)V

    .line 684
    .local v4, "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    iput-object v2, v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    .line 685
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    .line 686
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    .line 687
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->needsConversion(Landroid/view/Surface;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 688
    iget-object v5, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->connectSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 693
    :cond_1
    iget-object v5, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    .end local v4    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :goto_1
    goto :goto_2

    .line 695
    :catch_0
    move-exception v4

    .line 696
    .local v4, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    sget-object v5, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v6, "Surface abandoned, skipping configuration... "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    .end local v2    # "s":Landroid/view/Surface;
    .end local v3    # "surfaceSize":Landroid/util/Size;
    .end local v4    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    :goto_2
    goto :goto_0

    .line 701
    :cond_2
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->configureEGLContext()V

    .line 704
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 705
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->configureEGLOutputSurfaces(Ljava/util/Collection;)V

    .line 709
    :cond_3
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 710
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->configureEGLPbufferSurfaces(Ljava/util/Collection;)V

    .line 712
    :cond_4
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    iget-object v0, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    goto :goto_3

    .line 713
    :cond_5
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    iget-object v0, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 712
    :goto_3
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 714
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->initializeGLState()V

    .line 715
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->getTextureId()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 718
    const-string/jumbo v0, "persist.camera.legacy_perf"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 719
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->setupGlTiming()V

    .line 721
    :cond_6
    return-void

    .line 674
    :cond_7
    :goto_4
    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v1, "No output surfaces configured for GL drawing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void
.end method

.method public drawIntoSurfaces(Landroid/hardware/camera2/legacy/CaptureCollector;)V
    .locals 19
    .param p1, "targetCollector"    # Landroid/hardware/camera2/legacy/CaptureCollector;

    move-object/from16 v1, p0

    .line 737
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    .line 738
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    .line 742
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/legacy/CaptureCollector;->hasPendingPreviewCaptures()Z

    move-result v2

    .line 743
    .local v2, "doTiming":Z
    const-string v0, "before updateTexImage"

    invoke-direct {v1, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 745
    if-eqz v2, :cond_2

    .line 746
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->beginGlTiming()V

    .line 749
    :cond_2
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 751
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v3

    .line 753
    .local v3, "timestamp":J
    move-object/from16 v5, p1

    invoke-virtual {v5, v3, v4}, Landroid/hardware/camera2/legacy/CaptureCollector;->previewCaptured(J)Landroid/util/Pair;

    move-result-object v6

    .line 756
    .local v6, "captureHolder":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/RequestHolder;Ljava/lang/Long;>;"
    if-nez v6, :cond_4

    .line 760
    if-eqz v2, :cond_3

    .line 761
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->endGlTiming()V

    .line 763
    :cond_3
    return-void

    .line 766
    :cond_4
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/hardware/camera2/legacy/RequestHolder;

    .line 768
    .local v7, "request":Landroid/hardware/camera2/legacy/RequestHolder;
    invoke-virtual {v7}, Landroid/hardware/camera2/legacy/RequestHolder;->getHolderTargets()Ljava/util/Collection;

    move-result-object v8

    .line 769
    .local v8, "targetSurfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    if-eqz v2, :cond_5

    .line 770
    invoke-direct {v1, v3, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->addGlTimestamp(J)V

    .line 773
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 775
    .local v9, "targetSurfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    invoke-static {v8}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceIds(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    .line 779
    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 777
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    sget-object v10, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v11, "Surface abandoned, dropping frame. "

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    invoke-virtual {v7}, Landroid/hardware/camera2/legacy/RequestHolder;->setOutputAbandoned()V

    .line 781
    .end local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    :goto_0
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 782
    .local v11, "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    iget-object v0, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    invoke-static {v0, v9}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 784
    :try_start_1
    iget-object v0, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    iget v12, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    iget v13, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    invoke-static {v0, v12, v13}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceDimens(Landroid/view/Surface;II)V

    .line 786
    iget-object v0, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 788
    iget-object v0, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    iget-object v12, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v0, v12, v13}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setNextTimestamp(Landroid/view/Surface;J)V

    .line 789
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v12, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    iget v13, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    .line 790
    iget v14, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mFacing:I

    if-nez v14, :cond_6

    .line 791
    const/4 v14, 0x1

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    .line 789
    :goto_2
    invoke-direct {v1, v0, v12, v13, v14}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->drawFrame(Landroid/graphics/SurfaceTexture;III)V

    .line 792
    iget-object v0, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->swapBuffers(Landroid/opengl/EGLSurface;)Z
    :try_end_1
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 796
    goto :goto_3

    .line 793
    :catch_1
    move-exception v0

    .line 794
    .restart local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    sget-object v12, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v13, "Surface abandoned, dropping frame. "

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    invoke-virtual {v7}, Landroid/hardware/camera2/legacy/RequestHolder;->setOutputAbandoned()V

    .line 798
    .end local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v11    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :cond_7
    :goto_3
    goto :goto_1

    .line 799
    :cond_8
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 800
    .restart local v11    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    iget-object v0, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    invoke-static {v0, v9}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 801
    iget-object v0, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 804
    :try_start_2
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v12, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    iget v13, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    .line 805
    iget v14, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mFacing:I

    if-nez v14, :cond_9

    .line 806
    const/4 v14, 0x3

    goto :goto_5

    :cond_9
    const/4 v14, 0x2

    .line 804
    :goto_5
    invoke-direct {v1, v0, v12, v13, v14}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->drawFrame(Landroid/graphics/SurfaceTexture;III)V
    :try_end_2
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 810
    nop

    .line 811
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPBufferPixels:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 812
    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    iget v15, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    const/16 v16, 0x1908

    const/16 v17, 0x1401

    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPBufferPixels:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    invoke-static/range {v12 .. v18}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 814
    const-string v0, "glReadPixels"

    invoke-direct {v1, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 817
    :try_start_3
    iget-object v0, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I

    move-result v0

    .line 818
    .local v0, "format":I
    iget-object v12, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    iget v13, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    iget v14, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    invoke-static {v12, v13, v14}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceDimens(Landroid/view/Surface;II)V

    .line 820
    iget-object v12, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    iget-object v13, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setNextTimestamp(Landroid/view/Surface;J)V

    .line 821
    iget-object v12, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    iget-object v13, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPBufferPixels:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    iget v14, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    iget v15, v11, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    invoke-static {v12, v13, v14, v15, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->produceFrame(Landroid/view/Surface;[BIII)V
    :try_end_3
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 826
    .end local v0    # "format":I
    goto :goto_6

    .line 823
    :catch_2
    move-exception v0

    .line 824
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    sget-object v12, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v13, "Surface abandoned, dropping frame. "

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 825
    invoke-virtual {v7}, Landroid/hardware/camera2/legacy/RequestHolder;->setOutputAbandoned()V

    .end local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v11    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    goto :goto_6

    .line 807
    .restart local v11    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :catch_3
    move-exception v0

    .line 809
    .restart local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v12, "Surface abandoned, skipping drawFrame..."

    invoke-direct {v10, v12, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 828
    .end local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v11    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :cond_a
    :goto_6
    goto/16 :goto_4

    .line 829
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/legacy/CaptureCollector;->previewProduced()Landroid/hardware/camera2/legacy/RequestHolder;

    .line 831
    if-eqz v2, :cond_c

    .line 832
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->endGlTiming()V

    .line 834
    :cond_c
    return-void

    .line 739
    .end local v2    # "doTiming":Z
    .end local v3    # "timestamp":J
    .end local v6    # "captureHolder":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/RequestHolder;Ljava/lang/Long;>;"
    .end local v7    # "request":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local v8    # "targetSurfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .end local v9    # "targetSurfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_d
    :goto_7
    move-object/from16 v5, p1

    return-void
.end method

.method public flush()V
    .locals 2

    .line 848
    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v1, "Flush not yet implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return-void
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 662
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method
