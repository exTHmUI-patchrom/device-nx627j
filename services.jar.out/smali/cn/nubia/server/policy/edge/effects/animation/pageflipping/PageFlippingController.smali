.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
.super Ljava/lang/Object;
.source "PageFlippingController.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;


# static fields
.field public static final LEFT_BUTTOM_TO_UP:I = 0x1

.field public static final LEFT_UP_TO_BUTTOM:I = 0x0

.field public static final MAX_LOOP_PAGE_NUM:I = 0x7

.field public static final RIGHT_BUTTOM_TO_UP:I = 0x3

.field public static final RIGHT_UP_TO_BUTTOM:I = 0x2

.field public static final TAG:Ljava/lang/String; = "PageFlippingController"


# instance fields
.field private final mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

.field private final mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

.field private final mContext:Landroid/content/Context;

.field private mFactorPageStart:F

.field private final mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

.field private mFitWindowCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;

.field private mGuideAnimCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;

.field private mGuideCancelAnimCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;

.field private mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

.field private mHasNavigationBar:Z

.field private mIsEnterPreAnim:Z

.field private mIsGuideCancelAnimFinished:Z

.field private mIsGuidePageUpLoadTextures:Z

.field private mIsLoopPageUpLoadTextures:Z

.field private mIsSinglePageUpLoadTextures:Z

.field private mIsSurfaceCreated:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

.field private mObject:Ljava/lang/Object;

.field private mPageFlippingView:Landroid/opengl/GLSurfaceView;

.field private mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

.field private mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

.field private mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

.field private mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mObject:Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsEnterPreAnim:Z

    .line 73
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuideCancelAnimFinished:Z

    .line 74
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSurfaceCreated:Z

    .line 75
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    .line 76
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    .line 77
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->getDisplayInfo()V

    .line 78
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->initWindowParams()V

    .line 79
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setGuideCancelAnimationCallback()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Landroid/opengl/GLSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p1, "x1"    # Z

    .line 26
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuideCancelAnimFinished:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 26
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->reset()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuideAnimCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;IFFLjava/util/List;F)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # F

    .line 26
    invoke-direct/range {p0 .. p5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingPreAnimEx(IFFLjava/util/List;F)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 26
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingSuccAnimEx(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;IFFLjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # Ljava/util/List;

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingLoopAnimEx(IFFLjava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 26
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->initGLSurfaceView()V

    return-void
.end method

.method static synthetic access$702(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p1, "x1"    # Z

    .line 26
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSurfaceCreated:Z

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitWindowCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelAllAnimation()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->cancelAnimation()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->cancelAnimation()V

    .line 331
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->cancelAnimation()V

    .line 334
    :cond_2
    return-void
.end method

.method private destroyTextures()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->destroy()V

    .line 320
    return-void
.end method

.method private getDisplayInfo()V
    .locals 5

    .line 83
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 85
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 87
    .local v1, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mHasNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 92
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v2, 0x0

    .line 93
    .local v2, "defaultDisplay":Landroid/view/Display;
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 94
    .local v3, "defaultDisplayInfo":Landroid/view/DisplayInfo;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 95
    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 96
    iget v4, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mScreenHeight:I

    .line 97
    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mScreenWidth:I

    .line 98
    return-void
.end method

.method private getDownY(FF)F
    .locals 1
    .param p1, "deltaY"    # F
    .param p2, "currY"    # F

    .line 337
    sub-float v0, p2, p1

    return v0
.end method

.method private initGLSurfaceView()V
    .locals 12

    .line 176
    new-instance v0, Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    .line 177
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 178
    .local v0, "thisWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    .line 179
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setRender(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;)V

    .line 180
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    .line 181
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 182
    .local v1, "orientation":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 183
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mScreenHeight:I

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mScreenWidth:I

    invoke-virtual {v3, v4, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->setSize(II)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mScreenWidth:I

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mScreenHeight:I

    invoke-virtual {v3, v4, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->setSize(II)V

    .line 187
    :goto_0
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    invoke-virtual {v3, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->setSurfaceListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;)V

    .line 188
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V

    .line 190
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 192
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    const/4 v4, -0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 193
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x8

    const/16 v10, 0x10

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 194
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 195
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    invoke-virtual {v3, v4}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 196
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3, v2}, Landroid/opengl/GLSurfaceView;->setDebugFlags(I)V

    .line 197
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 199
    return-void
.end method

.method private initWindowParams()V
    .locals 2

    .line 101
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 102
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7e4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 107
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 108
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x538

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 113
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 114
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "FitGestureAnimWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method private reset()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->reset()V

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsEnterPreAnim:Z

    .line 266
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuideCancelAnimFinished:Z

    .line 267
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSurfaceCreated:Z

    .line 268
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuidePageUpLoadTextures:Z

    .line 269
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSinglePageUpLoadTextures:Z

    .line 270
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsLoopPageUpLoadTextures:Z

    .line 271
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    .line 272
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    .line 273
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    .line 274
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->setAnimState(I)V

    .line 275
    return-void
.end method

.method private setGuideCancelAnimationCallback()V
    .locals 1

    .line 118
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuideCancelAnimCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;

    .line 173
    return-void
.end method

.method private startPageFlippingFailAnimEx()V
    .locals 3

    .line 550
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    .line 554
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->initBeforeFailAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->cancelAllAnimation()V

    .line 556
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactor()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->startFailAnim(FF)V

    .line 557
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadSinglePageFlippingTextures()V

    goto :goto_0

    .line 559
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    .line 561
    :goto_0
    return-void
.end method

.method private startPageFlippingLoopAnimEx(IFFLjava/util/List;)V
    .locals 3
    .param p1, "direct"    # I
    .param p2, "downY"    # F
    .param p3, "currY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 594
    .local p4, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    if-nez v0, :cond_0

    .line 595
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;-><init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    .line 598
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->initBeforeLoopAnim(IFFLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->cancelAllAnimation()V

    .line 600
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->startLoopAnim(F)V

    .line 601
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadLoopPageFlippingTextures()V

    goto :goto_0

    .line 603
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    .line 605
    :goto_0
    return-void
.end method

.method private startPageFlippingPreAnimEx(IFFLjava/util/List;F)V
    .locals 3
    .param p1, "direct"    # I
    .param p2, "downY"    # F
    .param p3, "currY"    # F
    .param p5, "startFactor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    .line 450
    .local p4, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "PageFlippingController"

    const-string/jumbo v1, "startPageFlippingPreAnimEx"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    .line 456
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->initBeforePreAnim(IFFLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactorByY(F)F

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFactorPageStart:F

    .line 459
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFactorPageStart:F

    cmpg-float v0, v0, p5

    if-gez v0, :cond_1

    .line 460
    iput p5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFactorPageStart:F

    .line 463
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->cancelAllAnimation()V

    .line 464
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFactorPageStart:F

    invoke-virtual {v0, p5, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->startPreAnim(FF)V

    .line 465
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadSinglePageFlippingTextures()V

    goto :goto_0

    .line 467
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    .line 469
    :goto_0
    return-void
.end method

.method private startPageFlippingSuccAnimEx(ILjava/util/List;)V
    .locals 3
    .param p1, "direct"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 522
    .local p2, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    .line 526
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->initBeforeSuccAnim(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->cancelAllAnimation()V

    .line 528
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactor()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->startSuccAnim(FF)V

    .line 529
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadSinglePageFlippingTextures()V

    goto :goto_0

    .line 531
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    .line 533
    :goto_0
    return-void
.end method

.method private toUserCoordinateY(F)F
    .locals 4
    .param p1, "deviceY"    # F

    .line 341
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v0

    .line 342
    .local v0, "rotation":I
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 343
    .local v1, "height":F
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 344
    .local v2, "width":F
    const/4 v3, 0x0

    .line 346
    .local v3, "userY":F
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 360
    :pswitch_0
    sub-float v3, v2, p1

    goto :goto_0

    .line 356
    :pswitch_1
    sub-float v3, v1, p1

    .line 357
    goto :goto_0

    .line 352
    :pswitch_2
    move v3, p1

    .line 353
    goto :goto_0

    .line 348
    :pswitch_3
    move v3, p1

    .line 349
    nop

    .line 364
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private uploadGuidePageFlippingTextures()V
    .locals 1

    .line 627
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuidePageUpLoadTextures:Z

    if-eqz v0, :cond_0

    .line 628
    return-void

    .line 631
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuidePageUpLoadTextures:Z

    .line 632
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadPageFlippingTextures()V

    .line 633
    return-void
.end method

.method private uploadLoopPageFlippingTextures()V
    .locals 1

    .line 645
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsLoopPageUpLoadTextures:Z

    if-eqz v0, :cond_0

    .line 646
    return-void

    .line 649
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsLoopPageUpLoadTextures:Z

    .line 650
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadPageFlippingTextures()V

    .line 651
    return-void
.end method

.method private uploadPageFlippingTextures()V
    .locals 10

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v0, "delHashcodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v1, "delTextures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getNeedDelTextures(Ljava/util/List;Ljava/util/List;)V

    .line 660
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 662
    .local v2, "size":I
    if-lez v2, :cond_0

    .line 663
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    new-instance v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    invoke-direct {v5, p0, v1, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 688
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v3, "uploadBitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v4, "uploadHashcodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v5, "uploadTextures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-virtual {v6, v4, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getNeedUploadTextures(Ljava/util/List;Ljava/util/List;)V

    .line 692
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 694
    if-lez v2, :cond_2

    .line 695
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_1

    .line 696
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->setStatus(II)V

    .line 695
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 699
    .end local v6    # "i":I
    :cond_1
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    new-instance v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    invoke-direct {v8, p0, v5, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 745
    :cond_2
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    if-eqz v6, :cond_3

    .line 746
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    invoke-virtual {v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->notifyGpuPreparedAppTexData()V

    .line 749
    :cond_3
    :goto_1
    return-void
.end method

.method private uploadSinglePageFlippingTextures()V
    .locals 1

    .line 636
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSinglePageUpLoadTextures:Z

    if-eqz v0, :cond_0

    .line 637
    return-void

    .line 640
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSinglePageUpLoadTextures:Z

    .line 641
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadPageFlippingTextures()V

    .line 642
    return-void
.end method


# virtual methods
.method public addFitWindow()V
    .locals 3

    .line 278
    const-string v0, "PageFlippingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFitWindow mIsFitWindowAdded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFitWindowAdded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; mIsSurfaceCreated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSurfaceCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mScreenHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 283
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mScreenWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mScreenWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 286
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mScreenHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 288
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFitWindowAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 290
    .local v0, "windowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setFitWindowAdded(Z)V

    .line 292
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    goto :goto_1

    .line 293
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitWindowCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSurfaceCreated:Z

    if-eqz v0, :cond_2

    .line 294
    const-string v0, "PageFlippingController"

    const-string v1, "addFitWindow mFitWindowCallback.onSurfaceCreated()"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitWindowCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;->onSurfaceCreated()V

    .line 298
    :cond_2
    :goto_1
    return-void
.end method

.method public onDrawFirstFrame()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$4;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$4;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$3;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$3;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method public removeFitWindow()V
    .locals 2

    .line 301
    const-string v0, "PageFlippingController"

    const-string/jumbo v1, "removeFitWindow"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->cancelAllAnimation()V

    .line 303
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->destroyTextures()V

    .line 305
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFitWindowAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$5;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$5;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    .line 316
    :cond_0
    return-void
.end method

.method public setAnimSyncListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V
    .locals 1
    .param p1, "animSync"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    .line 211
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setAnimSyncListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V

    .line 212
    return-void
.end method

.method public setFitWindowCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;

    .line 215
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitWindowCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;

    .line 216
    return-void
.end method

.method public setGuideAnimCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;

    .line 219
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuideAnimCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;

    .line 220
    return-void
.end method

.method public setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 2
    .param p1, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 223
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 224
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V

    .line 225
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$2;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method public setSystemGestureService(Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;)V
    .locals 0
    .param p1, "service"    # Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    .line 207
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    .line 208
    return-void
.end method

.method public setTextureManagement(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;)V
    .locals 1
    .param p1, "management"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    .line 202
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    .line 203
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setTextureManagement(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;)V

    .line 204
    return-void
.end method

.method public startPageFlippingDoubleAnim()V
    .locals 2

    .line 622
    const-string v0, "PageFlippingController"

    const-string/jumbo v1, "startPageFlippingDoubleAnim"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 624
    return-void
.end method

.method public startPageFlippingFailAnim()V
    .locals 3

    .line 536
    const-string v0, "PageFlippingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPageFlippingFailAnim mDirect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getDirect()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; mHashcodeList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 537
    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHashcodeList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; mFactor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 538
    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactor()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 541
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuideCancelAnimFinished:Z

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFitAnimState:I

    .line 543
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->startCancelAnim()F

    goto :goto_0

    .line 545
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingFailAnimEx()V

    .line 547
    :goto_0
    return-void
.end method

.method public startPageFlippingGuideCancelAnim()V
    .locals 3

    .line 399
    const-string v0, "PageFlippingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPageFlippingGuideCancelAnim mDirect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 400
    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getDirect()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; mHashcodeList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 401
    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHashcodeList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 404
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFitAnimState:I

    .line 406
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->startCancelAnim()F

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    .line 410
    :goto_0
    return-void
.end method

.method public startPageFlippingGuideStartAnim(IFLjava/util/List;)V
    .locals 3
    .param p1, "direct"    # I
    .param p2, "downY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 369
    .local p3, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "PageFlippingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPageFlippingGuideStartAnim direct = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; downY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "; hashcodeList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 374
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;-><init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    .line 376
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuideCancelAnimCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->setCancelAnimationCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->initStartAnim(IFLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->cancelAllAnimation()V

    .line 381
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->startStartAnim()V

    .line 382
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadGuidePageFlippingTextures()V

    .line 384
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$6;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$6;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    .line 396
    :goto_0
    return-void
.end method

.method public startPageFlippingInnerAnim()Z
    .locals 2

    .line 608
    const-string v0, "PageFlippingController"

    const-string/jumbo v1, "startPageFlippingInnerAnim"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 611
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFitAnimState:I

    .line 613
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->startCancelAnimInner()V

    .line 614
    const/4 v0, 0x1

    return v0

    .line 616
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public startPageFlippingLoopAnim(IFFLjava/util/List;)V
    .locals 3
    .param p1, "direct"    # I
    .param p2, "deltaY"    # F
    .param p3, "currY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 565
    .local p4, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "PageFlippingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPageFlippingLoopAnim direct = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; deltaY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "; currY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "; mHashcodeList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; mFactor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 569
    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactor()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 572
    invoke-direct {p0, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->getDownY(FF)F

    move-result v0

    .line 573
    .local v0, "downY":F
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->toUserCoordinateY(F)F

    move-result v0

    .line 574
    invoke-direct {p0, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->toUserCoordinateY(F)F

    move-result p3

    .line 576
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuideCancelAnimFinished:Z

    if-nez v2, :cond_0

    .line 577
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v1, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFitAnimState:I

    .line 578
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput p1, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mDirect:I

    .line 579
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v0, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mDownY:F

    .line 580
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput p3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mCurrY:F

    .line 581
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput-object p4, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mHashcodeList:Ljava/util/List;

    .line 583
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->getCurrFactor()F

    move-result v1

    .line 584
    .local v1, "factor":F
    const/16 v2, 0x32

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactorByAnimationTime(I)F

    move-result v2

    add-float/2addr v1, v2

    .line 585
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->startCancelAnim()F

    move-result v1

    .line 586
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v1, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFactor:F

    .line 587
    .end local v1    # "factor":F
    goto :goto_0

    .line 588
    :cond_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingLoopAnimEx(IFFLjava/util/List;)V

    .line 590
    :goto_0
    return-void
.end method

.method public startPageFlippingPreAnim(IFFLjava/util/List;)V
    .locals 8
    .param p1, "direct"    # I
    .param p2, "deltaY"    # F
    .param p3, "currY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 414
    .local p4, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsEnterPreAnim:Z

    if-eqz v0, :cond_0

    .line 415
    return-void

    .line 417
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsEnterPreAnim:Z

    .line 420
    const-string v0, "PageFlippingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPageFlippingPreAnim direct = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; deltaY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "; currY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "; hashcodeList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 426
    invoke-direct {p0, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->getDownY(FF)F

    move-result v0

    .line 427
    .local v0, "downY":F
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->toUserCoordinateY(F)F

    move-result v0

    .line 428
    invoke-direct {p0, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->toUserCoordinateY(F)F

    move-result p3

    .line 430
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v2, :cond_1

    .line 433
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2, p1, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setDirect(IF)V

    .line 434
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactorByY(F)F

    move-result v2

    .line 436
    .local v2, "factor":F
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v1, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFitAnimState:I

    .line 437
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput p1, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mDirect:I

    .line 438
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v0, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mDownY:F

    .line 439
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput p3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mCurrY:F

    .line 440
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput-object p4, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mHashcodeList:Ljava/util/List;

    .line 441
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->startCancelAnim()F

    move-result v1

    .line 442
    .end local v2    # "factor":F
    .local v1, "factor":F
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v1, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFactor:F

    .line 443
    .end local v1    # "factor":F
    goto :goto_0

    .line 444
    :cond_1
    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, v0

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingPreAnimEx(IFFLjava/util/List;F)V

    .line 446
    :goto_0
    return-void
.end method

.method public startPageFlippingSuccAnim(ILjava/util/List;)V
    .locals 3
    .param p1, "direct"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 502
    .local p2, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "PageFlippingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPageFlippingSuccAnim direct = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; hashcodeList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; mFactor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 504
    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactor()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 507
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuideCancelAnimFinished:Z

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFitAnimState:I

    .line 509
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput p1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mDirect:I

    .line 510
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput-object p2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mHashcodeList:Ljava/util/List;

    .line 512
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->getCurrFactor()F

    move-result v0

    .line 513
    .local v0, "factor":F
    const/16 v1, 0x32

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactorByAnimationTime(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 514
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->startCancelAnim()F

    move-result v0

    .line 515
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v0, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFactor:F

    .line 516
    .end local v0    # "factor":F
    goto :goto_0

    .line 517
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingSuccAnimEx(ILjava/util/List;)V

    .line 519
    :goto_0
    return-void
.end method

.method public updatePageFlippingAnim(IFFLjava/util/List;)V
    .locals 3
    .param p1, "direct"    # I
    .param p2, "deltaY"    # F
    .param p3, "currY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 479
    .local p4, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 481
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    .line 482
    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->isCancelAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    const-string v0, "PageFlippingController"

    const-string/jumbo v1, "updatePageFlippingAnim return"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    if-nez v0, :cond_1

    .line 488
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    .line 491
    :cond_1
    invoke-direct {p0, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->getDownY(FF)F

    move-result v0

    .line 492
    .local v0, "downY":F
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->toUserCoordinateY(F)F

    move-result v0

    .line 493
    invoke-direct {p0, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->toUserCoordinateY(F)F

    move-result p3

    .line 495
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    invoke-virtual {v1, p1, v0, p3, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->initBeforeUpdateAnim(IFFLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadSinglePageFlippingTextures()V

    .line 497
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFactorPageStart:F

    invoke-virtual {v1, v0, p3, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->updateAnim(FFF)V

    .line 499
    :cond_2
    return-void
.end method
