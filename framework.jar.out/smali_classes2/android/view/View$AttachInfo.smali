.class final Landroid/view/View$AttachInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttachInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$AttachInfo$InvalidateInfo;,
        Landroid/view/View$AttachInfo$Callbacks;
    }
.end annotation


# instance fields
.field mAccessibilityFetchFlags:I

.field mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

.field mAccessibilityWindowId:I

.field mAlwaysConsumeNavBar:Z

.field mApplicationScale:F

.field mAutofilledDrawable:Landroid/graphics/drawable/Drawable;

.field mCanvas:Landroid/graphics/Canvas;

.field final mContentInsets:Landroid/graphics/Rect;

.field mDebugLayout:Z

.field mDisabledSystemUiVisibility:I

.field mDisplay:Landroid/view/Display;

.field final mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

.field mDisplayState:I

.field public mDragSurface:Landroid/view/Surface;

.field mDragToken:Landroid/os/IBinder;

.field mDrawingTime:J

.field mEmptyPartialLayoutViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mForceReportNewAttributes:Z

.field final mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mGlobalSystemUiVisibility:I

.field final mHandler:Landroid/os/Handler;

.field mHandlingPointerEvent:Z

.field mHardwareAccelerated:Z

.field mHardwareAccelerationRequested:Z

.field mHasNonEmptyGivenInternalInsets:Z

.field mHasSystemUiListeners:Z

.field mHasWindowFocus:Z

.field mIWindowId:Landroid/view/IWindowId;

.field mIgnoreDirtyState:Z

.field mInTouchMode:Z

.field final mInvalidateChildLocation:[I

.field mKeepScreenOn:Z

.field final mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

.field mNeedsUpdateLightCenter:Z

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mOverscanRequested:Z

.field mPanelParentWindowToken:Landroid/os/IBinder;

.field mPartialLayoutViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAnimatingRenderNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/RenderNode;",
            ">;"
        }
    .end annotation
.end field

.field final mPoint:Landroid/graphics/Point;

.field mRecomputeGlobalAttributes:Z

.field final mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

.field mRootView:Landroid/view/View;

.field mScalingRequired:Z

.field final mScrollContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mSession:Landroid/view/IWindowSession;

.field mSetIgnoreDirtyState:Z

.field final mStableInsets:Landroid/graphics/Rect;

.field mSystemUiVisibility:I

.field final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mThreadedRenderer:Landroid/view/ThreadedRenderer;

.field final mTmpInvalRect:Landroid/graphics/Rect;

.field final mTmpLocation:[I

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field final mTmpOutline:Landroid/graphics/Outline;

.field final mTmpRectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpTransformLocation:[F

.field final mTmpTransformRect:Landroid/graphics/RectF;

.field final mTmpTransformRect1:Landroid/graphics/RectF;

.field final mTmpTransformation:Landroid/view/animation/Transformation;

.field mTooltipHost:Landroid/view/View;

.field final mTransparentLocation:[I

.field final mTreeObserver:Landroid/view/ViewTreeObserver;

.field mUnbufferedDispatchRequested:Z

.field mUse32BitDrawingCache:Z

.field mViewRequestingLayout:Landroid/view/View;

.field final mViewRootImpl:Landroid/view/ViewRootImpl;

.field mViewScrollChanged:Z

.field mViewVisibilityChanged:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/IWindow;

.field mWindowId:Landroid/view/WindowId;

.field mWindowLeft:I

.field final mWindowToken:Landroid/os/IBinder;

.field mWindowTop:I

.field mWindowVisibility:I


# direct methods
.method constructor <init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;Landroid/content/Context;)V
    .locals 4
    .param p1, "session"    # Landroid/view/IWindowSession;
    .param p2, "window"    # Landroid/view/IWindow;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "effectPlayer"    # Landroid/view/View$AttachInfo$Callbacks;
    .param p7, "context"    # Landroid/content/Context;

    .line 26910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26550
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 26582
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    .line 26589
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 26596
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 26603
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    .line 26605
    new-instance v1, Landroid/view/DisplayCutout$ParcelableWrapper;

    sget-object v2, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-direct {v1, v2}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>(Landroid/view/DisplayCutout;)V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 26612
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    .line 26628
    new-instance v1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 26641
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    .line 26643
    new-instance v1, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v1}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    .line 26670
    iput-boolean v0, p0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 26717
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    .line 26750
    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 26756
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 26762
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    .line 26768
    new-array v2, v2, [F

    iput-object v2, p0, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 26796
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 26801
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 26806
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect1:Landroid/graphics/RectF;

    .line 26811
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/view/View$AttachInfo;->mTmpRectList:Ljava/util/List;

    .line 26816
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 26821
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 26826
    new-instance v2, Landroid/graphics/Outline;

    invoke-direct {v2}, Landroid/graphics/Outline;-><init>()V

    iput-object v2, p0, Landroid/view/View$AttachInfo;->mTmpOutline:Landroid/graphics/Outline;

    .line 26831
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 26836
    iput v1, p0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    .line 26861
    const-string v1, "debug.layout"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    .line 26866
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 26878
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mPartialLayoutViews:Ljava/util/List;

    .line 26911
    iput-object p1, p0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    .line 26912
    iput-object p2, p0, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    .line 26913
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .line 26914
    iput-object p3, p0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    .line 26915
    iput-object p4, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 26916
    iput-object p5, p0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 26917
    iput-object p6, p0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    .line 26918
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0, p7}, Landroid/view/ViewTreeObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 26919
    return-void
.end method
