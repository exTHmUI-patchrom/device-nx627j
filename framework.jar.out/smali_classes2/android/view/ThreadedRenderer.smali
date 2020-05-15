.class public final Landroid/view/ThreadedRenderer;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ThreadedRenderer$ProcessInitializer;,
        Landroid/view/ThreadedRenderer$FrameCompleteCallback;,
        Landroid/view/ThreadedRenderer$FrameDrawingCallback;,
        Landroid/view/ThreadedRenderer$SimpleRenderer;,
        Landroid/view/ThreadedRenderer$DrawCallbacks;,
        Landroid/view/ThreadedRenderer$DumpFlags;
    }
.end annotation


# static fields
.field private static final CACHE_PATH_SHADERS:Ljava/lang/String; = "com.android.opengl.shaders_cache"

.field private static final CACHE_PATH_SKIASHADERS:Ljava/lang/String; = "com.android.skia.shaders_cache"

.field public static final DEBUG_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.show_dirty_regions"

.field public static final DEBUG_FPS_DIVISOR:Ljava/lang/String; = "debug.hwui.fps_divisor"

.field public static final DEBUG_OVERDRAW_PROPERTY:Ljava/lang/String; = "debug.hwui.overdraw"

.field public static final DEBUG_SHOW_LAYERS_UPDATES_PROPERTY:Ljava/lang/String; = "debug.hwui.show_layers_updates"

.field public static final DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY:Ljava/lang/String; = "debug.hwui.show_non_rect_clip"

.field public static EGL_CONTEXT_PRIORITY_HIGH_IMG:I = 0x0

.field public static EGL_CONTEXT_PRIORITY_LOW_IMG:I = 0x0

.field public static EGL_CONTEXT_PRIORITY_MEDIUM_IMG:I = 0x0

.field private static final FLAG_DUMP_ALL:I = 0x1

.field private static final FLAG_DUMP_FRAMESTATS:I = 0x1

.field private static final FLAG_DUMP_RESET:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ThreadedRenderer"

.field public static final OVERDRAW_PROPERTY_SHOW:Ljava/lang/String; = "show"

.field static final PRINT_CONFIG_PROPERTY:Ljava/lang/String; = "debug.hwui.print_config"

.field static final PROFILE_MAXFRAMES_PROPERTY:Ljava/lang/String; = "debug.hwui.profile.maxframes"

.field public static final PROFILE_PROPERTY:Ljava/lang/String; = "debug.hwui.profile"

.field public static final PROFILE_PROPERTY_VISUALIZE_BARS:Ljava/lang/String; = "visual_bars"

.field private static final SYNC_CONTEXT_IS_STOPPED:I = 0x4

.field private static final SYNC_FRAME_DROPPED:I = 0x8

.field private static final SYNC_INVALIDATE_REQUIRED:I = 0x1

.field private static final SYNC_LOST_SURFACE_REWARD_IF_FOUND:I = 0x2

.field private static final SYNC_OK:I

.field private static final VISUALIZERS:[Ljava/lang/String;

.field public static sRendererDisabled:Z

.field private static sSupportsOpenGL:Ljava/lang/Boolean;

.field public static sSystemRendererDisabled:Z

.field public static sTrimForeground:Z


# instance fields
.field private final mAmbientShadowAlpha:I

.field private mEnabled:Z

.field private mHasInsets:Z

.field private mHeight:I

.field private mInitialized:Z

.field private mInsetLeft:I

.field private mInsetTop:I

.field private mIsOpaque:Z

.field private final mLightRadius:F

.field private final mLightY:F

.field private final mLightZ:F

.field private mNativeProxy:J

.field private mRequested:Z

.field private mRootNode:Landroid/view/RenderNode;

.field private mRootNodeNeedsUpdate:Z

.field private final mSpotShadowAlpha:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 196
    const/16 v0, 0x3101

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_HIGH_IMG:I

    .line 197
    const/16 v0, 0x3102

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_MEDIUM_IMG:I

    .line 198
    const/16 v0, 0x3103

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_LOW_IMG:I

    .line 202
    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    .line 211
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    .line 218
    sput-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    .line 232
    sput-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    .line 337
    const-string/jumbo v0, "visual_bars"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z
    .param p3, "name"    # Ljava/lang/String;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 378
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    .line 379
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mIsOpaque:Z

    .line 382
    sget-object v2, Lcom/android/internal/R$styleable;->Lighting:[I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 383
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    .line 384
    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    .line 385
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    .line 386
    nop

    .line 387
    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    .line 388
    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    mul-float/2addr v5, v1

    add-float/2addr v5, v6

    float-to-int v1, v5

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    .line 389
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 391
    invoke-static {}, Landroid/view/ThreadedRenderer;->nCreateRootRenderNode()J

    move-result-wide v3

    .line 392
    .local v3, "rootNodePtr":J
    invoke-static {v3, v4}, Landroid/view/RenderNode;->adopt(J)Landroid/view/RenderNode;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    .line 393
    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v0}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 394
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mIsOpaque:Z

    .line 395
    invoke-static {p2, v3, v4}, Landroid/view/ThreadedRenderer;->nCreateProxy(ZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 396
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p3}, Landroid/view/ThreadedRenderer;->nSetName(JLjava/lang/String;)V

    .line 398
    sget-object v0, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    iget-wide v5, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {v0, p1, v5, v6}, Landroid/view/ThreadedRenderer$ProcessInitializer;->init(Landroid/content/Context;J)V

    .line 400
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->loadSystemProperties()Z

    .line 401
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 70
    invoke-static {}, Landroid/view/ThreadedRenderer;->nCreateRootRenderNode()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(ZJ)J
    .locals 2
    .param p0, "x0"    # Z
    .param p1, "x1"    # J

    .line 70
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nCreateProxy(ZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(J)V
    .locals 0
    .param p0, "x0"    # J

    .line 70
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nDeleteProxy(J)V

    return-void
.end method

.method static synthetic access$1200(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 70
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nGetRenderThreadTid(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300()V
    .locals 0

    .line 70
    invoke-static {}, Landroid/view/ThreadedRenderer;->nRotateProcessStatsBuffer()V

    return-void
.end method

.method static synthetic access$1400(I)V
    .locals 0
    .param p0, "x0"    # I

    .line 70
    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nSetProcessStatsBuffer(I)V

    return-void
.end method

.method static synthetic access$200(JLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;

    .line 70
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nSetName(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(J)Z
    .locals 1
    .param p0, "x0"    # J

    .line 70
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nLoadSystemProperties(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(JFII)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # F
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 70
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ThreadedRenderer;->nSetup(JFII)V

    return-void
.end method

.method static synthetic access$500(JLandroid/view/Surface;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/view/Surface;

    .line 70
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nUpdateSurface(JLandroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$600(JFFF)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # F
    .param p3, "x2"    # F
    .param p4, "x3"    # F

    .line 70
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ThreadedRenderer;->nSetLightCenter(JFFF)V

    return-void
.end method

.method static synthetic access$700(JLandroid/view/ThreadedRenderer$FrameDrawingCallback;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/view/ThreadedRenderer$FrameDrawingCallback;

    .line 70
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nSetFrameCallback(JLandroid/view/ThreadedRenderer$FrameDrawingCallback;)V

    return-void
.end method

.method static synthetic access$800(J[JI)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # [J
    .param p3, "x2"    # I

    .line 70
    invoke-static {p0, p1, p2, p3}, Landroid/view/ThreadedRenderer;->nSyncAndDrawFrame(J[JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 70
    invoke-static {p0, p1, p2, p3}, Landroid/view/ThreadedRenderer;->nDestroy(JJ)V

    return-void
.end method

.method public static copySurfaceInto(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)I
    .locals 7
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 945
    if-nez p1, :cond_0

    .line 947
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/view/ThreadedRenderer;->nCopySurfaceInto(Landroid/view/Surface;IIIILandroid/graphics/Bitmap;)I

    move-result v0

    return v0

    .line 949
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/view/ThreadedRenderer;->nCopySurfaceInto(Landroid/view/Surface;IIIILandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "translucent"    # Z
    .param p2, "name"    # Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "renderer":Landroid/view/ThreadedRenderer;
    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    new-instance v1, Landroid/view/ThreadedRenderer;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/ThreadedRenderer;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    move-object v0, v1

    .line 300
    :cond_0
    return-object v0
.end method

.method public static createHardwareBitmap(Landroid/view/RenderNode;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "node"    # Landroid/view/RenderNode;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 960
    invoke-virtual {p0}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/view/ThreadedRenderer;->nCreateHardwareBitmap(JII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static destroyResources(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    .line 560
    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 561
    return-void
.end method

.method public static disable(Z)V
    .locals 1
    .param p0, "system"    # Z

    .line 226
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    .line 227
    if-eqz p0, :cond_0

    .line 228
    sput-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    .line 230
    :cond_0
    return-void
.end method

.method public static native disableVsync()V
.end method

.method public static enableForegroundTrimming()V
    .locals 1

    .line 241
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    .line 242
    return-void
.end method

.method static invokeFunctor(JZ)V
    .locals 0
    .param p0, "functor"    # J
    .param p2, "waitForCompletion"    # Z

    .line 862
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nInvokeFunctor(JZ)V

    .line 863
    return-void
.end method

.method public static isAvailable()Z
    .locals 4

    .line 254
    sget-object v0, Landroid/view/ThreadedRenderer;->sSupportsOpenGL:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Landroid/view/ThreadedRenderer;->sSupportsOpenGL:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 257
    :cond_0
    const-string/jumbo v0, "ro.kernel.qemu"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 259
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/view/ThreadedRenderer;->sSupportsOpenGL:Ljava/lang/Boolean;

    .line 260
    return v2

    .line 262
    :cond_1
    const-string/jumbo v0, "qemu.gles"

    const/4 v3, -0x1

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 263
    .local v0, "qemu_gles":I
    if-ne v0, v3, :cond_2

    .line 266
    return v1

    .line 270
    :cond_2
    if-lez v0, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/view/ThreadedRenderer;->sSupportsOpenGL:Ljava/lang/Boolean;

    .line 271
    sget-object v1, Landroid/view/ThreadedRenderer;->sSupportsOpenGL:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static native nAddFrameMetricsObserver(JLandroid/view/FrameMetricsObserver;)J
.end method

.method private static native nAddRenderNode(JJZ)V
.end method

.method private static native nAllocateBuffers(JLandroid/view/Surface;)V
.end method

.method private static native nBuildLayer(JJ)V
.end method

.method private static native nCancelLayerUpdate(JJ)V
.end method

.method private static native nCopyLayerInto(JJLandroid/graphics/Bitmap;)Z
.end method

.method private static native nCopySurfaceInto(Landroid/view/Surface;IIIILandroid/graphics/Bitmap;)I
.end method

.method private static native nCreateHardwareBitmap(JII)Landroid/graphics/Bitmap;
.end method

.method private static native nCreateProxy(ZJ)J
.end method

.method private static native nCreateRootRenderNode()J
.end method

.method private static native nCreateTextureLayer(J)J
.end method

.method private static native nDeleteProxy(J)V
.end method

.method private static native nDestroy(JJ)V
.end method

.method private static native nDestroyHardwareResources(J)V
.end method

.method private static native nDetachSurfaceTexture(JJ)V
.end method

.method private static native nDrawRenderNode(JJ)V
.end method

.method private static native nDumpProfileInfo(JLjava/io/FileDescriptor;I)V
.end method

.method private static native nFence(J)V
.end method

.method private static native nGetRenderThreadTid(J)I
.end method

.method private static native nHackySetRTAnimationsEnabled(Z)V
.end method

.method private static native nInitialize(JLandroid/view/Surface;)V
.end method

.method private static native nInvokeFunctor(JZ)V
.end method

.method private static native nLoadSystemProperties(J)Z
.end method

.method private static native nNotifyFramePending(J)V
.end method

.method private static native nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nPauseSurface(JLandroid/view/Surface;)Z
.end method

.method private static native nPushLayerUpdate(JJ)V
.end method

.method private static native nRegisterAnimatingRenderNode(JJ)V
.end method

.method private static native nRegisterVectorDrawableAnimator(JJ)V
.end method

.method private static native nRemoveFrameMetricsObserver(JJ)V
.end method

.method private static native nRemoveRenderNode(JJ)V
.end method

.method private static native nRemoveWallpaperBackground(J)V
.end method

.method private static native nRotateProcessStatsBuffer()V
.end method

.method private static native nSerializeDisplayListTree(J)V
.end method

.method private static native nSetContentDrawBounds(JIIII)V
.end method

.method private static native nSetContextPriority(I)V
.end method

.method private static native nSetDebuggingEnabled(Z)V
.end method

.method private static native nSetFrameCallback(JLandroid/view/ThreadedRenderer$FrameDrawingCallback;)V
.end method

.method private static native nSetFrameCompleteCallback(JLandroid/view/ThreadedRenderer$FrameCompleteCallback;)V
.end method

.method private static native nSetHighContrastText(Z)V
.end method

.method private static native nSetHwuiExtendedFunction(JI)V
.end method

.method private static native nSetIsolatedProcess(Z)V
.end method

.method private static native nSetLightCenter(JFFF)V
.end method

.method private static native nSetName(JLjava/lang/String;)V
.end method

.method private static native nSetOpaque(JZ)V
.end method

.method private static native nSetProcessStatsBuffer(I)V
.end method

.method private static native nSetStopped(JZ)V
.end method

.method private static native nSetWallpaperBackground(JLandroid/graphics/Bitmap;)V
.end method

.method private static native nSetWideGamut(JZ)V
.end method

.method private static native nSetup(JFII)V
.end method

.method private static native nStopDrawing(J)V
.end method

.method private static native nSyncAndDrawFrame(J[JI)I
.end method

.method private static native nTrimMemory(I)V
.end method

.method private static native nUpdateSurface(JLandroid/view/Surface;)V
.end method

.method public static overrideProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 316
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 319
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name and value must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setContextPriority(I)V
    .locals 0
    .param p0, "priority"    # I

    .line 1200
    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nSetContextPriority(I)V

    .line 1201
    return-void
.end method

.method public static setDebuggingEnabled(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 982
    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nSetDebuggingEnabled(Z)V

    .line 983
    return-void
.end method

.method public static setFPSDivisor(I)V
    .locals 1
    .param p0, "divisor"    # I

    .line 1190
    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/view/ThreadedRenderer;->nHackySetRTAnimationsEnabled(Z)V

    .line 1191
    return-void
.end method

.method public static setHighContrastText(Z)V
    .locals 0
    .param p0, "highContrastText"    # Z

    .line 968
    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nSetHighContrastText(Z)V

    .line 969
    return-void
.end method

.method public static setIsolatedProcess(Z)V
    .locals 0
    .param p0, "isIsolated"    # Z

    .line 975
    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nSetIsolatedProcess(Z)V

    .line 976
    return-void
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 3
    .param p0, "cacheDir"    # Ljava/io/File;

    .line 283
    new-instance v0, Ljava/io/File;

    const-string v1, "com.android.opengl.shaders_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "com.android.skia.shaders_cache"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->setupShadersDiskCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method static native setupShadersDiskCache(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static trimMemory(I)V
    .locals 0
    .param p0, "level"    # I

    .line 312
    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nTrimMemory(I)V

    .line 313
    return-void
.end method

.method private updateEnabledState(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 449
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    goto :goto_1

    .line 450
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    .line 454
    :goto_1
    return-void
.end method

.method private updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callbacks"    # Landroid/view/ThreadedRenderer$DrawCallbacks;

    .line 712
    const-string v0, "Record View#draw()"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 713
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateViewTreeDisplayList(Landroid/view/View;)V

    .line 715
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 716
    :cond_0
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v3, v4}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v0

    .line 718
    .local v0, "canvas":Landroid/view/DisplayListCanvas;
    :try_start_0
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->save()I

    move-result v3

    .line 719
    .local v3, "saveCount":I
    iget v4, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 720
    invoke-interface {p2, v0}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPreDraw(Landroid/view/DisplayListCanvas;)V

    .line 722
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertReorderBarrier()V

    .line 723
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 724
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertInorderBarrier()V

    .line 726
    invoke-interface {p2, v0}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPostDraw(Landroid/view/DisplayListCanvas;)V

    .line 727
    invoke-virtual {v0, v3}, Landroid/view/DisplayListCanvas;->restoreToCount(I)V

    .line 728
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    .end local v3    # "saveCount":I
    iget-object v3, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v3, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 731
    nop

    .line 733
    .end local v0    # "canvas":Landroid/view/DisplayListCanvas;
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 734
    return-void

    .line 730
    .restart local v0    # "canvas":Landroid/view/DisplayListCanvas;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v2, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    throw v1
.end method

.method private updateViewTreeDisplayList(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 703
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 704
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 706
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 707
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    .line 708
    iput-boolean v2, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 709
    return-void
.end method


# virtual methods
.method addFrameMetricsObserver(Landroid/view/FrameMetricsObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/view/FrameMetricsObserver;

    .line 1179
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nAddFrameMetricsObserver(JLandroid/view/FrameMetricsObserver;)J

    move-result-wide v0

    .line 1180
    .local v0, "nativeObserver":J
    new-instance v2, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v2, p1, Landroid/view/FrameMetricsObserver;->mNative:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1181
    return-void
.end method

.method public addRenderNode(Landroid/view/RenderNode;Z)V
    .locals 4
    .param p1, "node"    # Landroid/view/RenderNode;
    .param p2, "placeFront"    # Z

    .line 744
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/ThreadedRenderer;->nAddRenderNode(JJZ)V

    .line 745
    return-void
.end method

.method allocateBuffers(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 986
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nAllocateBuffers(JLandroid/view/Surface;)V

    .line 987
    return-void
.end method

.method buildLayer(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "node"    # Landroid/view/RenderNode;

    .line 878
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nBuildLayer(JJ)V

    .line 879
    return-void
.end method

.method copyLayerInto(Landroid/view/TextureLayer;Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "layer"    # Landroid/view/TextureLayer;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 883
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 884
    invoke-virtual {p1}, Landroid/view/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    .line 883
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/ThreadedRenderer;->nCopyLayerInto(JJLandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method createTextureLayer()Landroid/view/TextureLayer;
    .locals 3

    .line 872
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nCreateTextureLayer(J)J

    move-result-wide v0

    .line 873
    .local v0, "layer":J
    invoke-static {p0, v0, v1}, Landroid/view/TextureLayer;->adoptTextureLayer(Landroid/view/ThreadedRenderer;J)Landroid/view/TextureLayer;

    move-result-object v2

    return-object v2
.end method

.method destroy()V
    .locals 4

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 409
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-wide v2, v2, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nDestroy(JJ)V

    .line 410
    return-void
.end method

.method destroyHardwareResources(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 555
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    .line 556
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDestroyHardwareResources(J)V

    .line 557
    return-void
.end method

.method detachSurfaceTexture(J)V
    .locals 2
    .param p1, "hardwareLayer"    # J

    .line 568
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/ThreadedRenderer;->nDetachSurfaceTexture(JJ)V

    .line 569
    return-void
.end method

.method draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$DrawCallbacks;Landroid/view/ThreadedRenderer$FrameDrawingCallback;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "callbacks"    # Landroid/view/ThreadedRenderer$DrawCallbacks;
    .param p4, "frameDrawingCallback"    # Landroid/view/ThreadedRenderer$FrameDrawingCallback;

    .line 817
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 819
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 820
    .local v0, "choreographer":Landroid/view/Choreographer;
    iget-object v1, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v1}, Landroid/view/FrameInfo;->markDrawStart()V

    .line 822
    invoke-direct {p0, p1, p3}, Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V

    .line 824
    const/4 v1, 0x0

    iput-boolean v1, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 828
    iget-object v2, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 829
    iget-object v2, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 830
    .local v2, "count":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 831
    iget-object v4, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 832
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/RenderNode;

    .line 831
    invoke-virtual {p0, v4}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 830
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 834
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 837
    const/4 v3, 0x0

    iput-object v3, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 840
    .end local v2    # "count":I
    :cond_1
    iget-object v2, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    iget-object v2, v2, Landroid/view/FrameInfo;->mFrameInfo:[J

    .line 841
    .local v2, "frameInfo":[J
    if-eqz p4, :cond_2

    .line 842
    iget-wide v3, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v3, v4, p4}, Landroid/view/ThreadedRenderer;->nSetFrameCallback(JLandroid/view/ThreadedRenderer$FrameDrawingCallback;)V

    .line 844
    :cond_2
    iget-wide v3, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    array-length v5, v2

    invoke-static {v3, v4, v2, v5}, Landroid/view/ThreadedRenderer;->nSyncAndDrawFrame(J[JI)I

    move-result v3

    .line 845
    .local v3, "syncResult":I
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_3

    .line 846
    invoke-virtual {p0, v1}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    .line 847
    iget-object v1, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 850
    iget-object v1, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 852
    :cond_3
    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_4

    .line 853
    iget-object v1, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 855
    :cond_4
    return-void
.end method

.method public drawRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "node"    # Landroid/view/RenderNode;

    .line 761
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nDrawRenderNode(JJ)V

    .line 762
    return-void
.end method

.method dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "args"    # [Ljava/lang/String;

    .line 666
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 670
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    array-length v2, p3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 671
    .local v2, "flags":I
    :goto_1
    move v3, v2

    move v2, v0

    .line 671
    .local v2, "i":I
    .local v3, "flags":I
    :goto_2
    array-length v4, p3

    if-ge v2, v4, :cond_6

    .line 672
    aget-object v4, p3, v2

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0xf0608ae

    if-eq v6, v7, :cond_4

    const/16 v7, 0x5d4

    if-eq v6, v7, :cond_3

    const v7, 0x6761d4f

    if-eq v6, v7, :cond_2

    goto :goto_3

    :cond_2
    const-string/jumbo v6, "reset"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_4

    :cond_3
    const-string v6, "-a"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    goto :goto_4

    :cond_4
    const-string v6, "framestats"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v0

    goto :goto_4

    :cond_5
    :goto_3
    move v4, v5

    :goto_4
    packed-switch v4, :pswitch_data_0

    goto :goto_5

    .line 680
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_5

    .line 677
    :pswitch_1
    or-int/lit8 v3, v3, 0x2

    .line 678
    goto :goto_5

    .line 674
    :pswitch_2
    or-int/lit8 v3, v3, 0x1

    .line 675
    nop

    .line 671
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 684
    .end local v2    # "i":I
    :cond_6
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p2, v3}, Landroid/view/ThreadedRenderer;->nDumpProfileInfo(JLjava/io/FileDescriptor;I)V

    .line 685
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method fence()V
    .locals 2

    .line 909
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nFence(J)V

    .line 910
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 992
    :try_start_0
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDeleteProxy(J)V

    .line 993
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 996
    nop

    .line 997
    return-void

    .line 995
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getHeight()I
    .locals 1

    .line 659
    iget v0, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    return v0
.end method

.method getWidth()I
    .locals 1

    .line 649
    iget v0, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    return v0
.end method

.method initialize(Landroid/view/Surface;)Z
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 464
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 466
    .local v0, "status":Z
    const-string v2, "ThreadedRenderer.initialize"

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 468
    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 470
    const-string v1, "ThreadedRenderer.updateEnabledState"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 472
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 474
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 477
    const-string v1, "ThreadedRenderer.nInitialize"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 479
    iget-wide v1, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v1, v2, p1}, Landroid/view/ThreadedRenderer;->nInitialize(JLandroid/view/Surface;)V

    .line 481
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 484
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 486
    return v0
.end method

.method initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p4, "surface"    # Landroid/view/Surface;
    .param p5, "surfaceInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 507
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p0, p4}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 512
    const/4 v0, 0x1

    return v0

    .line 516
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method invalidateRoot()V
    .locals 1

    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    .line 806
    return-void
.end method

.method isEnabled()Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    return v0
.end method

.method isOpaque()Z
    .locals 1

    .line 632
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mIsOpaque:Z

    return v0
.end method

.method isRequested()Z
    .locals 1

    .line 437
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    return v0
.end method

.method loadSystemProperties()Z
    .locals 2

    .line 695
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nLoadSystemProperties(J)Z

    move-result v0

    .line 696
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 699
    :cond_0
    return v0
.end method

.method public notifyFramePending()V
    .locals 2

    .line 926
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nNotifyFramePending(J)V

    .line 927
    return-void
.end method

.method onLayerDestroyed(Landroid/view/TextureLayer;)V
    .locals 4
    .param p1, "layer"    # Landroid/view/TextureLayer;

    .line 902
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nCancelLayerUpdate(JJ)V

    .line 903
    return-void
.end method

.method pauseSurface(Landroid/view/Surface;)Z
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 537
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nPauseSurface(JLandroid/view/Surface;)Z

    move-result v0

    return v0
.end method

.method preCreateEglContext()V
    .locals 2

    .line 1302
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nCreateTextureLayer(J)J

    move-result-wide v0

    .line 1303
    .local v0, "layer":J
    return-void
.end method

.method pushLayerUpdate(Landroid/view/TextureLayer;)V
    .locals 4
    .param p1, "layer"    # Landroid/view/TextureLayer;

    .line 894
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nPushLayerUpdate(JJ)V

    .line 895
    return-void
.end method

.method registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "animator"    # Landroid/view/RenderNode;

    .line 931
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRegisterAnimatingRenderNode(JJ)V

    .line 932
    return-void
.end method

.method registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V
    .locals 4
    .param p1, "animator"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    .line 936
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    .line 937
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->getAnimatorNativePtr()J

    move-result-wide v2

    .line 936
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRegisterVectorDrawableAnimator(JJ)V

    .line 938
    return-void
.end method

.method removeFrameMetricsObserver(Landroid/view/FrameMetricsObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/view/FrameMetricsObserver;

    .line 1184
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-object v2, p1, Landroid/view/FrameMetricsObserver;->mNative:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v2}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRemoveFrameMetricsObserver(JJ)V

    .line 1185
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/FrameMetricsObserver;->mNative:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1186
    return-void
.end method

.method public removeRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "node"    # Landroid/view/RenderNode;

    .line 752
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRemoveRenderNode(JJ)V

    .line 753
    return-void
.end method

.method public removeWallpaperBackground()V
    .locals 2

    .line 1209
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nRemoveWallpaperBackground(J)V

    .line 1210
    return-void
.end method

.method public serializeDisplayListTree()V
    .locals 2

    .line 941
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nSerializeDisplayListTree(J)V

    .line 942
    return-void
.end method

.method public setContentDrawBounds(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 774
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/ThreadedRenderer;->nSetContentDrawBounds(JIIII)V

    .line 775
    return-void
.end method

.method setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 427
    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    .line 428
    return-void
.end method

.method setFrameCompleteCallback(Landroid/view/ThreadedRenderer$FrameCompleteCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/ThreadedRenderer$FrameCompleteCallback;

    .line 858
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetFrameCompleteCallback(JLandroid/view/ThreadedRenderer$FrameCompleteCallback;)V

    .line 859
    return-void
.end method

.method public setHwuiExtendedFunction(I)V
    .locals 2
    .param p1, "functionId"    # I

    .line 1213
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetHwuiExtendedFunction(JI)V

    .line 1214
    return-void
.end method

.method setLightCenter(Landroid/view/View$AttachInfo;)V
    .locals 6
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;

    .line 615
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 616
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v1, p1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 617
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 618
    .local v1, "lightX":F
    iget v2, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    iget v3, p1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 620
    .local v2, "lightY":F
    iget-wide v3, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget v5, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    invoke-static {v3, v4, v1, v2, v5}, Landroid/view/ThreadedRenderer;->nSetLightCenter(JFFF)V

    .line 621
    return-void
.end method

.method setOpaque(Z)V
    .locals 3
    .param p1, "opaque"    # Z

    .line 627
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mIsOpaque:Z

    .line 628
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-boolean v2, p0, Landroid/view/ThreadedRenderer;->mIsOpaque:Z

    invoke-static {v0, v1, v2}, Landroid/view/ThreadedRenderer;->nSetOpaque(JZ)V

    .line 629
    return-void
.end method

.method setRequested(Z)V
    .locals 0
    .param p1, "requested"    # Z

    .line 445
    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    .line 446
    return-void
.end method

.method setStopped(Z)V
    .locals 2
    .param p1, "stopped"    # Z

    .line 545
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetStopped(JZ)V

    .line 546
    return-void
.end method

.method public setWallpaperBackground(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1205
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetWallpaperBackground(JLandroid/graphics/Bitmap;)V

    .line 1206
    return-void
.end method

.method setWideGamut(Z)V
    .locals 2
    .param p1, "wideGamut"    # Z

    .line 639
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetWideGamut(JZ)V

    .line 640
    return-void
.end method

.method setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p4, "surfaceInsets"    # Landroid/graphics/Rect;

    .line 580
    iput p1, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    .line 581
    iput p2, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    .line 583
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    iget v1, p4, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_0

    iget v1, p4, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_0

    iget v1, p4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_1

    .line 585
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    .line 586
    iget v1, p4, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 587
    iget v1, p4, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 588
    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    add-int/2addr v1, p1

    iget v2, p4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 589
    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    add-int/2addr v1, p2

    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 592
    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    goto :goto_0

    .line 594
    :cond_1
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    .line 595
    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 596
    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 597
    iput p1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 598
    iput p2, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 601
    :goto_0
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    neg-int v1, v1

    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    neg-int v2, v2

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 602
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget v2, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    iget v3, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ThreadedRenderer;->nSetup(JFII)V

    .line 605
    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    .line 606
    return-void
.end method

.method stopDrawing()V
    .locals 2

    .line 919
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nStopDrawing(J)V

    .line 920
    return-void
.end method

.method updateSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 525
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 526
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nUpdateSurface(JLandroid/view/Surface;)V

    .line 527
    return-void
.end method
