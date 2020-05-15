.class public final Landroid/widget/Magnifier;
.super Ljava/lang/Object;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Magnifier$Callback;,
        Landroid/widget/Magnifier$InternalPopupWindow;,
        Landroid/widget/Magnifier$SurfaceInfo;
    }
.end annotation


# static fields
.field private static final NONEXISTENT_PREVIOUS_CONFIG_VALUE:I = -0x1

.field private static final sPixelCopyHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private final mBitmapHeight:I

.field private final mBitmapWidth:I

.field private mCallback:Landroid/widget/Magnifier$Callback;

.field private final mCenterZoomCoords:Landroid/graphics/Point;

.field private final mClampedCenterZoomCoords:Landroid/graphics/Point;

.field private mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

.field private final mLock:Ljava/lang/Object;

.field private mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

.field private final mPixelCopyRequestRect:Landroid/graphics/Rect;

.field private final mPrevPosInView:Landroid/graphics/PointF;

.field private final mPrevStartCoordsInSurface:Landroid/graphics/Point;

.field private final mView:Landroid/view/View;

.field private final mViewCoordinatesInSurface:[I

.field private mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

.field private final mWindowCoords:Landroid/graphics/Point;

.field private final mWindowCornerRadius:F

.field private final mWindowElevation:F

.field private final mWindowHeight:I

.field private final mWindowWidth:I

.field private final mZoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "magnifier pixel copy result handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    .line 130
    sget-object v0, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    .line 95
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mCenterZoomCoords:Landroid/graphics/Point;

    .line 98
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    .line 100
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    .line 102
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPrevPosInView:Landroid/graphics/PointF;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    .line 116
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    .line 117
    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mWindowElevation:F

    .line 121
    invoke-direct {p0}, Landroid/widget/Magnifier;->getDeviceDefaultDialogCornerRadius()F

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mWindowCornerRadius:F

    .line 122
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mZoom:F

    .line 123
    iget v1, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mBitmapWidth:I

    .line 124
    iget v1, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mBitmapHeight:I

    .line 126
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    .line 127
    return-void
.end method

.method private getDeviceDefaultDialogCornerRadius()F
    .locals 4

    .line 139
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    .line 140
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030128

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 141
    .local v0, "deviceDefaultContext":Landroid/content/Context;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010571

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 143
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 144
    .local v2, "dialogCornerRadius":F
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    return v2
.end method

.method public static getMagnifierDefaultSize()Landroid/graphics/PointF;
    .locals 4

    .line 756
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 757
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 758
    .local v1, "density":F
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 759
    .local v2, "size":Landroid/graphics/PointF;
    const v3, 0x105010e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 760
    const v3, 0x105010c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 761
    return-object v2
.end method

.method public static synthetic lambda$performPixelCopy$0(Landroid/widget/Magnifier;Landroid/widget/Magnifier$InternalPopupWindow;ZIILandroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "currentWindowInstance"    # Landroid/widget/Magnifier$InternalPopupWindow;
    .param p2, "updateWindowPosition"    # Z
    .param p3, "windowCoordsX"    # I
    .param p4, "windowCoordsY"    # I
    .param p5, "bitmap"    # Landroid/graphics/Bitmap;
    .param p6, "result"    # I

    .line 381
    iget-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_0
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eq v1, p1, :cond_0

    .line 384
    monitor-exit v0

    return-void

    .line 386
    :cond_0
    if-eqz p2, :cond_1

    .line 388
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-virtual {v1, p3, p4}, Landroid/widget/Magnifier$InternalPopupWindow;->setContentPositionForNextDraw(II)V

    .line 390
    :cond_1
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-virtual {v1, p5}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContent(Landroid/graphics/Bitmap;)V

    .line 391
    monitor-exit v0

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private obtainContentCoordinates(FF)V
    .locals 8
    .param p1, "xPosInView"    # F
    .param p2, "yPosInView"    # F

    .line 301
    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInSurface([I)V

    .line 302
    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 304
    move v0, p1

    .line 305
    .local v0, "posX":F
    move v3, p2

    .local v3, "posY":F
    goto :goto_0

    .line 307
    .end local v0    # "posX":F
    .end local v3    # "posY":F
    :cond_0
    iget-object v0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v0, v0, v2

    int-to-float v0, v0

    add-float/2addr v0, p1

    .line 308
    .restart local v0    # "posX":F
    iget-object v3, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v3, v3, v1

    int-to-float v3, v3

    add-float/2addr v3, p2

    .line 310
    .restart local v3    # "posY":F
    :goto_0
    iget-object v4, p0, Landroid/widget/Magnifier;->mCenterZoomCoords:Landroid/graphics/Point;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 311
    iget-object v4, p0, Landroid/widget/Magnifier;->mCenterZoomCoords:Landroid/graphics/Point;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 315
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 316
    .local v4, "viewVisibleRegion":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 317
    iget-object v5, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 319
    iget-object v5, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 320
    .local v5, "surfaceInsets":Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 322
    .end local v5    # "surfaceInsets":Landroid/graphics/Rect;
    :cond_1
    iget-object v5, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v5, v5, Landroid/view/SurfaceView;

    if-eqz v5, :cond_2

    .line 324
    iget-object v5, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v2, v5, v2

    neg-int v2, v2

    iget-object v5, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v1, v5, v1

    neg-int v1, v1

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 326
    :cond_2
    iget-object v1, p0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/Magnifier;->mBitmapWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    iget-object v5, p0, Landroid/widget/Magnifier;->mCenterZoomCoords:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, p0, Landroid/widget/Magnifier;->mBitmapWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 328
    iget-object v1, p0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget-object v2, p0, Landroid/widget/Magnifier;->mCenterZoomCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 329
    return-void
.end method

.method private obtainSurfaces()V
    .locals 9

    .line 261
    sget-object v0, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    .line 262
    .local v0, "validMainWindowSurface":Landroid/widget/Magnifier$SurfaceInfo;
    iget-object v1, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 264
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 265
    .local v2, "mainWindowSurface":Landroid/view/Surface;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 267
    .local v3, "surfaceInsets":Landroid/graphics/Rect;
    nop

    .line 268
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getWidth()I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 269
    .local v4, "surfaceWidth":I
    nop

    .line 270
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getHeight()I

    move-result v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    .line 271
    .local v5, "surfaceHeight":I
    new-instance v6, Landroid/widget/Magnifier$SurfaceInfo;

    const/4 v7, 0x1

    invoke-direct {v6, v2, v4, v5, v7}, Landroid/widget/Magnifier$SurfaceInfo;-><init>(Landroid/view/Surface;IIZ)V

    move-object v0, v6

    .line 276
    .end local v1    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v2    # "mainWindowSurface":Landroid/view/Surface;
    .end local v3    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v4    # "surfaceWidth":I
    .end local v5    # "surfaceHeight":I
    :cond_0
    sget-object v1, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    .line 277
    .local v1, "validSurfaceViewSurface":Landroid/widget/Magnifier$SurfaceInfo;
    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/SurfaceView;

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    check-cast v2, Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 279
    .local v2, "surfaceHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    .line 280
    .local v3, "surfaceViewSurface":Landroid/view/Surface;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v4

    .line 282
    .local v4, "surfaceFrame":Landroid/graphics/Rect;
    new-instance v5, Landroid/widget/Magnifier$SurfaceInfo;

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    const/4 v8, 0x0

    invoke-direct {v5, v3, v6, v7, v8}, Landroid/widget/Magnifier$SurfaceInfo;-><init>(Landroid/view/Surface;IIZ)V

    move-object v1, v5

    .line 288
    .end local v2    # "surfaceHolder":Landroid/view/SurfaceHolder;
    .end local v3    # "surfaceViewSurface":Landroid/view/Surface;
    .end local v4    # "surfaceFrame":Landroid/graphics/Rect;
    :cond_1
    sget-object v2, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    if-eq v0, v2, :cond_2

    .line 289
    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    .line 290
    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/SurfaceView;

    if-eqz v2, :cond_3

    .line 291
    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    iput-object v2, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    .line 292
    return-void
.end method

.method private obtainWindowCoordinates()V
    .locals 5

    .line 334
    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 336
    .local v0, "verticalOffset":I
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget-object v2, p0, Landroid/widget/Magnifier;->mCenterZoomCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 337
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget-object v2, p0, Landroid/widget/Magnifier;->mCenterZoomCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 338
    iget-object v1, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    iget-object v2, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    if-eq v1, v2, :cond_0

    .line 339
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 340
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 342
    :cond_0
    return-void
.end method

.method private performPixelCopy(IIZ)V
    .locals 20
    .param p1, "startXInSurface"    # I
    .param p2, "startYInSurface"    # I
    .param p3, "updateWindowPosition"    # Z

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 346
    iget-object v0, v7, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->access$000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->access$000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 350
    :cond_0
    iget-object v0, v7, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    .line 351
    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->access$300(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v0

    iget v1, v7, Landroid/widget/Magnifier;->mBitmapWidth:I

    sub-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 350
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 352
    .local v10, "clampedStartXInSurface":I
    iget-object v0, v7, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    .line 353
    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->access$400(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v0

    iget v2, v7, Landroid/widget/Magnifier;->mBitmapHeight:I

    sub-int/2addr v0, v2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 352
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 358
    .local v11, "clampedStartYInSurface":I
    iget-object v0, v7, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->access$500(Landroid/widget/Magnifier$SurfaceInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, v7, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 360
    .local v0, "systemInsets":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, v7, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    .line 361
    invoke-static {v4}, Landroid/widget/Magnifier$SurfaceInfo;->access$300(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget-object v5, v7, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    .line 362
    invoke-static {v5}, Landroid/widget/Magnifier$SurfaceInfo;->access$400(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v0    # "systemInsets":Landroid/graphics/Rect;
    move-object v0, v1

    .line 363
    .local v0, "windowBounds":Landroid/graphics/Rect;
    goto :goto_0

    .line 364
    .end local v0    # "windowBounds":Landroid/graphics/Rect;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v2}, Landroid/widget/Magnifier$SurfaceInfo;->access$300(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v2

    iget-object v3, v7, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v3}, Landroid/widget/Magnifier$SurfaceInfo;->access$400(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0    # "windowBounds":Landroid/graphics/Rect;
    :goto_0
    move-object v12, v0

    .line 366
    .end local v0    # "windowBounds":Landroid/graphics/Rect;
    .local v12, "windowBounds":Landroid/graphics/Rect;
    iget v0, v12, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->right:I

    iget v2, v7, Landroid/widget/Magnifier;->mWindowWidth:I

    sub-int/2addr v1, v2

    iget-object v2, v7, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 367
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 366
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 368
    .local v13, "windowCoordsX":I
    iget v0, v12, Landroid/graphics/Rect;->top:I

    iget v1, v12, Landroid/graphics/Rect;->bottom:I

    iget v2, v7, Landroid/widget/Magnifier;->mWindowHeight:I

    sub-int/2addr v1, v2

    iget-object v2, v7, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 369
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 368
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 372
    .local v14, "windowCoordsY":I
    iget-object v0, v7, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    iget v1, v7, Landroid/widget/Magnifier;->mBitmapWidth:I

    add-int/2addr v1, v10

    iget v2, v7, Landroid/widget/Magnifier;->mBitmapHeight:I

    add-int/2addr v2, v11

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 376
    iget-object v15, v7, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    .line 377
    .local v15, "currentWindowInstance":Landroid/widget/Magnifier$InternalPopupWindow;
    iget v0, v7, Landroid/widget/Magnifier;->mBitmapWidth:I

    iget v1, v7, Landroid/widget/Magnifier;->mBitmapHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 378
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 379
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, v7, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->access$000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v5

    iget-object v4, v7, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;

    move-object v0, v3

    move-object v1, v7

    move-object v2, v15

    move/from16 v16, v10

    move-object v10, v3

    move/from16 v3, p3

    .end local v10    # "clampedStartXInSurface":I
    .local v16, "clampedStartXInSurface":I
    move/from16 v17, v11

    move-object v11, v4

    move v4, v13

    .end local v11    # "clampedStartYInSurface":I
    .local v17, "clampedStartYInSurface":I
    move-object/from16 v18, v12

    move-object v12, v5

    move v5, v14

    .end local v12    # "windowBounds":Landroid/graphics/Rect;
    .local v18, "windowBounds":Landroid/graphics/Rect;
    move-object/from16 v19, v6

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .local v19, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct/range {v0 .. v6}, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;-><init>(Landroid/widget/Magnifier;Landroid/widget/Magnifier$InternalPopupWindow;ZIILandroid/graphics/Bitmap;)V

    sget-object v0, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    .line 393
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    .line 379
    move-object/from16 v1, v19

    invoke-static {v12, v11, v1, v10, v0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 394
    .end local v19    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, v7, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iput v8, v0, Landroid/graphics/Point;->x:I

    .line 395
    iget-object v0, v7, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iput v9, v0, Landroid/graphics/Point;->y:I

    .line 396
    return-void

    .line 347
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "windowCoordsX":I
    .end local v14    # "windowCoordsY":I
    .end local v15    # "currentWindowInstance":Landroid/widget/Magnifier$InternalPopupWindow;
    .end local v16    # "clampedStartXInSurface":I
    .end local v17    # "clampedStartYInSurface":I
    .end local v18    # "windowBounds":Landroid/graphics/Rect;
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 189
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-virtual {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->destroy()V

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    .line 193
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevPosInView:Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 195
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevPosInView:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 196
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 197
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 199
    :cond_0
    :goto_0
    return-void
.end method

.method public getContent()Landroid/graphics/Bitmap;
    .locals 5

    .line 724
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_0

    .line 725
    const/4 v0, 0x0

    return-object v0

    .line 727
    :cond_0
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->access$700(Landroid/widget/Magnifier$InternalPopupWindow;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 728
    :try_start_0
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->access$800(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    iget v3, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 729
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHeight()I
    .locals 1

    .line 225
    iget v0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 218
    iget v0, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    return v0
.end method

.method public getWindowCoords()Landroid/graphics/Point;
    .locals 5

    .line 244
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_0

    .line 245
    const/4 v0, 0x0

    return-object v0

    .line 247
    :cond_0
    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 248
    .local v0, "surfaceInsets":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v2}, Landroid/widget/Magnifier$InternalPopupWindow;->access$100(Landroid/widget/Magnifier$InternalPopupWindow;)I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    .line 249
    invoke-static {v3}, Landroid/widget/Magnifier$InternalPopupWindow;->access$200(Landroid/widget/Magnifier$InternalPopupWindow;)I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 248
    return-object v1
.end method

.method public getWindowPositionOnScreen()Landroid/graphics/Rect;
    .locals 7

    .line 739
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 740
    .local v1, "viewLocationOnScreen":[I
    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 741
    new-array v0, v0, [I

    .line 742
    .local v0, "viewLocationInSurface":[I
    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInSurface([I)V

    .line 744
    iget-object v2, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    aget v4, v1, v3

    add-int/2addr v2, v4

    aget v3, v0, v3

    sub-int/2addr v2, v3

    .line 745
    .local v2, "left":I
    iget-object v3, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    aget v5, v1, v4

    add-int/2addr v3, v5

    aget v4, v0, v4

    sub-int/2addr v3, v4

    .line 746
    .local v3, "top":I
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    add-int/2addr v5, v2

    iget v6, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    add-int/2addr v6, v3

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public getZoom()F
    .locals 1

    .line 234
    iget v0, p0, Landroid/widget/Magnifier;->mZoom:F

    return v0
.end method

.method public setOnOperationCompleteCallback(Landroid/widget/Magnifier$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/widget/Magnifier$Callback;

    .line 711
    iput-object p1, p0, Landroid/widget/Magnifier;->mCallback:Landroid/widget/Magnifier$Callback;

    .line 712
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v0, p1}, Landroid/widget/Magnifier$InternalPopupWindow;->access$602(Landroid/widget/Magnifier$InternalPopupWindow;Landroid/widget/Magnifier$Callback;)Landroid/widget/Magnifier$Callback;

    .line 715
    :cond_0
    return-void
.end method

.method public show(FF)V
    .locals 19
    .param p1, "xPosInView"    # F
    .param p2, "yPosInView"    # F

    move-object/from16 v1, p0

    .line 160
    iget-object v0, v1, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    move/from16 v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 161
    .end local p1    # "xPosInView":F
    .local v2, "xPosInView":F
    iget-object v0, v1, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    move/from16 v4, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 163
    .end local p2    # "yPosInView":F
    .local v3, "yPosInView":F
    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier;->obtainSurfaces()V

    .line 164
    invoke-direct {v1, v2, v3}, Landroid/widget/Magnifier;->obtainContentCoordinates(FF)V

    .line 165
    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier;->obtainWindowCoordinates()V

    .line 167
    iget-object v0, v1, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/widget/Magnifier;->mBitmapWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    .line 168
    .local v4, "startX":I
    iget-object v0, v1, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/widget/Magnifier;->mBitmapHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    .line 169
    .local v5, "startY":I
    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevPosInView:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v2, v0

    if-nez v0, :cond_0

    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevPosInView:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_2

    .line 170
    :cond_0
    iget-object v0, v1, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_1

    .line 171
    iget-object v6, v1, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 172
    :try_start_0
    new-instance v0, Landroid/widget/Magnifier$InternalPopupWindow;

    iget-object v7, v1, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v7, v1, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v9

    iget-object v7, v1, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    .line 173
    invoke-static {v7}, Landroid/widget/Magnifier$SurfaceInfo;->access$000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v10

    iget v11, v1, Landroid/widget/Magnifier;->mWindowWidth:I

    iget v12, v1, Landroid/widget/Magnifier;->mWindowHeight:I

    iget v13, v1, Landroid/widget/Magnifier;->mWindowElevation:F

    iget v14, v1, Landroid/widget/Magnifier;->mWindowCornerRadius:F

    .line 175
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v15

    iget-object v7, v1, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v18, v3

    :try_start_1
    iget-object v3, v1, Landroid/widget/Magnifier;->mCallback:Landroid/widget/Magnifier$Callback;

    .end local v3    # "yPosInView":F
    .local v18, "yPosInView":F
    move-object/from16 v16, v7

    move-object v7, v0

    move-object/from16 v17, v3

    invoke-direct/range {v7 .. v17}, Landroid/widget/Magnifier$InternalPopupWindow;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/Surface;IIFFLandroid/os/Handler;Ljava/lang/Object;Landroid/widget/Magnifier$Callback;)V

    iput-object v0, v1, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    .line 177
    monitor-exit v6

    goto :goto_1

    .end local v18    # "yPosInView":F
    .restart local v3    # "yPosInView":F
    :catchall_0
    move-exception v0

    move/from16 v18, v3

    .end local v3    # "yPosInView":F
    .restart local v18    # "yPosInView":F
    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0

    .line 179
    .end local v18    # "yPosInView":F
    .restart local v3    # "yPosInView":F
    :cond_1
    move/from16 v18, v3

    .end local v3    # "yPosInView":F
    .restart local v18    # "yPosInView":F
    :goto_1
    const/4 v0, 0x1

    invoke-direct {v1, v4, v5, v0}, Landroid/widget/Magnifier;->performPixelCopy(IIZ)V

    .line 180
    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevPosInView:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 181
    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevPosInView:Landroid/graphics/PointF;

    move/from16 v3, v18

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 183
    .end local v18    # "yPosInView":F
    .restart local v3    # "yPosInView":F
    :cond_2
    return-void
.end method

.method public update()V
    .locals 3

    .line 206
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Landroid/widget/Magnifier;->obtainSurfaces()V

    .line 209
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/Magnifier;->performPixelCopy(IIZ)V

    .line 212
    :cond_0
    return-void
.end method
