.class public final Landroid/view/ViewRootImpl;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/ThreadedRenderer$DrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$UnhandledKeyManager;,
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$HighContrastTextManager;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
        Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;,
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;,
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$SyntheticTrackballHandler;,
        Landroid/view/ViewRootImpl$SyntheticInputStage;,
        Landroid/view/ViewRootImpl$ViewPostImeInputStage;,
        Landroid/view/ViewRootImpl$NativePostImeInputStage;,
        Landroid/view/ViewRootImpl$EarlyPostImeInputStage;,
        Landroid/view/ViewRootImpl$ImeInputStage;,
        Landroid/view/ViewRootImpl$ViewPreImeInputStage;,
        Landroid/view/ViewRootImpl$NativePreImeInputStage;,
        Landroid/view/ViewRootImpl$AsyncInputStage;,
        Landroid/view/ViewRootImpl$InputStage;,
        Landroid/view/ViewRootImpl$ViewRootHandler;,
        Landroid/view/ViewRootImpl$WindowStoppedCallback;,
        Landroid/view/ViewRootImpl$RenderThreadRecord;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;,
        Landroid/view/ViewRootImpl$ActivityConfigCallback;,
        Landroid/view/ViewRootImpl$ConfigChangedCallback;
    }
.end annotation


# static fields
.field private static final APP_TRAVERSALS_TIMEOUT_TIME:J = 0x7d0L

.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_INPUT_STAGES:Z = false

.field private static final DEBUG_KEEP_SCREEN_ON:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_QUEUED_INPUT_EVENT_POOL_SIZE:I = 0xa

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MSG_APP_TRAVERSALS_TIMEOUT:I = 0x1e

.field private static final MSG_CHECK_FOCUS:I = 0xd

.field private static final MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST:I = 0x15

.field private static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0xe

.field private static final MSG_DIE:I = 0x3

.field private static final MSG_DISPATCH_APP_VISIBILITY:I = 0x8

.field private static final MSG_DISPATCH_DRAG_EVENT:I = 0xf

.field private static final MSG_DISPATCH_DRAG_LOCATION_EVENT:I = 0x10

.field private static final MSG_DISPATCH_GET_NEW_SURFACE:I = 0x9

.field private static final MSG_DISPATCH_INPUT_EVENT:I = 0x7

.field private static final MSG_DISPATCH_KEY_FROM_AUTOFILL:I = 0xc

.field private static final MSG_DISPATCH_KEY_FROM_IME:I = 0xb

.field private static final MSG_DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x11

.field private static final MSG_DISPATCH_WINDOW_SHOWN:I = 0x19

.field private static final MSG_DRAW_FINISHED:I = 0x1d

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_INVALIDATE_RECT:I = 0x2

.field private static final MSG_INVALIDATE_WORLD:I = 0x16

.field private static final MSG_POINTER_CAPTURE_CHANGED:I = 0x1c

.field private static final MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final MSG_REQUEST_KEYBOARD_SHORTCUTS:I = 0x1a

.field private static final MSG_RESIZED:I = 0x4

.field private static final MSG_RESIZED_REPORT:I = 0x5

.field private static final MSG_SYNTHESIZE_INPUT_EVENT:I = 0x18

.field private static final MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final MSG_UPDATE_POINTER_ICON:I = 0x1b

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final MSG_WINDOW_MOVED:I = 0x17

.field private static final MT_RENDERER_AVAILABLE:Z = true

.field private static final NAVIGES_SIZE:I = 0x2a

.field private static final NAVIGES_SLOP:I = 0x10

.field public static final PROPERTY_EMULATOR_WIN_OUTSET_BOTTOM_PX:Ljava/lang/String; = "ro.emu.win_outset_bottom_px"

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewroot.profile_rendering"

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static appInfoFileName:Ljava/lang/String;

.field private static mForcedDrawing:Z

.field private static mPreCreatedLock:Ljava/lang/Object;

.field static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field static preCreatedRenderThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl$RenderThreadRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static preLaunchedSurfaceName:Ljava/lang/String;

.field private static renderThreadCreater:Landroid/os/HandlerThread;

.field private static renderThreadInfoFN:Ljava/lang/String;

.field private static sAlwaysAssignFocus:Z

.field private static sCompatibilityDone:Z

.field private static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl$ConfigChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/HandlerActionQueue;",
            ">;"
        }
    .end annotation
.end field

.field private static surfaceNameFile:Ljava/lang/String;


# instance fields
.field private DEBUG_NAVIGES:Z

.field private final SCROLL_BOOST_SS_ENABLE:Z

.field mAccessibilityFocusedHost:Landroid/view/View;

.field mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field private mActivityRelaunched:Z

.field mAdded:Z

.field mAddedTouchMode:Z

.field private mAppVisibilityChanged:Z

.field mAppVisible:Z

.field mApplyInsetsRequested:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field final mBasePackageName:Ljava/lang/String;

.field private mCanvasOffsetX:I

.field private mCanvasOffsetY:I

.field mChoreographer:Landroid/view/Choreographer;

.field mClientWindowLayoutFlags:I

.field final mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

.field mConsumeBatchedInputImmediatelyScheduled:Z

.field mConsumeBatchedInputScheduled:Z

.field final mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field final mContext:Landroid/content/Context;

.field mCurScrollY:I

.field mCurrentDragView:Landroid/view/View;

.field private mCustomPointerIcon:Landroid/view/PointerIcon;

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field final mDispatchContentInsets:Landroid/graphics/Rect;

.field mDispatchDisplayCutout:Landroid/view/DisplayCutout;

.field final mDispatchStableInsets:Landroid/graphics/Rect;

.field mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDownEvent:Landroid/view/MotionEvent;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field private mDragResizing:Z

.field mDrawingAllowed:Z

.field mDrawsNeededToReport:I

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field mFirst:Z

.field mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

.field mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mForceDecorViewVisibility:Z

.field private mForceNextConfigUpdate:Z

.field mForceNextWindowRelayout:Z

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field mHadWindowFocus:Z

.field final mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

.field mHandlingLayoutInLayoutRequest:Z

.field mHardwareXOffset:I

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field private mHasNavi:Z

.field private mHasNavigationBar:Z

.field private mHasStartTraversalsAccelerate:Z

.field mHaveMoveEvent:Z

.field mHeight:I

.field final mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

.field private mInLayout:Z

.field mInputChannel:Landroid/view/InputChannel;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field final mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

.field private mInvalidateRootRequested:Z

.field mIsAmbientMode:Z

.field public mIsAnimating:Z

.field mIsCreating:Z

.field mIsDrawing:Z

.field mIsInTraversal:Z

.field mIsPerfLockAcquired:Z

.field private mIsPort:Z

.field private final mLastConfigurationFromResources:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastOverscanRequested:Z

.field private final mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

.field mLastScrolledFocus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mLastSystemUiVisibility:I

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastTouchSource:I

.field mLastWasImTarget:Z

.field private mLastWindowInsets:Landroid/view/WindowInsets;

.field mLayoutRequested:Z

.field mLayoutRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field mLostWindowFocus:Z

.field private mMoveBeyondSlop:Z

.field private mMultiTouch:Z

.field private mNavBarOverride:Ljava/lang/String;

.field private mNaviGesEnable:Z

.field private mNaviHideStage:Z

.field private mNeedsRendererSetup:Z

.field mNewSurfaceNeeded:Z

.field private mNextRtFrameCallback:Landroid/view/ThreadedRenderer$FrameDrawingCallback;

.field private final mNoncompatDensity:I

.field mOrigWindowType:I

.field mPausedForTransition:Z

.field mPendingAlwaysConsumeNavBar:Z

.field final mPendingBackDropFrame:Landroid/graphics/Rect;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field final mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

.field mPendingInputEventCount:I

.field mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

.field mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private final mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

.field final mPendingOutsets:Landroid/graphics/Rect;

.field final mPendingOverscanInsets:Landroid/graphics/Rect;

.field final mPendingStableInsets:Landroid/graphics/Rect;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field mPerf:Landroid/util/BoostFramework;

.field mPointerCapture:Z

.field private mPointerIconType:I

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field mProcessInputEventsScheduled:Z

.field private mProfile:Z

.field private mProfileRendering:Z

.field private mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueuedInputEventPoolSize:I

.field private mRealSize:Landroid/graphics/Point;

.field private mRedPacketHelper:Landroid/view/RedPacketHelper;

.field private mRemoved:Z

.field private mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

.field private mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field private mResizeMode:I

.field private mRotation:I

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSeq:I

.field mSoftInputMode:I

.field mStopped:Z

.field public final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mTag:Ljava/lang/String;

.field final mTargetSdkVersion:I

.field mTempHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTmpValue:Landroid/util/TypedValue;

.field private mTouchDebug:Z

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalBarrier:I

.field final mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field public mTraversalScheduled:Z

.field mUnbufferedInputDispatch:Z

.field private final mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

.field mUpcomingInTouchMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field mUpcomingWindowFocus:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mUseMTRenderer:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mViewLayoutDirectionInitial:I

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field public final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field mWindowAttributesChangesFlag:I

.field final mWindowCallbacks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWindowCallbacks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

.field mWindowFocusChanged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final mWindowSession:Landroid/view/IWindowSession;

.field private final mWindowStoppedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl$WindowStoppedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 1159
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 199
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 246
    sput-boolean v0, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    .line 471
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v1, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    .line 504
    const-string v1, "/render_thread_info"

    sput-object v1, Landroid/view/ViewRootImpl;->renderThreadInfoFN:Ljava/lang/String;

    .line 505
    const-string v1, "/surfacename_nubia"

    sput-object v1, Landroid/view/ViewRootImpl;->surfaceNameFile:Ljava/lang/String;

    .line 506
    const-string v1, "/app_info"

    sput-object v1, Landroid/view/ViewRootImpl;->appInfoFileName:Ljava/lang/String;

    .line 507
    const/4 v1, 0x0

    sput-object v1, Landroid/view/ViewRootImpl;->preLaunchedSurfaceName:Ljava/lang/String;

    .line 508
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/view/ViewRootImpl;->preCreatedRenderThreads:Ljava/util/ArrayList;

    .line 509
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/view/ViewRootImpl;->mPreCreatedLock:Ljava/lang/Object;

    .line 514
    sput-boolean v0, Landroid/view/ViewRootImpl;->mForcedDrawing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const-string/jumbo v0, "vendor.perf.gestureflingboost.enable"

    .line 188
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->SCROLL_BOOST_SS_ENABLE:Z

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 265
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .line 267
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 273
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 295
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    .line 299
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 313
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 317
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    .line 320
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 322
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 402
    const-string/jumbo v3, "pq"

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 410
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->DEBUG_NAVIGES:Z

    .line 411
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDownEvent:Landroid/view/MotionEvent;

    .line 412
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHasNavi:Z

    .line 413
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsPort:Z

    .line 414
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNaviGesEnable:Z

    .line 415
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mRealSize:Landroid/graphics/Point;

    .line 418
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mMoveBeyondSlop:Z

    .line 419
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHasNavigationBar:Z

    .line 420
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mNaviHideStage:Z

    .line 421
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mMultiTouch:Z

    .line 424
    new-instance v4, Landroid/view/ViewRootImpl$UnhandledKeyManager;

    invoke-direct {v4, v3}, Landroid/view/ViewRootImpl$UnhandledKeyManager;-><init>(Landroid/view/ViewRootImpl$1;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    .line 426
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 427
    iput v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 431
    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4}, Landroid/view/Surface;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 439
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    .line 440
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 441
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 442
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 443
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    .line 444
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    .line 445
    new-instance v4, Landroid/view/DisplayCutout$ParcelableWrapper;

    sget-object v5, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-direct {v4, v5}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>(Landroid/view/DisplayCutout;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 448
    new-instance v4, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v4}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 451
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    .line 452
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    .line 453
    sget-object v4, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDispatchDisplayCutout:Landroid/view/DisplayCutout;

    .line 458
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    .line 460
    new-instance v4, Landroid/util/MergedConfiguration;

    invoke-direct {v4}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 462
    new-instance v4, Landroid/util/MergedConfiguration;

    invoke-direct {v4}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 480
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 481
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 489
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 490
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 494
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mTouchDebug:Z

    .line 496
    iput v0, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    .line 497
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    .line 524
    new-instance v4, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v4, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 535
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 536
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    .line 537
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 549
    nop

    .line 550
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 551
    new-instance v4, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v4, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    iput-object v4, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 554
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mRedPacketHelper:Landroid/view/RedPacketHelper;

    .line 564
    const-string v4, "ViewRootImpl"

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 565
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mHaveMoveEvent:Z

    .line 566
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsPerfLockAcquired:Z

    .line 567
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPerf:Landroid/util/BoostFramework;

    .line 654
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 1385
    new-instance v4, Landroid/view/ViewRootImpl$2;

    invoke-direct {v4, p0}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1578
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    .line 3406
    iput v1, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    .line 4656
    new-instance v4, Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-direct {v4, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 7816
    new-instance v4, Landroid/view/ViewRootImpl$TraversalRunnable;

    invoke-direct {v4, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    .line 7851
    new-instance v4, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    invoke-direct {v4, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    .line 7861
    new-instance v4, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-direct {v4, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    .line 7947
    new-instance v4, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-direct {v4, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    .line 9194
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mHasStartTraversalsAccelerate:Z

    .line 570
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 571
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v4

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 572
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 573
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    .line 574
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    .line 575
    new-instance v4, Landroid/view/WindowLeaked;

    invoke-direct {v4, v3}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    .line 576
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v3}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 577
    iput v2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 578
    iput v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 579
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 580
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 581
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    .line 582
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 583
    new-instance v2, Landroid/view/ViewRootImpl$W;

    invoke-direct {v2, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 584
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v2, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    .line 585
    const/16 v2, 0x8

    iput v2, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 586
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 587
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 588
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 589
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 590
    new-instance v2, Landroid/view/View$AttachInfo;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object v3, v2

    move-object v6, p2

    move-object v7, p0

    move-object v9, p0

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 592
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 593
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V

    .line 595
    new-instance v2, Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-direct {v2, p0}, Landroid/view/ViewRootImpl$HighContrastTextManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    .line 596
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Landroid/os/Handler;)V

    .line 598
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 599
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Landroid/view/ViewRootImpl;->mDensity:I

    .line 600
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v2, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    .line 601
    new-instance v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    .line 602
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 603
    const-string v2, "display"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 605
    sget-boolean v2, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    if-nez v2, :cond_2

    .line 606
    iget v2, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_1

    move v1, v0

    nop

    :cond_1
    sput-boolean v1, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    .line 608
    sput-boolean v0, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    .line 611
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    .line 612
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0, p1}, Landroid/util/BoostFramework;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPerf:Landroid/util/BoostFramework;

    .line 613
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 152
    sget-object v0, Landroid/view/ViewRootImpl;->mPreCreatedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .line 152
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleWindowFocusChanged()V

    return-void
.end method

.method static synthetic access$1200(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/DragEvent;

    .line 152
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 152
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->resetPointerIcon(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .line 152
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handlePointerCaptureChanged(Z)V

    return-void
.end method

.method static synthetic access$1600(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->stopAppTraversalsAccelerate()V

    return-void
.end method

.method static synthetic access$1700(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 152
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isAutofillUiShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/view/ViewRootImpl;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget v0, p0, Landroid/view/ViewRootImpl;->mRotation:I

    return v0
.end method

.method static synthetic access$2000(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Landroid/view/ViewRootImpl;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # I

    .line 152
    iput p1, p0, Landroid/view/ViewRootImpl;->mRotation:I

    return p1
.end method

.method static synthetic access$2100(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .line 152
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/view/ViewRootImpl;)Landroid/view/autofill/AutofillManager;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$UnhandledKeyManager;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->SCROLL_BOOST_SS_ENABLE:Z

    return v0
.end method

.method static synthetic access$2500(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 152
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeUpdateTooltip(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/view/ViewRootImpl;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 152
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mMoveBeyondSlop:Z

    return v0
.end method

.method static synthetic access$2702(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .line 152
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mMoveBeyondSlop:Z

    return p1
.end method

.method static synthetic access$2800(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mMultiTouch:Z

    return v0
.end method

.method static synthetic access$2802(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .line 152
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mMultiTouch:Z

    return p1
.end method

.method static synthetic access$2900(Landroid/view/ViewRootImpl;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRealSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->DEBUG_NAVIGES:Z

    return v0
.end method

.method static synthetic access$3100(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mNaviHideStage:Z

    return v0
.end method

.method static synthetic access$3102(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .line 152
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mNaviHideStage:Z

    return p1
.end method

.method static synthetic access$3200(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHasNavigationBar:Z

    return v0
.end method

.method static synthetic access$3302(Landroid/view/ViewRootImpl;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # I

    .line 152
    iput p1, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    return p1
.end method

.method static synthetic access$3400(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 152
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$4402(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .line 152
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    return p1
.end method

.method static synthetic access$4500(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .line 152
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    return-void
.end method

.method static synthetic access$4602(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .line 152
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mTouchDebug:Z

    return p1
.end method

.method static synthetic access$4700(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->initNaviges()V

    return-void
.end method

.method static synthetic access$500(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Landroid/graphics/Rect;
    .param p3, "x3"    # Landroid/graphics/Rect;
    .param p4, "x4"    # Landroid/graphics/Rect;
    .param p5, "x5"    # Landroid/graphics/Rect;
    .param p6, "x6"    # Landroid/graphics/Rect;
    .param p7, "x7"    # Z
    .param p8, "x8"    # Landroid/util/MergedConfiguration;
    .param p9, "x9"    # Landroid/graphics/Rect;
    .param p10, "x10"    # Z
    .param p11, "x11"    # Z
    .param p12, "x12"    # I
    .param p13, "x13"    # Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 152
    invoke-direct/range {p0 .. p13}, Landroid/view/ViewRootImpl;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V

    return-void
.end method

.method static synthetic access$5100(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZI)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/util/MergedConfiguration;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V

    return-void
.end method

.method static synthetic access$700(Landroid/view/ViewRootImpl;)Landroid/content/res/Configuration;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$800(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 152
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    return-void
.end method

.method static synthetic access$900(Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .line 152
    invoke-static {p0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    return-void
.end method

.method public static addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V
    .locals 2
    .param p0, "callback"    # Landroid/view/ViewRootImpl$ConfigChangedCallback;

    .line 625
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 626
    :try_start_0
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    monitor-exit v0

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "callback"    # Ljava/lang/Runnable;

    .line 616
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 617
    :try_start_0
    sget-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v1, :cond_0

    .line 618
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_0
    monitor-exit v0

    .line 621
    return-void

    .line 620
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private adjustInputEventForCompatibility(Landroid/view/InputEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/InputEvent;

    .line 7743
    iget v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 7744
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 7745
    .local v0, "motion":Landroid/view/MotionEvent;
    const/16 v1, 0x60

    .line 7747
    .local v1, "mask":I
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    .line 7748
    .local v2, "buttonState":I
    and-int/lit8 v3, v2, 0x60

    shr-int/lit8 v3, v3, 0x4

    .line 7749
    .local v3, "compatButtonState":I
    if-eqz v3, :cond_0

    .line 7750
    or-int v4, v2, v3

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 7753
    .end local v0    # "motion":Landroid/view/MotionEvent;
    .end local v1    # "mask":I
    .end local v2    # "buttonState":I
    .end local v3    # "compatButtonState":I
    :cond_0
    return-void
.end method

.method private applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 1750
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v0, :cond_0

    .line 1751
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 1753
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    and-int/lit16 v1, v1, 0x80

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1756
    :goto_0
    return-void
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 6822
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6823
    return v1

    .line 6827
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 6828
    .local v0, "action":I
    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 6829
    return v1

    .line 6833
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 6834
    return v1

    .line 6842
    :cond_2
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6843
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    move-result v1

    return v1

    .line 6849
    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6850
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 6851
    return v1

    .line 6854
    :cond_4
    return v1
.end method

.method private collectViewAttributes()Z
    .locals 6

    .line 1759
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1761
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1762
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1763
    .local v0, "oldScreenOn":Z
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1764
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1765
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 1766
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1767
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    not-int v4, v4

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1768
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1769
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1770
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-ne v3, v0, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iget-boolean v4, v2, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v3, v4, :cond_1

    .line 1773
    :cond_0
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 1774
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1775
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iput-boolean v1, v2, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 1776
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-virtual {v1, v3}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1777
    const/4 v1, 0x1

    return v1

    .line 1780
    .end local v0    # "oldScreenOn":Z
    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return v1
.end method

.method public static createRenderThread(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1195
    invoke-static {p0}, Landroid/view/ViewRootImpl;->getFilesDirAbsolutePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, "filesDirPath":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 1197
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/view/ViewRootImpl;->renderThreadInfoFN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1198
    .local v1, "_RenderThreadInfoFile":Ljava/io/File;
    invoke-static {p0, p1}, Landroid/view/ViewRootImpl;->isSameAppVersionWithStored(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1199
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1200
    return-void

    .line 1203
    :cond_1
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "RenderThreadCreator"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v2, Landroid/view/ViewRootImpl;->renderThreadCreater:Landroid/os/HandlerThread;

    .line 1204
    sget-object v2, Landroid/view/ViewRootImpl;->renderThreadCreater:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1205
    new-instance v2, Landroid/view/ViewRootImpl$1;

    sget-object v3, Landroid/view/ViewRootImpl;->renderThreadCreater:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v1, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/os/Looper;Ljava/io/File;Landroid/content/Context;)V

    .line 1224
    .local v2, "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1225
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1226
    return-void
.end method

.method private deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7692
    const-string v0, "deliverInputEvent"

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7693
    invoke-virtual {v1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    .line 7692
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 7695
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTouchDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 7696
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 7697
    .local v0, "event":Landroid/view/MotionEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "touchPJ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7698
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7699
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7700
    .local v2, "strtmp":Ljava/lang/String;
    const-wide/16 v3, 0x4

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7701
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 7702
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7705
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "strtmp":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_1

    .line 7706
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 7710
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSendToSynthesizer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7711
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 7711
    .local v0, "stage":Landroid/view/ViewRootImpl$InputStage;
    goto :goto_0

    .line 7713
    .end local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSkipIme()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 7716
    .restart local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :goto_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_4

    .line 7717
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v2, Landroid/view/KeyEvent;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->preDispatch(Landroid/view/KeyEvent;)V

    .line 7720
    :cond_4
    if-eqz v0, :cond_5

    .line 7721
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleWindowFocusChanged()V

    .line 7722
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_1

    .line 7724
    :cond_5
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7726
    :goto_1
    return-void
.end method

.method private destroyHardwareRenderer()V
    .locals 4

    .line 7436
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 7438
    .local v0, "hardwareRenderer":Landroid/view/ThreadedRenderer;
    if-eqz v0, :cond_1

    .line 7439
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 7440
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 7442
    :cond_0
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 7443
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setRequested(Z)V

    .line 7445
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 7446
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 7448
    :cond_1
    return-void
.end method

.method private dipToPx(I)I
    .locals 3
    .param p1, "dip"    # I

    .line 1956
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1957
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V
    .locals 17
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p9, "backDropFrame"    # Landroid/graphics/Rect;
    .param p10, "forceLayout"    # Z
    .param p11, "alwaysConsumeNavBar"    # Z
    .param p12, "displayId"    # I
    .param p13, "displayCutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 7463
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mDragResizing:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eqz v0, :cond_1

    .line 7464
    invoke-virtual {v2, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 7465
    .local v10, "fullscreen":Z
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v11

    .line 7466
    :try_start_0
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 7467
    iget-object v12, v1, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowCallbacks;

    invoke-interface {v12, v8, v10, v5, v6}, Landroid/view/WindowCallbacks;->onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 7466
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7470
    .end local v0    # "i":I
    :cond_0
    monitor-exit v11

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 7473
    .end local v10    # "fullscreen":Z
    :cond_1
    :goto_1
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    if-eqz p7, :cond_2

    const/4 v11, 0x5

    goto :goto_2

    :cond_2
    const/4 v11, 0x4

    :goto_2
    invoke-virtual {v0, v11}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7474
    .local v0, "msg":Landroid/os/Message;
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v11, :cond_3

    .line 7475
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v11, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7476
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v11, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7477
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v11, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7478
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v11, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7480
    :cond_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v11

    .line 7481
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    if-ne v12, v13, :cond_4

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    .line 7482
    .local v9, "sameProcessCall":Z
    :goto_3
    if-eqz v9, :cond_5

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_5
    move-object v12, v2

    :goto_4
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 7483
    if-eqz v9, :cond_6

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_6
    move-object v12, v4

    :goto_5
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 7484
    if-eqz v9, :cond_7

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_7
    move-object v12, v5

    :goto_6
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 7485
    if-eqz v9, :cond_8

    if-eqz v7, :cond_8

    .line 7486
    new-instance v12, Landroid/util/MergedConfiguration;

    invoke-direct {v12, v7}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    goto :goto_7

    :cond_8
    move-object v12, v7

    :goto_7
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 7487
    if-eqz v9, :cond_9

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_8

    :cond_9
    move-object v12, v3

    :goto_8
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 7488
    if-eqz v9, :cond_a

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_a
    move-object v12, v6

    :goto_9
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 7489
    if-eqz v9, :cond_b

    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v13, p6

    invoke-direct {v12, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_a

    :cond_b
    move-object/from16 v13, p6

    move-object v12, v13

    :goto_a
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 7490
    if-eqz v9, :cond_c

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_b

    :cond_c
    move-object v12, v8

    :goto_b
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    .line 7491
    invoke-virtual/range {p13 .. p13}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v12

    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg9:Ljava/lang/Object;

    .line 7492
    move/from16 v12, p10

    iput v12, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 7493
    move/from16 v14, p11

    iput v14, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 7494
    move/from16 v15, p12

    iput v15, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 7495
    iput-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7496
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7497
    return-void
.end method

.method private draw(Z)Z
    .locals 29
    .param p1, "fullRedrawNeeded"    # Z

    move-object/from16 v9, p0

    .line 3526
    iget-object v10, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 3527
    .local v10, "surface":Landroid/view/Surface;
    invoke-virtual {v10}, Landroid/view/Surface;->isValid()Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_0

    .line 3528
    return v11

    .line 3535
    :cond_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    const/4 v12, 0x1

    if-nez v0, :cond_2

    .line 3536
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3537
    :try_start_0
    sput-boolean v12, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 3538
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3539
    .local v0, "count":I
    move v2, v11

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3540
    iget-object v3, v9, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget-object v4, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 3539
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3542
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3545
    :cond_2
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v11}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 3547
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    if-eqz v1, :cond_4

    .line 3548
    iget-boolean v1, v9, Landroid/view/ViewRootImpl;->SCROLL_BOOST_SS_ENABLE:Z

    if-nez v1, :cond_3

    iget-boolean v1, v9, Landroid/view/ViewRootImpl;->mHaveMoveEvent:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v9, Landroid/view/ViewRootImpl;->mIsPerfLockAcquired:Z

    if-nez v1, :cond_3

    .line 3549
    iput-boolean v12, v9, Landroid/view/ViewRootImpl;->mIsPerfLockAcquired:Z

    .line 3550
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_3

    .line 3551
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3552
    .local v1, "currentPackage":Ljava/lang/String;
    iget-object v2, v9, Landroid/view/ViewRootImpl;->mPerf:Landroid/util/BoostFramework;

    const/16 v3, 0x1080

    const/4 v4, -0x1

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 3555
    .end local v1    # "currentPackage":Ljava/lang/String;
    :cond_3
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v11, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 3556
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 3559
    :cond_4
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_5

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v12

    goto :goto_2

    :cond_5
    move v1, v11

    :goto_2
    move v13, v1

    .line 3561
    .local v13, "animating":Z
    if-eqz v13, :cond_6

    .line 3562
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .local v1, "curScrollY":I
    goto :goto_3

    .line 3564
    .end local v1    # "curScrollY":I
    :cond_6
    iget v1, v9, Landroid/view/ViewRootImpl;->mScrollY:I

    .restart local v1    # "curScrollY":I
    :goto_3
    move v14, v1

    .line 3566
    .end local v1    # "curScrollY":I
    .local v14, "curScrollY":I
    iget v1, v9, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eq v1, v14, :cond_8

    .line 3567
    iput v14, v9, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 3568
    const/4 v1, 0x1

    .line 3569
    .end local p1    # "fullRedrawNeeded":Z
    .local v1, "fullRedrawNeeded":Z
    iget-object v2, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v2, :cond_7

    .line 3570
    iget-object v2, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    iget v3, v9, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v2, v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 3574
    :cond_7
    move v15, v1

    goto :goto_4

    .end local v1    # "fullRedrawNeeded":Z
    .restart local p1    # "fullRedrawNeeded":Z
    :cond_8
    move/from16 v15, p1

    .end local p1    # "fullRedrawNeeded":Z
    .local v15, "fullRedrawNeeded":Z
    :goto_4
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v8, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 3575
    .local v8, "appScale":F
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v7, v1, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 3577
    .local v7, "scalingRequired":Z
    iget-object v6, v9, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 3578
    .local v6, "dirty":Landroid/graphics/Rect;
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v1, :cond_a

    .line 3580
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 3581
    if-eqz v13, :cond_9

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_9

    .line 3582
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3584
    :cond_9
    return v11

    .line 3587
    :cond_a
    if-eqz v15, :cond_b

    .line 3588
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v12, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 3589
    iget v1, v9, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v8

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, v9, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    add-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v6, v11, v11, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3601
    :cond_b
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    .line 3603
    iget v1, v9, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I

    neg-int v1, v1

    .line 3604
    .local v1, "xOffset":I
    iget v2, v9, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    neg-int v2, v2

    add-int/2addr v2, v14

    .line 3605
    .local v2, "yOffset":I
    iget-object v5, v9, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 3606
    .local v5, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v5, :cond_c

    iget-object v3, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    goto :goto_5

    :cond_c
    move-object v3, v0

    :goto_5
    move-object v4, v3

    .line 3607
    .local v4, "surfaceInsets":Landroid/graphics/Rect;
    if-eqz v4, :cond_d

    .line 3608
    iget v3, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    .line 3609
    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 3612
    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v12, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v3, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 3615
    .end local v1    # "xOffset":I
    .end local v2    # "yOffset":I
    .local v3, "xOffset":I
    .local v12, "yOffset":I
    :cond_d
    move v3, v1

    move v12, v2

    const/4 v1, 0x0

    .line 3616
    .local v1, "accessibilityFocusDirty":Z
    iget-object v2, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 3617
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_f

    .line 3618
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 3619
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {v9, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v16

    .line 3620
    .local v16, "hasFocus":Z
    if-nez v16, :cond_e

    .line 3621
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3623
    :cond_e
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 3624
    const/4 v1, 0x1

    .line 3628
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "accessibilityFocusDirty":Z
    .end local v16    # "hasFocus":Z
    .local v11, "accessibilityFocusDirty":Z
    :cond_f
    move v11, v1

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 3629
    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v16

    const-wide/32 v18, 0xf4240

    move-object/from16 v23, v2

    div-long v1, v16, v18

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v23, "drawable":Landroid/graphics/drawable/Drawable;
    iput-wide v1, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 3631
    const/16 v24, 0x0

    .line 3632
    .local v24, "useAsyncReport":Z
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, v9, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v0, :cond_11

    if-eqz v11, :cond_10

    goto :goto_6

    .line 3708
    :cond_10
    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v16, v23

    goto/16 :goto_b

    .line 3633
    :cond_11
    :goto_6
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_19

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3635
    if-nez v11, :cond_13

    iget-boolean v0, v9, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    if-eqz v0, :cond_12

    goto :goto_7

    :cond_12
    const/4 v0, 0x0

    goto :goto_8

    :cond_13
    :goto_7
    const/4 v0, 0x1

    .line 3636
    .local v0, "invalidateRoot":Z
    :goto_8
    const/4 v1, 0x0

    iput-boolean v1, v9, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    .line 3639
    iput-boolean v1, v9, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 3641
    iget v1, v9, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-ne v1, v12, :cond_14

    iget v1, v9, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    if-eq v1, v3, :cond_15

    .line 3642
    :cond_14
    iput v12, v9, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 3643
    iput v3, v9, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    .line 3644
    const/4 v0, 0x1

    .line 3647
    :cond_15
    if-eqz v0, :cond_16

    .line 3648
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v1}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 3651
    :cond_16
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 3655
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->updateContentDrawBounds()Z

    move-result v1

    .line 3657
    .local v1, "updated":Z
    iget-boolean v2, v9, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v2, :cond_17

    .line 3661
    iget-object v2, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    move/from16 v25, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    goto :goto_9

    .line 3664
    :cond_17
    move/from16 v25, v3

    .end local v3    # "xOffset":I
    .local v25, "xOffset":I
    :goto_9
    if-eqz v1, :cond_18

    .line 3665
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestDrawWindow()V

    .line 3668
    :cond_18
    const/16 v24, 0x1

    .line 3671
    iget-object v2, v9, Landroid/view/ViewRootImpl;->mNextRtFrameCallback:Landroid/view/ThreadedRenderer$FrameDrawingCallback;

    .line 3672
    .local v2, "callback":Landroid/view/ThreadedRenderer$FrameDrawingCallback;
    const/4 v3, 0x0

    iput-object v3, v9, Landroid/view/ViewRootImpl;->mNextRtFrameCallback:Landroid/view/ThreadedRenderer$FrameDrawingCallback;

    .line 3673
    iget-object v3, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    move/from16 v26, v0

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .end local v0    # "invalidateRoot":Z
    .local v26, "invalidateRoot":Z
    move/from16 v27, v1

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .end local v1    # "updated":Z
    .local v27, "updated":Z
    invoke-virtual {v3, v0, v1, v9, v2}, Landroid/view/ThreadedRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$DrawCallbacks;Landroid/view/ThreadedRenderer$FrameDrawingCallback;)V

    .line 3674
    .end local v2    # "callback":Landroid/view/ThreadedRenderer$FrameDrawingCallback;
    .end local v26    # "invalidateRoot":Z
    .end local v27    # "updated":Z
    nop

    .line 3708
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v16, v23

    move/from16 v17, v25

    goto/16 :goto_b

    .line 3683
    .end local v25    # "xOffset":I
    .restart local v3    # "xOffset":I
    :cond_19
    move/from16 v25, v3

    .end local v3    # "xOffset":I
    .restart local v25    # "xOffset":I
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_1a

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 3684
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 3685
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 3686
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3689
    :try_start_1
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget v1, v9, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, v9, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v3, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v28, v5

    :try_start_2
    iget-object v5, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .end local v5    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v28, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v4

    invoke-virtual/range {v16 .. v21}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3694
    nop

    .line 3696
    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3697
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3698
    const/4 v1, 0x0

    return v1

    .line 3691
    :catch_0
    move-exception v0

    goto :goto_a

    .end local v28    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "params":Landroid/view/WindowManager$LayoutParams;
    :catch_1
    move-exception v0

    move-object/from16 v28, v5

    .line 3692
    .end local v5    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v28    # "params":Landroid/view/WindowManager$LayoutParams;
    :goto_a
    invoke-direct {v9, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 3693
    const/4 v1, 0x0

    return v1

    .line 3701
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v28    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1a
    move-object/from16 v28, v5

    .end local v5    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v28    # "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v1, v9

    move-object/from16 v16, v23

    move-object v2, v10

    .end local v23    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v16, "drawable":Landroid/graphics/drawable/Drawable;
    move/from16 v17, v25

    .end local v25    # "xOffset":I
    .local v17, "xOffset":I
    move-object/from16 v18, v4

    move/from16 v4, v17

    .end local v4    # "surfaceInsets":Landroid/graphics/Rect;
    .local v18, "surfaceInsets":Landroid/graphics/Rect;
    move-object/from16 v19, v28

    move v5, v12

    .end local v28    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v19, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v20, v6

    move v6, v7

    .end local v6    # "dirty":Landroid/graphics/Rect;
    .local v20, "dirty":Landroid/graphics/Rect;
    move/from16 v21, v7

    move-object/from16 v7, v20

    .end local v7    # "scalingRequired":Z
    .local v21, "scalingRequired":Z
    move/from16 v22, v8

    move-object/from16 v8, v18

    .end local v8    # "appScale":F
    .local v22, "appScale":F
    invoke-direct/range {v1 .. v8}, Landroid/view/ViewRootImpl;->drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3703
    const/4 v1, 0x0

    return v1

    .line 3708
    :cond_1b
    :goto_b
    if-eqz v13, :cond_1c

    .line 3709
    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3710
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3712
    :cond_1c
    return v24
.end method

.method private drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3839
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 3840
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3841
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3842
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 3843
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3844
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3846
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 3847
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3849
    :cond_2
    :goto_0
    return-void
.end method

.method private drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 17
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "scalingRequired"    # Z
    .param p6, "dirty"    # Landroid/graphics/Rect;
    .param p7, "surfaceInsets"    # Landroid/graphics/Rect;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    .line 3726
    move-object/from16 v7, p7

    move v0, v4

    .line 3727
    .local v0, "dirtyXOffset":I
    move v8, v5

    .line 3728
    .local v8, "dirtyYOffset":I
    if-eqz v7, :cond_0

    .line 3729
    iget v9, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v9

    .line 3730
    iget v9, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    .line 3734
    .end local v0    # "dirtyXOffset":I
    .local v8, "dirtyXOffset":I
    .local v9, "dirtyYOffset":I
    :cond_0
    move v9, v8

    move v8, v0

    neg-int v0, v8

    neg-int v10, v9

    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v6, v0, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3735
    iget v0, v6, Landroid/graphics/Rect;->left:I

    .line 3736
    .local v0, "left":I
    iget v10, v6, Landroid/graphics/Rect;->top:I

    .line 3737
    .local v10, "top":I
    iget v13, v6, Landroid/graphics/Rect;->right:I

    .line 3738
    .local v13, "right":I
    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    .line 3740
    .local v14, "bottom":I
    iget-object v15, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v15, v6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v15

    .line 3744
    .local v15, "canvas":Landroid/graphics/Canvas;
    iget v12, v6, Landroid/graphics/Rect;->left:I

    if-ne v0, v12, :cond_1

    iget v12, v6, Landroid/graphics/Rect;->top:I

    if-ne v10, v12, :cond_1

    iget v12, v6, Landroid/graphics/Rect;->right:I

    if-ne v13, v12, :cond_1

    iget v12, v6, Landroid/graphics/Rect;->bottom:I

    if-eq v14, v12, :cond_2

    .line 3746
    :cond_1
    iput-boolean v11, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 3750
    :cond_2
    iget v12, v1, Landroid/view/ViewRootImpl;->mDensity:I

    invoke-virtual {v15, v12}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3762
    .end local v0    # "left":I
    .end local v10    # "top":I
    .end local v13    # "right":I
    .end local v14    # "bottom":I
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 3763
    nop

    .line 3762
    move-object v10, v15

    .line 3780
    .end local v15    # "canvas":Landroid/graphics/Canvas;
    .local v10, "canvas":Landroid/graphics/Canvas;
    :try_start_1
    invoke-virtual {v10}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 3784
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 3781
    :cond_4
    :goto_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3784
    :goto_1
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 3785
    iput-boolean v12, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 3786
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v0, Landroid/view/View;->mPrivateFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3795
    neg-int v0, v4

    int-to-float v0, v0

    neg-int v12, v5

    int-to-float v12, v12

    :try_start_2
    invoke-virtual {v10, v0, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3796
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_5

    .line 3797
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, v10}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 3799
    :cond_5
    if-eqz p5, :cond_6

    iget v0, v1, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v10, v0}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 3800
    const/4 v13, 0x0

    iput-boolean v13, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 3802
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3804
    invoke-direct {v1, v10}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3806
    :try_start_3
    iget-boolean v0, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v0, :cond_7

    .line 3808
    const/4 v13, 0x0

    iput-boolean v13, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3813
    :cond_7
    :try_start_4
    invoke-virtual {v2, v10}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3819
    nop

    .line 3825
    return v11

    .line 3814
    :catch_0
    move-exception v0

    .end local v8    # "dirtyXOffset":I
    .end local v9    # "dirtyYOffset":I
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .end local p0    # "this":Landroid/view/ViewRootImpl;
    .end local p1    # "surface":Landroid/view/Surface;
    .end local p2    # "attachInfo":Landroid/view/View$AttachInfo;
    .end local p3    # "xoff":I
    .end local p4    # "yoff":I
    .end local p5    # "scalingRequired":Z
    .end local p6    # "dirty":Landroid/graphics/Rect;
    .end local p7    # "surfaceInsets":Landroid/graphics/Rect;
    move-object v13, v0

    .line 3815
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v13, v1, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v14, "Could not unlock surface"

    invoke-static {v13, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3816
    iput-boolean v11, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 3818
    const/4 v11, 0x0

    return v11

    .line 3806
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "dirtyXOffset":I
    .restart local v9    # "dirtyYOffset":I
    .restart local v10    # "canvas":Landroid/graphics/Canvas;
    .restart local p0    # "this":Landroid/view/ViewRootImpl;
    .restart local p1    # "surface":Landroid/view/Surface;
    .restart local p2    # "attachInfo":Landroid/view/View$AttachInfo;
    .restart local p3    # "xoff":I
    .restart local p4    # "yoff":I
    .restart local p5    # "scalingRequired":Z
    .restart local p6    # "dirty":Landroid/graphics/Rect;
    .restart local p7    # "surfaceInsets":Landroid/graphics/Rect;
    :catchall_0
    move-exception v0

    :try_start_5
    iget-boolean v13, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v13, :cond_8

    .line 3808
    const/4 v13, 0x0

    iput-boolean v13, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_8
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3812
    :catchall_1
    move-exception v0

    .line 3813
    :try_start_6
    invoke-virtual {v2, v10}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    .line 3819
    nop

    .line 3818
    throw v0

    .line 3762
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 3754
    :catch_1
    move-exception v0

    .line 3755
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_7
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v13, "Could not lock surface"

    invoke-static {v10, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3759
    iput-boolean v11, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3760
    nop

    .line 3762
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 3760
    const/4 v10, 0x0

    return v10

    .line 3751
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 3752
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_8
    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3753
    nop

    .line 3762
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 3753
    const/4 v10, 0x0

    return v10

    .line 3762
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_3
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    throw v0
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    .line 7270
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7271
    if-nez p3, :cond_0

    .line 7272
    const-string/jumbo v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7273
    return-void

    .line 7275
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7276
    instance-of v0, p3, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 7277
    return-void

    .line 7279
    :cond_1
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    .line 7280
    .local v0, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7281
    .local v1, "N":I
    if-gtz v1, :cond_2

    .line 7282
    return-void

    .line 7284
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7285
    const/4 v2, 0x0

    .line 7285
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 7286
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 7285
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7288
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .locals 12
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1072
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 1073
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 1076
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_0

    return-void

    .line 1079
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1082
    .local v0, "hardwareAccelerated":Z
    :goto_0
    if-eqz v0, :cond_e

    .line 1083
    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1084
    return-void

    .line 1096
    :cond_2
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    .line 1098
    .local v3, "fakeHwAccelerated":Z
    :goto_1
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v1

    .line 1101
    .local v4, "forceHwAccelerated":Z
    :goto_2
    if-eqz v3, :cond_5

    .line 1105
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    goto/16 :goto_8

    .line 1106
    :cond_5
    sget-boolean v5, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    if-eqz v5, :cond_6

    sget-boolean v5, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    if-eqz v5, :cond_e

    if-eqz v4, :cond_e

    .line 1108
    :cond_6
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v5, :cond_7

    .line 1109
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v5}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 1112
    :cond_7
    iget-object v5, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1113
    .local v5, "insets":Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-nez v6, :cond_9

    iget v6, v5, Landroid/graphics/Rect;->right:I

    if-nez v6, :cond_9

    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-nez v6, :cond_9

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    move v6, v1

    goto :goto_4

    :cond_9
    :goto_3
    move v6, v2

    .line 1115
    .local v6, "hasSurfaceInsets":Z
    :goto_4
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_b

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    move v7, v1

    goto :goto_6

    :cond_b
    :goto_5
    move v7, v2

    .line 1116
    .local v7, "translucent":Z
    :goto_6
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 1117
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1118
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v8

    if-ne v8, v2, :cond_c

    move v1, v2

    nop

    .line 1125
    .local v1, "wideGamut":Z
    :cond_c
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/view/ViewRootImpl;->seekForPreCreatedRenderThread(Ljava/lang/String;Z)Landroid/view/ThreadedRenderer;

    move-result-object v8

    .line 1126
    .local v8, "preCreatedRenderThread":Landroid/view/ThreadedRenderer;
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_d

    move-object v10, v8

    goto :goto_7

    :cond_d
    iget-object v10, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 1127
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1126
    invoke-static {v10, v7, v11}, Landroid/view/ThreadedRenderer;->create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;

    move-result-object v10

    :goto_7
    iput-object v10, v9, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 1129
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v9, v1}, Landroid/view/ThreadedRenderer;->setWideGamut(Z)V

    .line 1130
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v9, :cond_e

    .line 1132
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v7, v10, v1}, Landroid/view/ViewRootImpl;->storeRenderThreadInfo(Landroid/content/Context;ZLjava/lang/String;Z)V

    .line 1134
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v10, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iput-boolean v2, v9, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 1139
    .end local v1    # "wideGamut":Z
    .end local v3    # "fakeHwAccelerated":Z
    .end local v4    # "forceHwAccelerated":Z
    .end local v5    # "insets":Landroid/graphics/Rect;
    .end local v6    # "hasSurfaceInsets":Z
    .end local v7    # "translucent":Z
    .end local v8    # "preCreatedRenderThread":Landroid/view/ThreadedRenderer;
    :cond_e
    :goto_8
    return-void
.end method

.method private endDragResizing()V
    .locals 3

    .line 8761
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v0, :cond_1

    .line 8762
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 8763
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 8764
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 8765
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowCallbacks;

    invoke-interface {v2}, Landroid/view/WindowCallbacks;->onWindowDragResizeEnd()V

    .line 8764
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8768
    .end local v0    # "i":I
    :cond_0
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 8770
    :cond_1
    return-void
.end method

.method private ensureInsetsNonNegative(Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "insets"    # Landroid/graphics/Rect;
    .param p2, "kind"    # Ljava/lang/String;

    .line 1928
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 1934
    :cond_0
    return-object p1

    .line 1929
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 1930
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 1931
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1932
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1929
    return-object v0
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 1
    .param p1, "inTouchMode"    # Z

    .line 4693
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4695
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 4696
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 4698
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private enterTouchMode()Z
    .locals 5

    .line 4702
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4706
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 4707
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4708
    invoke-static {v0}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 4709
    .local v2, "ancestorToTakeFocus":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 4713
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v1

    return v1

    .line 4717
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, v1}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    .line 4718
    return v4

    .line 4722
    .end local v0    # "focused":Landroid/view/View;
    .end local v2    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    :cond_1
    return v1
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .param p0, "focused"    # Landroid/view/View;

    .line 4732
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4733
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4734
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 4735
    .local v1, "vgParent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_0

    .line 4736
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4737
    return-object v1

    .line 4739
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4740
    return-object v2

    .line 4742
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4744
    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    goto :goto_0

    .line 4745
    :cond_2
    return-object v2
.end method

.method private findFocusedVirtualNode(Landroid/view/accessibility/AccessibilityNodeProvider;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10
    .param p1, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 2995
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2997
    .local v0, "focusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 2998
    return-object v0

    .line 3001
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isAutofillCompatibilityEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3002
    return-object v2

    .line 3007
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 3009
    .local v1, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3010
    return-object v1

    .line 3013
    :cond_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 3014
    .local v3, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v3, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 3016
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 3017
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3018
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v4

    .line 3019
    .local v4, "childNodeIds":Landroid/util/LongArray;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v5

    if-gtz v5, :cond_4

    .line 3020
    goto :goto_0

    .line 3022
    :cond_4
    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v5

    .line 3023
    .local v5, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_7

    .line 3024
    nop

    .line 3025
    invoke-virtual {v4, v6}, Landroid/util/LongArray;->get(I)J

    move-result-wide v7

    .line 3024
    invoke-static {v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v7

    .line 3026
    .local v7, "virtualId":I
    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 3027
    .local v8, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v8, :cond_6

    .line 3028
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3029
    return-object v8

    .line 3031
    :cond_5
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 3023
    .end local v7    # "virtualId":I
    .end local v8    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3034
    .end local v6    # "i":I
    :cond_7
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 3035
    .end local v4    # "childNodeIds":Landroid/util/LongArray;
    .end local v5    # "childCount":I
    goto :goto_0

    .line 3037
    :cond_8
    return-object v2
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7729
    const-string v0, "deliverInputEvent"

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7730
    invoke-virtual {v1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    .line 7729
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 7732
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v0, :cond_1

    .line 7733
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7734
    .local v0, "handled":Z
    :goto_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 7735
    .end local v0    # "handled":Z
    goto :goto_1

    .line 7736
    :cond_1
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    .line 7739
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7740
    return-void
.end method

.method private fireAccessibilityFocusEventIfHasFocusedNode()V
    .locals 7

    .line 2961
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2962
    return-void

    .line 2964
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2965
    .local v0, "focusedView":Landroid/view/View;
    if-nez v0, :cond_1

    .line 2966
    return-void

    .line 2968
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 2969
    .local v1, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    const/16 v2, 0x8

    if-nez v1, :cond_2

    .line 2970
    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 2972
    :cond_2
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->findFocusedVirtualNode(Landroid/view/accessibility/AccessibilityNodeProvider;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 2973
    .local v3, "focusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v3, :cond_3

    .line 2974
    nop

    .line 2975
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v4

    .line 2974
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    .line 2979
    .local v4, "virtualId":I
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 2981
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v2, v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2982
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2983
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 2984
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2985
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 2986
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2987
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2988
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v0, v2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2989
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 2992
    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "focusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "virtualId":I
    :cond_3
    :goto_0
    return-void
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 4326
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 4327
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4328
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4329
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4330
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4331
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 4330
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4334
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 3885
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3886
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3887
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1110004

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 3889
    .local v1, "resolved":Z
    if-eqz v1, :cond_0

    .line 3890
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, v3, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    .line 3891
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 3894
    .end local v0    # "value":Landroid/util/TypedValue;
    .end local v1    # "resolved":Z
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 3852
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 3853
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 3857
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3858
    .local v1, "host":Landroid/view/View;
    if-eqz v1, :cond_5

    iget-object v3, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v3, :cond_1

    goto :goto_1

    .line 3862
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 3863
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 3864
    invoke-virtual {v1, p1, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 3865
    :cond_2
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v5, :cond_4

    .line 3866
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3872
    :goto_0
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3873
    .local v5, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v6, v6, Landroid/view/ViewRootImpl;->mScrollY:I

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 3874
    iget v6, v5, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v6, v6

    iget v7, v5, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 3875
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v6, v6, Landroid/view/ViewRootImpl;->mWidth:I

    iget-object v7, v5, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v7, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1, v2, v2, v6, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3878
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3880
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    return v2

    .line 3868
    .end local v5    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_4
    return v2

    .line 3859
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_5
    :goto_1
    return v2

    .line 3854
    .end local v1    # "host":Landroid/view/View;
    :cond_6
    :goto_2
    return v2
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 7055
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 7058
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 7059
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 7061
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0

    .line 7056
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAutofillManager()Landroid/view/autofill/AutofillManager;
    .locals 3

    .line 7065
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 7066
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 7067
    .local v0, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 7071
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/autofill/AutofillManager;

    .line 7072
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    .line 7071
    return-object v1

    .line 7075
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .line 8349
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 8350
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 8352
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 8353
    .local v0, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 8354
    move-object v1, p1

    .line 8355
    .local v1, "firstCurrent":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_2

    .line 8356
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8357
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8358
    .local v2, "firstCurrentParent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 8359
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    goto :goto_1

    .line 8361
    :cond_1
    const/4 v1, 0x0

    .line 8363
    .end local v2    # "firstCurrentParent":Landroid/view/ViewParent;
    :goto_1
    goto :goto_0

    .line 8364
    :cond_2
    move-object v2, p2

    .line 8365
    .local v2, "secondCurrent":Landroid/view/View;
    :goto_2
    if-eqz v2, :cond_5

    .line 8366
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8367
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 8368
    return-object v2

    .line 8370
    :cond_3
    iget-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8371
    .local v3, "secondCurrentParent":Landroid/view/ViewParent;
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_4

    .line 8372
    move-object v2, v3

    check-cast v2, Landroid/view/View;

    goto :goto_3

    .line 8374
    :cond_4
    const/4 v2, 0x0

    .line 8376
    .end local v3    # "secondCurrentParent":Landroid/view/ViewParent;
    :goto_3
    goto :goto_2

    .line 8377
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 8378
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getFilesDirAbsolutePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1241
    const/4 v0, 0x0

    .line 1243
    .local v0, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1246
    goto :goto_0

    .line 1244
    :catch_0
    move-exception v1

    .line 1245
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1247
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private static getGfxInfo(Landroid/view/View;[I)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # [I

    .line 7298
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    .line 7299
    .local v0, "renderNode":Landroid/view/RenderNode;
    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 7300
    if-eqz v0, :cond_0

    .line 7301
    aget v2, p1, v3

    invoke-virtual {v0}, Landroid/view/RenderNode;->getDebugSize()I

    move-result v4

    add-int/2addr v2, v4

    aput v2, p1, v3

    .line 7304
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 7305
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    .line 7307
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 7308
    .local v3, "count":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 7309
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 7308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7312
    .end local v1    # "i":I
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "count":I
    :cond_1
    return-void
.end method

.method private getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 1784
    const/4 v0, 0x0

    .line 1786
    .local v0, "vis":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1787
    or-int/lit16 v0, v0, 0x500

    .line 1789
    :cond_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1790
    or-int/lit16 v0, v0, 0x300

    .line 1792
    :cond_1
    return v0
.end method

.method private static getRootMeasureSpec(II)I
    .locals 1
    .param p0, "windowSize"    # I
    .param p1, "rootDimension"    # I

    .line 3291
    const/high16 v0, 0x40000000    # 2.0f

    packed-switch p1, :pswitch_data_0

    .line 3303
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 3295
    :pswitch_0
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3296
    .local v0, "measureSpec":I
    goto :goto_0

    .line 3299
    .end local v0    # "measureSpec":I
    :pswitch_1
    const/high16 v0, -0x80000000

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3300
    .restart local v0    # "measureSpec":I
    nop

    .line 3303
    :goto_0
    nop

    .line 3306
    return v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/HandlerActionQueue;
    .locals 2

    .line 8731
    sget-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HandlerActionQueue;

    .line 8732
    .local v0, "rq":Landroid/view/HandlerActionQueue;
    if-eqz v0, :cond_0

    .line 8733
    return-object v0

    .line 8735
    :cond_0
    new-instance v1, Landroid/view/HandlerActionQueue;

    invoke-direct {v1}, Landroid/view/HandlerActionQueue;-><init>()V

    move-object v0, v1

    .line 8736
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8737
    return-object v0
.end method

.method private getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 9
    .param p2, "secondLayoutRequests"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 3214
    .local p1, "layoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3215
    .local v0, "numViewsRequestingLayout":I
    const/4 v1, 0x0

    .line 3216
    .local v1, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_0
    const/16 v4, 0x1000

    if-ge v1, v0, :cond_6

    .line 3217
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3218
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_5

    iget-object v6, v5, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_5

    if-nez p2, :cond_0

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_5

    .line 3221
    :cond_0
    const/4 v4, 0x0

    .line 3222
    .local v4, "gone":Z
    move-object v6, v5

    .line 3224
    .local v6, "parent":Landroid/view/View;
    :goto_1
    if-eqz v6, :cond_3

    .line 3225
    iget v7, v6, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 3226
    const/4 v4, 0x1

    .line 3227
    goto :goto_2

    .line 3229
    :cond_1
    iget-object v7, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_2

    .line 3230
    iget-object v7, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    move-object v6, v7

    check-cast v6, Landroid/view/View;

    goto :goto_1

    .line 3232
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 3235
    :cond_3
    :goto_2
    if-nez v4, :cond_5

    .line 3236
    if-nez v3, :cond_4

    .line 3237
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 3239
    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3216
    .end local v4    # "gone":Z
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/View;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3243
    .end local v1    # "i":I
    :cond_6
    if-nez p2, :cond_9

    .line 3245
    nop

    .local v2, "i":I
    :goto_3
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-ge v1, v0, :cond_9

    .line 3246
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3247
    .local v2, "view":Landroid/view/View;
    :goto_4
    if-eqz v2, :cond_8

    iget v5, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_8

    .line 3249
    iget v5, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, -0x1001

    iput v5, v2, Landroid/view/View;->mPrivateFlags:I

    .line 3250
    iget-object v5, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_7

    .line 3251
    iget-object v5, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    move-object v2, v5

    check-cast v2, Landroid/view/View;

    goto :goto_4

    .line 3253
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 3245
    .end local v2    # "view":Landroid/view/View;
    :cond_8
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_3

    .line 3258
    .end local v2    # "i":I
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3259
    return-object v3
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 6866
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_e

    .line 6867
    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    .line 6871
    .local v0, "what":I
    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 6872
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 6873
    iget-object v1, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    goto :goto_0

    .line 6875
    :cond_0
    if-ne v0, v2, :cond_1

    .line 6876
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 6878
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v1, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    .line 6881
    :goto_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 6885
    sget-boolean v1, Landroid/view/View;->sCascadedDragDrop:Z

    if-eqz v1, :cond_2

    .line 6886
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 6888
    :cond_2
    invoke-virtual {p0, v3, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    goto/16 :goto_5

    .line 6891
    :cond_3
    const/4 v1, 0x2

    const/4 v4, 0x3

    if-eq v0, v1, :cond_4

    if-ne v0, v4, :cond_7

    .line 6892
    :cond_4
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v6, p1, Landroid/view/DragEvent;->mX:F

    iget v7, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 6893
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v5, :cond_5

    .line 6894
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 6897
    :cond_5
    iget v5, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v5, :cond_6

    .line 6898
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    const/4 v6, 0x0

    iget v7, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->offset(FF)V

    .line 6901
    :cond_6
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iput v5, p1, Landroid/view/DragEvent;->mX:F

    .line 6902
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iput v5, p1, Landroid/view/DragEvent;->mY:F

    .line 6906
    :cond_7
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 6908
    .local v5, "prevDragView":Landroid/view/View;
    if-ne v0, v4, :cond_8

    iget-object v6, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    if-eqz v6, :cond_8

    .line 6909
    iget-object v6, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->prepareToEnterProcess()V

    .line 6913
    :cond_8
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    .line 6915
    .local v6, "result":Z
    if-ne v0, v1, :cond_9

    iget-boolean v1, p1, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    if-nez v1, :cond_9

    .line 6918
    invoke-virtual {p0, v3, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    .line 6922
    :cond_9
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v5, v1, :cond_c

    .line 6924
    if-eqz v5, :cond_a

    .line 6925
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v7}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    goto :goto_1

    .line 6930
    :catch_0
    move-exception v1

    goto :goto_2

    .line 6927
    :cond_a
    :goto_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 6928
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v7}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6932
    :cond_b
    goto :goto_3

    .line 6930
    :goto_2
    nop

    .line 6931
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v8, "Unable to note drag target change"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6936
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_c
    :goto_3
    if-ne v0, v4, :cond_d

    .line 6938
    :try_start_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reporting drop result: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6939
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v4, v6}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6942
    goto :goto_4

    .line 6940
    :catch_1
    move-exception v1

    .line 6941
    .restart local v1    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v7, "Unable to report drop result"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6946
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_d
    :goto_4
    if-ne v0, v2, :cond_e

    .line 6947
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 6948
    invoke-virtual {p0, v3}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    .line 6949
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v1, Landroid/view/View$AttachInfo;->mDragToken:Landroid/os/IBinder;

    .line 6950
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    if-eqz v1, :cond_e

    .line 6951
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 6952
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v1, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    .line 6957
    .end local v0    # "what":I
    .end local v5    # "prevDragView":Landroid/view/View;
    .end local v6    # "result":Z
    :cond_e
    :goto_5
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 6958
    return-void
.end method

.method private handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .locals 2
    .param p1, "e"    # Landroid/view/Surface$OutOfResourcesException;

    .line 3041
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "OutOfResourcesException initializing HW surface"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3043
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3044
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 3045
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "No processes killed for memory; killing self"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3049
    :cond_0
    goto :goto_0

    .line 3048
    :catch_0
    move-exception v0

    .line 3050
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 3051
    return-void
.end method

.method private handlePointerCaptureChanged(Z)V
    .locals 1
    .param p1, "hasCapture"    # Z

    .line 4101
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-ne v0, p1, :cond_0

    .line 4102
    return-void

    .line 4104
    :cond_0
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    .line 4105
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4106
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 4108
    :cond_1
    return-void
.end method

.method private handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 16
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    move-object/from16 v0, p0

    .line 8224
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 8225
    .local v1, "focusedHost":Landroid/view/View;
    if-eqz v1, :cond_9

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 8230
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 8231
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 8233
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 8234
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 8235
    invoke-virtual {v1, v3}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 8236
    return-void

    .line 8241
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v5

    .line 8242
    .local v5, "changes":I
    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    .line 8244
    return-void

    .line 8247
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    .line 8248
    .local v6, "eventSourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v8

    .line 8251
    .local v8, "changedViewId":I
    const/4 v9, 0x0

    .line 8252
    .local v9, "hostInSubtree":Z
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 8253
    .local v10, "root":Landroid/view/View;
    :goto_0
    if-eqz v10, :cond_5

    if-nez v9, :cond_5

    .line 8254
    invoke-virtual {v10}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v11

    if-ne v8, v11, :cond_3

    .line 8255
    const/4 v9, 0x1

    goto :goto_0

    .line 8257
    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 8258
    .local v11, "parent":Landroid/view/ViewParent;
    instance-of v12, v11, Landroid/view/View;

    if-eqz v12, :cond_4

    .line 8259
    move-object v10, v11

    check-cast v10, Landroid/view/View;

    goto :goto_1

    .line 8261
    :cond_4
    const/4 v10, 0x0

    .line 8263
    .end local v11    # "parent":Landroid/view/ViewParent;
    :goto_1
    goto :goto_0

    .line 8267
    :cond_5
    if-nez v9, :cond_6

    .line 8268
    return-void

    .line 8271
    :cond_6
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v11

    .line 8272
    .local v11, "focusedSourceNodeId":J
    invoke-static {v11, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v13

    .line 8275
    .local v13, "focusedChildId":I
    iget-object v14, v0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 8276
    .local v14, "oldBounds":Landroid/graphics/Rect;
    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v15, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 8277
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v15

    iput-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 8278
    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v15, :cond_7

    .line 8280
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 8281
    invoke-virtual {v1, v3}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 8285
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 8286
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    .line 8285
    invoke-virtual {v2, v13, v3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 8287
    invoke-direct {v0, v14}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 8290
    :cond_7
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object v3

    .line 8291
    .local v3, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v14, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 8292
    invoke-virtual {v14, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 8293
    invoke-direct {v0, v14}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    .line 8296
    .end local v3    # "newBounds":Landroid/graphics/Rect;
    :cond_8
    :goto_2
    return-void

    .line 8227
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v5    # "changes":I
    .end local v6    # "eventSourceNodeId":J
    .end local v8    # "changedViewId":I
    .end local v9    # "hostInSubtree":Z
    .end local v10    # "root":Landroid/view/View;
    .end local v11    # "focusedSourceNodeId":J
    .end local v13    # "focusedChildId":I
    .end local v14    # "oldBounds":Landroid/graphics/Rect;
    :cond_9
    :goto_3
    return-void
.end method

.method private handleWindowFocusChanged()V
    .locals 12

    .line 2872
    monitor-enter p0

    .line 2873
    :try_start_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    if-nez v0, :cond_0

    .line 2874
    monitor-exit p0

    return-void

    .line 2876
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    .line 2877
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mUpcomingWindowFocus:Z

    .line 2878
    .local v1, "hasWindowFocus":Z
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mUpcomingInTouchMode:Z

    .line 2879
    .local v2, "inTouchMode":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2881
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_8

    .line 2882
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    .line 2884
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 2885
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    .line 2886
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2887
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2889
    :try_start_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 2890
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    move-object v11, v5

    .line 2891
    .local v11, "surfaceInsets":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget v7, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v8, p0, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual/range {v6 .. v11}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2907
    .end local v4    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    goto :goto_2

    .line 2893
    :catch_0
    move-exception v0

    .line 2894
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v4, "OutOfResourcesException locking surface"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2896
    :try_start_2
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2897
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v4, "No processes killed for memory; killing self"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2902
    :cond_2
    goto :goto_1

    .line 2901
    :catch_1
    move-exception v3

    .line 2904
    :goto_1
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2906
    return-void

    .line 2911
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_3
    :goto_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 2913
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2914
    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 2916
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    .line 2917
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v4, :cond_4

    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v5, :cond_4

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2918
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    .line 2920
    :cond_4
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 2921
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v5}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 2922
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 2923
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, v1}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    .line 2925
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 2926
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->hideTooltip()V

    .line 2932
    :cond_5
    if-eqz v1, :cond_7

    .line 2933
    if-eqz v4, :cond_6

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2934
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    xor-int/lit8 v9, v0, 0x1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v10, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 2940
    :cond_6
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v5, v5, -0x101

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2942
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v5, v5, -0x101

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2946
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 2950
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->fireAccessibilityFocusEventIfHasFocusedNode()V

    goto :goto_3

    .line 2952
    :cond_7
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-eqz v3, :cond_8

    .line 2953
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->handlePointerCaptureChanged(Z)V

    .line 2957
    .end local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    :goto_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$InputStage;->onWindowFocusChanged(Z)V

    .line 2958
    return-void

    .line 2879
    .end local v1    # "hasWindowFocus":Z
    .end local v2    # "inTouchMode":Z
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private initNaviges()V
    .locals 3

    .line 7422
    const-string v0, "debug.nubia.naviges"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7423
    .local v0, "debugNaviges":Ljava/lang/String;
    const-string v1, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->DEBUG_NAVIGES:Z

    .line 7424
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mRealSize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 7425
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Landroid/view/ViewRootImpl;->mRotation:I

    .line 7426
    const-string/jumbo v1, "sys.qemu.hw.mainkeys"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7427
    .local v1, "navBarOverride":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7428
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mHasNavigationBar:Z

    goto :goto_0

    .line 7429
    :cond_0
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7430
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mHasNavigationBar:Z

    .line 7432
    :cond_1
    :goto_0
    return-void
.end method

.method private invalidateRectOnScreen(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .line 1550
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 1551
    .local v0, "localDirty":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1552
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 1553
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1557
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1560
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1561
    .local v1, "appScale":F
    iget v2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    float-to-int v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    .line 1563
    .local v2, "intersected":Z
    if-nez v2, :cond_1

    .line 1564
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1566
    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_2

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v3, :cond_3

    .line 1567
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1569
    :cond_3
    return-void
.end method

.method public static invokeFunctor(JZ)V
    .locals 0
    .param p0, "functor"    # J
    .param p2, "waitForCompletion"    # Z

    .line 1039
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->invokeFunctor(JZ)V

    .line 1040
    return-void
.end method

.method private isAutofillUiShowing()Z
    .locals 2

    .line 7079
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    .line 7080
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-nez v0, :cond_0

    .line 7081
    const/4 v1, 0x0

    return v1

    .line 7083
    :cond_0
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillUiShowing()Z

    move-result v1

    return v1
.end method

.method private isInLocalFocusMode()Z
    .locals 2

    .line 979
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isInTouchMode()Z
    .locals 2

    .line 673
    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    .line 674
    .local v0, "windowSession":Landroid/view/IWindowSession;
    if-eqz v0, :cond_0

    .line 676
    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 677
    :catch_0
    move-exception v1

    .line 680
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .line 6787
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 6802
    const/4 v0, 0x0

    return v0

    .line 6800
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private static isSameAppVersionWithStored(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1167
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/view/ViewRootImpl;->appInfoFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v0, "appInfoFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 1169
    const/4 v1, -0x1

    .line 1170
    .local v1, "versionCode":I
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1171
    .local v5, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v6

    .line 1172
    :try_start_2
    invoke-static {v4, v5}, Landroid/view/ViewRootImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1174
    .end local v5    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 1172
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    move-object v7, v4

    goto :goto_0

    .line 1170
    :catch_0
    move-exception v6

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1172
    :catchall_1
    move-exception v7

    move-object v8, v7

    move-object v7, v6

    move-object v6, v8

    :goto_0
    :try_start_4
    invoke-static {v7, v5}, Landroid/view/ViewRootImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v5    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    .line 1173
    .local v5, "ioe":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 1176
    .end local v5    # "ioe":Ljava/lang/Exception;
    :goto_1
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    if-eq v1, v5, :cond_0

    .line 1178
    :try_start_5
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1179
    .local v5, "bw":Ljava/io/BufferedWriter;
    :try_start_6
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v5, v3}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1181
    :try_start_7
    invoke-static {v4, v5}, Landroid/view/ViewRootImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catchall_2
    move-exception v3

    goto :goto_2

    .line 1178
    :catch_2
    move-exception v3

    move-object v4, v3

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1181
    :goto_2
    :try_start_9
    invoke-static {v4, v5}, Landroid/view/ViewRootImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v3

    .line 1182
    :goto_3
    return v2

    .line 1184
    .end local v1    # "versionCode":I
    :cond_0
    nop

    .line 1191
    const/4 v1, 0x1

    return v1

    .line 1185
    :cond_1
    :try_start_a
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 1186
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_b
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1188
    :try_start_c
    invoke-static {v4, v1}, Landroid/view/ViewRootImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_5

    :catchall_3
    move-exception v3

    goto :goto_4

    .line 1185
    :catch_4
    move-exception v3

    move-object v4, v3

    :try_start_d
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1188
    :goto_4
    :try_start_e
    invoke-static {v4, v1}, Landroid/view/ViewRootImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v1

    .line 1189
    :goto_5
    return v2
.end method

.method static isTerminalInputEvent(Landroid/view/InputEvent;)Z
    .locals 5
    .param p0, "event"    # Landroid/view/InputEvent;

    .line 7756
    instance-of v0, p0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 7757
    move-object v0, p0

    check-cast v0, Landroid/view/KeyEvent;

    .line 7758
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 7760
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/MotionEvent;

    .line 7761
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 7762
    .local v3, "action":I
    if-eq v3, v2, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .line 6811
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .line 4317
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 4318
    return v0

    .line 4321
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 4322
    .local v1, "theParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$dznxCZGM2R1fsBljsJKomLjBRoM(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->postDrawFinished()V

    return-void
.end method

.method public static synthetic lambda$performDraw$0(Landroid/view/ViewRootImpl;J)V
    .locals 0
    .param p1, "frameNr"    # J

    .line 3461
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    .line 3462
    return-void
.end method

.method private leaveTouchMode()Z
    .locals 4

    .line 4749
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4750
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4751
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 4752
    .local v0, "focusedView":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 4754
    return v1

    .line 4755
    :cond_0
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-eq v2, v3, :cond_1

    .line 4759
    return v1

    .line 4765
    .end local v0    # "focusedView":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0

    .line 4767
    :cond_2
    return v1
.end method

.method private maybeHandleWindowMove(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 2851
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2853
    .local v0, "windowMoved":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 2854
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_2

    .line 2855
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 2857
    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 2858
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 2860
    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    if-eqz v1, :cond_6

    .line 2862
    :cond_4
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v1, :cond_5

    .line 2863
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v1, v3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    .line 2865
    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    .line 2867
    :cond_6
    return-void
.end method

.method private maybeUpdateTooltip(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 5775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5776
    return-void

    .line 5778
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5779
    .local v0, "action":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 5782
    return-void

    .line 5784
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 5785
    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5786
    return-void

    .line 5788
    :cond_2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v2, :cond_3

    .line 5789
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "maybeUpdateTooltip called after view was removed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5790
    return-void

    .line 5792
    :cond_3
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 5793
    return-void
.end method

.method private measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "desiredWindowWidth"    # I
    .param p5, "desiredWindowHeight"    # I

    .line 1799
    const/4 v0, 0x0

    .line 1805
    .local v0, "windowSizeMayChange":Z
    const/4 v1, 0x0

    .line 1806
    .local v1, "goodMeasure":Z
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    .line 1811
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1812
    .local v2, "packageMetrics":Landroid/util/DisplayMetrics;
    const v3, 0x105004c

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    const/4 v5, 0x1

    invoke-virtual {p3, v3, v4, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1813
    const/4 v3, 0x0

    .line 1814
    .local v3, "baseSize":I
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v4, v4, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 1815
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v4, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v3, v4

    .line 1819
    :cond_0
    if-eqz v3, :cond_2

    if-le p4, v3, :cond_2

    .line 1820
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v3, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v4

    .line 1821
    .local v4, "childWidthMeasureSpec":I
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v5

    .line 1822
    .local v5, "childHeightMeasureSpec":I
    invoke-direct {p0, v4, v5}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1827
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    const/high16 v7, 0x1000000

    and-int/2addr v6, v7

    if-nez v6, :cond_1

    .line 1828
    const/4 v1, 0x1

    goto :goto_0

    .line 1831
    :cond_1
    add-int v6, v3, p4

    div-int/lit8 v6, v6, 0x2

    .line 1834
    .end local v3    # "baseSize":I
    .local v6, "baseSize":I
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v6, v3}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v3

    .line 1835
    .end local v4    # "childWidthMeasureSpec":I
    .local v3, "childWidthMeasureSpec":I
    invoke-direct {p0, v3, v5}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1838
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v4

    and-int/2addr v4, v7

    if-nez v4, :cond_2

    .line 1840
    const/4 v1, 0x1

    .line 1846
    .end local v2    # "packageMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "childWidthMeasureSpec":I
    .end local v5    # "childHeightMeasureSpec":I
    .end local v6    # "baseSize":I
    :cond_2
    :goto_0
    if-nez v1, :cond_6

    .line 1847
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {p4, v2}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1848
    .local v2, "childWidthMeasureSpec":I
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v3}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v3

    .line 1850
    .local v3, "childHeightMeasureSpec":I
    sget-boolean v4, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v5, 0x8

    if-eqz v4, :cond_3

    invoke-static {v5, v6}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1851
    const-string v4, "!goodMeasure"

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1853
    :cond_3
    invoke-direct {p0, v2, v3}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1855
    sget-boolean v4, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v4, :cond_4

    invoke-static {v5, v6}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1856
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1858
    :cond_4
    iget v4, p0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_5

    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 1859
    :cond_5
    const/4 v0, 0x1

    .line 1869
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "childHeightMeasureSpec":I
    :cond_6
    return v0
.end method

.method private notifySurfaceDestroyed()V
    .locals 5

    .line 2832
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2833
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 2834
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_0

    .line 2835
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2836
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2835
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2839
    :cond_0
    return-void
.end method

.method private obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I

    .line 7588
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7589
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7590
    iget v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 7591
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7592
    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0

    .line 7594
    :cond_0
    new-instance v2, Landroid/view/ViewRootImpl$QueuedInputEvent;

    invoke-direct {v2, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>(Landroid/view/ViewRootImpl$1;)V

    move-object v0, v2

    .line 7597
    :goto_0
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7598
    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 7599
    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 7600
    return-object v0
.end method

.method private performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V
    .locals 6
    .param p1, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p2, "force"    # Z
    .param p3, "newDisplayId"    # I

    .line 4230
    if-eqz p1, :cond_3

    .line 4234
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4235
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 4241
    .local v1, "overrideConfig":Landroid/content/res/Configuration;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 4242
    .local v2, "ci":Landroid/content/res/CompatibilityInfo;
    sget-object v3, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4243
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v0, v3

    .line 4244
    iget v3, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 4247
    :cond_0
    sget-object v3, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 4248
    :try_start_0
    sget-object v4, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 4249
    sget-object v5, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl$ConfigChangedCallback;

    invoke-interface {v5, v0}, Landroid/view/ViewRootImpl$ConfigChangedCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4248
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 4251
    .end local v4    # "i":I
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4253
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v3, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 4255
    iput-boolean p2, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    .line 4256
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    if-eqz v3, :cond_2

    .line 4261
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    invoke-interface {v3, v1, p3}, Landroid/view/ViewRootImpl$ActivityConfigCallback;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    goto :goto_1

    .line 4264
    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    .line 4266
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    .line 4267
    return-void

    .line 4251
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 4231
    .end local v0    # "globalConfig":Landroid/content/res/Configuration;
    .end local v1    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v2    # "ci":Landroid/content/res/CompatibilityInfo;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No merged config provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performDraw()V
    .locals 11

    .line 3441
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/view/ViewRootImpl;->mForcedDrawing:Z

    if-nez v0, :cond_0

    .line 3443
    return-void

    .line 3444
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3445
    return-void

    .line 3448
    :cond_1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 3449
    .local v0, "fullRedrawNeeded":Z
    :goto_1
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3452
    .local v3, "startTime":J
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 3453
    const-string v1, "draw"

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3455
    const/4 v1, 0x0

    .line 3456
    .local v1, "usingAsyncReport":Z
    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 3457
    invoke-virtual {v7}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3458
    const/4 v1, 0x1

    .line 3459
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    new-instance v8, Landroid/view/-$$Lambda$ViewRootImpl$zmAX2p20-kqxknxcUyGhSNjsJvM;

    invoke-direct {v8, p0}, Landroid/view/-$$Lambda$ViewRootImpl$zmAX2p20-kqxknxcUyGhSNjsJvM;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v7, v8}, Landroid/view/ThreadedRenderer;->setFrameCompleteCallback(Landroid/view/ThreadedRenderer$FrameCompleteCallback;)V

    .line 3466
    :cond_4
    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->draw(Z)Z

    move-result v7

    .line 3467
    .local v7, "canUseAsync":Z
    const/4 v8, 0x0

    if-eqz v1, :cond_5

    if-nez v7, :cond_5

    .line 3468
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v9, v8}, Landroid/view/ThreadedRenderer;->setFrameCompleteCallback(Landroid/view/ThreadedRenderer$FrameCompleteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3469
    const/4 v1, 0x0

    .line 3472
    .end local v7    # "canUseAsync":Z
    :cond_5
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 3473
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 3475
    .local v5, "diff":J
    sget v7, Landroid/os/NubiaDebug;->DELAY_DEFAULT:I

    div-int/lit8 v7, v7, 0x2

    int-to-long v9, v7

    cmp-long v7, v5, v9

    if-lez v7, :cond_6

    .line 3476
    const-string/jumbo v7, "nubialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "draw takes "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    .end local v5    # "diff":J
    :cond_6
    nop

    .line 3482
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v5, :cond_8

    .line 3483
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 3484
    .local v5, "count":I
    move v6, v2

    .line 3484
    .local v6, "i":I
    :goto_2
    if-ge v6, v5, :cond_7

    .line 3485
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/RenderNode;

    invoke-virtual {v7}, Landroid/view/RenderNode;->endAllAnimators()V

    .line 3484
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3487
    .end local v6    # "i":I
    :cond_7
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 3490
    .end local v5    # "count":I
    :cond_8
    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v5, :cond_d

    .line 3491
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 3494
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_9

    .line 3496
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3499
    goto :goto_3

    .line 3497
    :catch_0
    move-exception v2

    .line 3498
    .local v2, "e":Ljava/lang/InterruptedException;
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v6, "Window redraw count down interrupted!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_3
    iput-object v8, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 3503
    :cond_9
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v2, :cond_a

    .line 3504
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v2, v5}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    .line 3511
    :cond_a
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3512
    new-instance v2, Lcom/android/internal/view/SurfaceCallbackHelper;

    new-instance v5, Landroid/view/-$$Lambda$ViewRootImpl$dznxCZGM2R1fsBljsJKomLjBRoM;

    invoke-direct {v5, p0}, Landroid/view/-$$Lambda$ViewRootImpl$dznxCZGM2R1fsBljsJKomLjBRoM;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-direct {v2, v5}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    .line 3513
    .local v2, "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v5

    .line 3515
    .local v5, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2, v6, v5}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    .line 3516
    .end local v2    # "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    .end local v5    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_4

    :cond_b
    if-nez v1, :cond_d

    .line 3517
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v2, :cond_c

    .line 3518
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->fence()V

    .line 3520
    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    .line 3523
    :cond_d
    :goto_4
    return-void

    .line 3472
    :catchall_0
    move-exception v7

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 3473
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 3475
    .local v5, "diff":J
    sget v2, Landroid/os/NubiaDebug;->DELAY_DEFAULT:I

    div-int/lit8 v2, v2, 0x2

    int-to-long v8, v2

    cmp-long v2, v5, v8

    if-lez v2, :cond_e

    .line 3476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "draw takes "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "nubialog"

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    .end local v5    # "diff":J
    :cond_e
    throw v7
.end method

.method private performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    .locals 17
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "desiredWindowWidth"    # I
    .param p3, "desiredWindowHeight"    # I

    move-object/from16 v7, p0

    .line 3118
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 3119
    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 3120
    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 3122
    iget-object v9, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 3123
    .local v9, "host":Landroid/view/View;
    if-nez v9, :cond_0

    .line 3124
    return-void

    .line 3131
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 3132
    .local v10, "startTime":J
    const-string v1, "layout"

    const-wide/16 v12, 0x8

    invoke-static {v12, v13, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3134
    :try_start_0
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v9, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 3136
    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 3137
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v14, v1

    .line 3138
    .local v14, "numViewsRequestingLayout":I
    if-lez v14, :cond_2

    .line 3143
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-direct {v7, v1, v0}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    move-object v15, v1

    .line 3145
    .local v15, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v15, :cond_2

    .line 3149
    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 3152
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v6, v1

    .line 3153
    .local v6, "numValidRequests":I
    move v1, v0

    .line 3153
    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 3154
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3155
    .local v2, "view":Landroid/view/View;
    const-string v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestLayout() improperly called by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " during layout: running second layout pass"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 3153
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3159
    .end local v1    # "i":I
    :cond_1
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v1, v7

    move-object v2, v9

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v16, v6

    move/from16 v6, p3

    .end local v6    # "numValidRequests":I
    .local v16, "numValidRequests":I
    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    .line 3161
    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 3162
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v9, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 3164
    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 3168
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-direct {v7, v1, v8}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 3169
    .end local v15    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v1, :cond_2

    .line 3170
    move-object v2, v1

    .line 3172
    .local v2, "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    move-result-object v3

    new-instance v4, Landroid/view/ViewRootImpl$3;

    invoke-direct {v4, v7, v2}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/view/HandlerActionQueue;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3189
    .end local v1    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v14    # "numViewsRequestingLayout":I
    .end local v16    # "numValidRequests":I
    :cond_2
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 3191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v10

    .line 3192
    .local v1, "diff":J
    sget v3, Landroid/os/NubiaDebug;->DELAY_DEFAULT:I

    div-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 3193
    const-string/jumbo v3, "nubialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "layout takes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    .end local v1    # "diff":J
    :cond_3
    nop

    .line 3197
    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 3198
    return-void

    .line 3189
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 3191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v10

    .line 3192
    .restart local v1    # "diff":J
    sget v3, Landroid/os/NubiaDebug;->DELAY_DEFAULT:I

    div-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    .line 3193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layout takes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "nubialog"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    .end local v1    # "diff":J
    :cond_4
    throw v0
.end method

.method private performMeasure(II)V
    .locals 3
    .param p1, "childWidthMeasureSpec"    # I
    .param p2, "childHeightMeasureSpec"    # I

    .line 3054
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3055
    return-void

    .line 3057
    :cond_0
    const-string/jumbo v0, "measure"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3059
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3061
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3062
    nop

    .line 3063
    return-void

    .line 3061
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private performTraversals()V
    .locals 63

    .line 1962
    move-object/from16 v7, p0

    iget-object v8, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 1970
    .local v8, "host":Landroid/view/View;
    if-eqz v8, :cond_a3

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v0, :cond_0

    goto/16 :goto_50

    .line 1973
    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    .line 1974
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 1975
    const/4 v0, 0x0

    .line 1976
    .local v0, "windowSizeMayChange":Z
    const/4 v10, 0x0

    .line 1977
    .local v10, "newSurface":Z
    const/4 v1, 0x0

    .line 1978
    .local v1, "surfaceChanged":Z
    iget-object v11, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1983
    .local v11, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v12

    .line 1984
    .local v12, "viewVisibility":I
    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    const/4 v13, 0x0

    if-nez v2, :cond_2

    iget v2, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-ne v2, v12, :cond_1

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-nez v2, :cond_1

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    if-eqz v2, :cond_2

    :cond_1
    move v2, v9

    goto :goto_0

    :cond_2
    move v2, v13

    :goto_0
    move v14, v2

    .line 1989
    .local v14, "viewVisibilityChanged":Z
    iput-boolean v13, v7, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    .line 1990
    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v2, :cond_5

    iget v2, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-nez v2, :cond_3

    move v2, v9

    goto :goto_1

    :cond_3
    move v2, v13

    :goto_1
    if-nez v12, :cond_4

    move v3, v9

    goto :goto_2

    :cond_4
    move v3, v13

    :goto_2
    if-eq v2, v3, :cond_5

    move v2, v9

    goto :goto_3

    :cond_5
    move v2, v13

    :goto_3
    move v15, v2

    .line 1993
    .local v15, "viewUserVisibilityChanged":Z
    const/4 v2, 0x0

    .line 1994
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    if-eqz v3, :cond_6

    .line 1995
    iput-boolean v13, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1996
    const/4 v1, 0x1

    .line 1997
    move-object v2, v11

    .line 1999
    .end local v1    # "surfaceChanged":Z
    .local v16, "surfaceChanged":Z
    :cond_6
    move/from16 v16, v1

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 2000
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    .line 2001
    .local v6, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v6}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-ne v1, v3, :cond_8

    .line 2002
    move-object v2, v11

    .line 2003
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2004
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2005
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-eqz v1, :cond_7

    .line 2006
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2007
    iput-boolean v13, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    goto :goto_4

    .line 2009
    :cond_7
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2010
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 2014
    :cond_8
    :goto_4
    move-object/from16 v17, v2

    .line 2014
    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v17, "params":Landroid/view/WindowManager$LayoutParams;
    iput v13, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 2016
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 2017
    .local v5, "frame":Landroid/graphics/Rect;
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v1, :cond_c

    .line 2019
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mHasStartTraversalsAccelerate:Z

    if-eqz v1, :cond_9

    .line 2020
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2023
    :cond_9
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2024
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2026
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2027
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-static {v11}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2029
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 2030
    .local v2, "size":Landroid/graphics/Point;
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 2031
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 2032
    .local v3, "desiredWindowWidth":I
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 2033
    .local v2, "desiredWindowHeight":I
    goto :goto_5

    .line 2034
    .end local v2    # "desiredWindowHeight":I
    .end local v3    # "desiredWindowWidth":I
    :cond_a
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2035
    .restart local v3    # "desiredWindowWidth":I
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 2041
    .restart local v2    # "desiredWindowHeight":I
    :goto_5
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v9, v4, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 2042
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v13, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 2043
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v12, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 2044
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v13, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 2045
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2046
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v4, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 2048
    iget v4, v7, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v9, 0x2

    if-ne v4, v9, :cond_b

    .line 2049
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 2051
    :cond_b
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v8, v4, v13}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2052
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 2053
    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 2054
    .end local v1    # "config":Landroid/content/res/Configuration;
    goto :goto_6

    .line 2055
    .end local v2    # "desiredWindowHeight":I
    .end local v3    # "desiredWindowWidth":I
    :cond_c
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2056
    .restart local v3    # "desiredWindowWidth":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 2057
    .restart local v2    # "desiredWindowHeight":I
    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v3, v1, :cond_d

    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v2, v1, :cond_e

    .line 2059
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2060
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2061
    const/4 v0, 0x1

    .line 2065
    :cond_e
    :goto_6
    if-eqz v14, :cond_13

    .line 2066
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v12, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 2067
    invoke-virtual {v8, v12}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 2068
    if-eqz v15, :cond_10

    .line 2069
    if-nez v12, :cond_f

    const/4 v1, 0x1

    goto :goto_7

    :cond_f
    move v1, v13

    :goto_7
    invoke-virtual {v8, v1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    .line 2071
    :cond_10
    if-nez v12, :cond_11

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v1, :cond_12

    .line 2072
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    .line 2073
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 2075
    :cond_12
    const/16 v1, 0x8

    if-ne v12, v1, :cond_13

    .line 2078
    iput-boolean v13, v7, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 2083
    :cond_13
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v1, :cond_14

    .line 2084
    invoke-virtual {v8}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2088
    :cond_14
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    move-result-object v1

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/view/HandlerActionQueue;->executeActions(Landroid/os/Handler;)V

    .line 2090
    const/4 v1, 0x0

    .line 2092
    .local v1, "insetsChanged":Z
    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_16

    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v4, :cond_15

    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_16

    :cond_15
    const/4 v4, 0x1

    goto :goto_8

    :cond_16
    move v4, v13

    :goto_8
    move v9, v4

    .line 2093
    .local v9, "layoutRequested":Z
    move/from16 v20, v14

    .line 2093
    .end local v14    # "viewVisibilityChanged":Z
    .local v20, "viewVisibilityChanged":Z
    if-eqz v9, :cond_24

    .line 2095
    iget-object v13, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 2097
    .local v13, "res":Landroid/content/res/Resources;
    iget-boolean v14, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v14, :cond_18

    .line 2100
    iget-object v14, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    const/16 v18, 0x1

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v14, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 2101
    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    invoke-direct {v7, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    .line 2146
    .end local v1    # "insetsChanged":Z
    .end local v2    # "desiredWindowHeight":I
    .end local v3    # "desiredWindowWidth":I
    .local v14, "desiredWindowWidth":I
    .local v21, "desiredWindowHeight":I
    .local v23, "insetsChanged":Z
    :cond_17
    :goto_9
    move/from16 v23, v1

    move/from16 v21, v2

    move v14, v3

    goto/16 :goto_a

    .line 2103
    .end local v14    # "desiredWindowWidth":I
    .end local v21    # "desiredWindowHeight":I
    .end local v23    # "insetsChanged":Z
    .restart local v1    # "insetsChanged":Z
    .restart local v2    # "desiredWindowHeight":I
    .restart local v3    # "desiredWindowWidth":I
    :cond_18
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v14, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v14, v14, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v14}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 2104
    const/4 v1, 0x1

    .line 2106
    :cond_19
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v14, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v14, v14, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v14}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 2107
    const/4 v1, 0x1

    .line 2109
    :cond_1a
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v14, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v14, v14, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v14}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 2110
    const/4 v1, 0x1

    .line 2112
    :cond_1b
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v14, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v14, v14, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v4, v14}, Landroid/view/DisplayCutout$ParcelableWrapper;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 2113
    const/4 v1, 0x1

    .line 2115
    :cond_1c
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v14, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v14, v14, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v14}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 2116
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    iget-object v14, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2120
    :cond_1d
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v14, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v14, v14, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v14}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 2121
    const/4 v1, 0x1

    .line 2123
    :cond_1e
    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    iget-object v14, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v14, v14, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    if-eq v4, v14, :cond_1f

    .line 2124
    const/4 v1, 0x1

    .line 2126
    :cond_1f
    iget v4, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v14, -0x2

    if-eq v4, v14, :cond_20

    iget v4, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v4, v14, :cond_17

    .line 2128
    :cond_20
    const/4 v0, 0x1

    .line 2130
    invoke-static {v11}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2132
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 2133
    .local v4, "size":Landroid/graphics/Point;
    iget-object v14, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v14, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 2134
    iget v3, v4, Landroid/graphics/Point;->x:I

    .line 2135
    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 2136
    .end local v4    # "size":Landroid/graphics/Point;
    goto/16 :goto_9

    .line 2137
    :cond_21
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 2138
    .local v4, "config":Landroid/content/res/Configuration;
    iget v14, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {v7, v14}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v3

    .line 2139
    iget v14, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-direct {v7, v14}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v2

    .line 2139
    .end local v4    # "config":Landroid/content/res/Configuration;
    goto/16 :goto_9

    .line 2146
    .end local v1    # "insetsChanged":Z
    .end local v2    # "desiredWindowHeight":I
    .end local v3    # "desiredWindowWidth":I
    .restart local v14    # "desiredWindowWidth":I
    .restart local v21    # "desiredWindowHeight":I
    .restart local v23    # "insetsChanged":Z
    :goto_a
    sget-boolean v1, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v1, :cond_22

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2147
    const-string/jumbo v3, "measureHierarchy in LayoutRequested"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2149
    :cond_22
    move-object v1, v7

    move-object v2, v8

    move-object v3, v11

    move/from16 v24, v10

    const/4 v10, -0x2

    move-object v4, v13

    .line 2149
    .end local v10    # "newSurface":Z
    .local v24, "newSurface":Z
    move-object/from16 v25, v5

    move v5, v14

    .line 2149
    .end local v5    # "frame":Landroid/graphics/Rect;
    .local v25, "frame":Landroid/graphics/Rect;
    move-object/from16 v22, v6

    move/from16 v6, v21

    .line 2149
    .end local v6    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .local v22, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2152
    sget-boolean v1, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v1, :cond_23

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2153
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2157
    .end local v13    # "res":Landroid/content/res/Resources;
    :cond_23
    move/from16 v13, v21

    goto :goto_b

    .line 2157
    .end local v14    # "desiredWindowWidth":I
    .end local v21    # "desiredWindowHeight":I
    .end local v22    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v23    # "insetsChanged":Z
    .end local v24    # "newSurface":Z
    .end local v25    # "frame":Landroid/graphics/Rect;
    .restart local v1    # "insetsChanged":Z
    .restart local v2    # "desiredWindowHeight":I
    .restart local v3    # "desiredWindowWidth":I
    .restart local v5    # "frame":Landroid/graphics/Rect;
    .restart local v6    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v10    # "newSurface":Z
    :cond_24
    move-object/from16 v25, v5

    move-object/from16 v22, v6

    move/from16 v24, v10

    const/4 v10, -0x2

    move/from16 v23, v1

    move v13, v2

    move v14, v3

    .line 2157
    .end local v1    # "insetsChanged":Z
    .end local v2    # "desiredWindowHeight":I
    .end local v3    # "desiredWindowWidth":I
    .end local v5    # "frame":Landroid/graphics/Rect;
    .end local v6    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v10    # "newSurface":Z
    .local v13, "desiredWindowHeight":I
    .restart local v14    # "desiredWindowWidth":I
    .restart local v22    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v23    # "insetsChanged":Z
    .restart local v24    # "newSurface":Z
    .restart local v25    # "frame":Landroid/graphics/Rect;
    :goto_b
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2158
    move-object/from16 v17, v11

    .line 2160
    :cond_25
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v1, :cond_26

    .line 2161
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 2162
    move-object/from16 v17, v11

    .line 2165
    :cond_26
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v1, :cond_27

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v1, :cond_2b

    .line 2166
    :cond_27
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 2167
    iget v1, v7, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    and-int/lit16 v1, v1, 0xf0

    .line 2171
    .local v1, "resizeMode":I
    if-nez v1, :cond_2b

    .line 2172
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2173
    .local v2, "N":I
    move v3, v1

    const/4 v1, 0x0

    .line 2173
    .local v1, "i":I
    .local v3, "resizeMode":I
    :goto_c
    if-ge v1, v2, :cond_29

    .line 2174
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2175
    const/16 v3, 0x10

    .line 2173
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2178
    .end local v1    # "i":I
    :cond_29
    if-nez v3, :cond_2a

    .line 2179
    const/16 v3, 0x20

    .line 2181
    :cond_2a
    iget v1, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v1, v1, 0xf0

    if-eq v1, v3, :cond_2b

    .line 2183
    iget v1, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v1, v1, -0xf1

    or-int/2addr v1, v3

    iput v1, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2186
    move-object/from16 v17, v11

    .line 2191
    .end local v2    # "N":I
    .end local v3    # "resizeMode":I
    .end local v17    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    :cond_2b
    move-object/from16 v6, v17

    if-eqz v6, :cond_2e

    .line 2192
    iget v1, v8, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2c

    .line 2193
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2194
    const/4 v1, -0x3

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2197
    :cond_2c
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    goto :goto_d

    :cond_2d
    const/4 v2, 0x0

    :goto_d
    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    .line 2201
    :cond_2e
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-eqz v1, :cond_30

    .line 2202
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 2203
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 2204
    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 2205
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v1, :cond_30

    .line 2210
    sget-boolean v1, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v1, :cond_2f

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2211
    const-string/jumbo v3, "measureHierarchy for mLayoutRequested"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2213
    :cond_2f
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2214
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2213
    move-object v1, v7

    move-object v2, v8

    move-object v3, v11

    move v5, v14

    move-object/from16 v26, v6

    move v6, v13

    .line 2213
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v26, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2217
    sget-boolean v1, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v1, :cond_31

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2218
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_e

    .line 2223
    .end local v26    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_30
    move-object/from16 v26, v6

    .line 2223
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v26    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_31
    :goto_e
    move/from16 v17, v0

    .line 2223
    .end local v0    # "windowSizeMayChange":Z
    .local v17, "windowSizeMayChange":Z
    if-eqz v9, :cond_32

    .line 2227
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2230
    :cond_32
    if-eqz v9, :cond_37

    if-eqz v17, :cond_37

    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 2231
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ne v0, v1, :cond_35

    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ne v0, v1, :cond_35

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v10, :cond_33

    .line 2233
    move-object/from16 v6, v25

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 2233
    .end local v25    # "frame":Landroid/graphics/Rect;
    .local v6, "frame":Landroid/graphics/Rect;
    if-ge v0, v14, :cond_34

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v0, v1, :cond_36

    goto :goto_f

    .line 2233
    .end local v6    # "frame":Landroid/graphics/Rect;
    .restart local v25    # "frame":Landroid/graphics/Rect;
    :cond_33
    move-object/from16 v6, v25

    .line 2233
    .end local v25    # "frame":Landroid/graphics/Rect;
    .restart local v6    # "frame":Landroid/graphics/Rect;
    :cond_34
    :goto_f
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v10, :cond_38

    .line 2235
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, v13, :cond_38

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v0, v1, :cond_38

    goto :goto_10

    .line 2235
    .end local v6    # "frame":Landroid/graphics/Rect;
    .restart local v25    # "frame":Landroid/graphics/Rect;
    :cond_35
    move-object/from16 v6, v25

    .line 2235
    .end local v25    # "frame":Landroid/graphics/Rect;
    .restart local v6    # "frame":Landroid/graphics/Rect;
    :cond_36
    :goto_10
    const/4 v0, 0x1

    goto :goto_11

    .line 2235
    .end local v6    # "frame":Landroid/graphics/Rect;
    .restart local v25    # "frame":Landroid/graphics/Rect;
    :cond_37
    move-object/from16 v6, v25

    .line 2235
    .end local v25    # "frame":Landroid/graphics/Rect;
    .restart local v6    # "frame":Landroid/graphics/Rect;
    :cond_38
    const/4 v0, 0x0

    .line 2236
    .local v0, "windowShouldResize":Z
    :goto_11
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v1, :cond_39

    iget v1, v7, Landroid/view/ViewRootImpl;->mResizeMode:I

    if-nez v1, :cond_39

    const/4 v1, 0x1

    goto :goto_12

    :cond_39
    const/4 v1, 0x0

    :goto_12
    or-int/2addr v0, v1

    .line 2241
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    or-int v10, v0, v1

    .line 2246
    .end local v0    # "windowShouldResize":Z
    .local v10, "windowShouldResize":Z
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 2247
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    if-eqz v0, :cond_3a

    goto :goto_13

    :cond_3a
    const/4 v0, 0x0

    goto :goto_14

    :cond_3b
    :goto_13
    const/4 v0, 0x1

    :goto_14
    move/from16 v21, v0

    .line 2250
    .local v21, "computesInternalInsets":Z
    const/4 v0, 0x0

    .line 2251
    .local v0, "insetsPending":Z
    const/4 v1, 0x0

    .line 2252
    .local v1, "relayoutResult":I
    const/4 v2, 0x0

    .line 2254
    .local v2, "updatedConfiguration":Z
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->getGenerationId()I

    move-result v5

    .line 2256
    .local v5, "surfaceGenerationId":I
    if-nez v12, :cond_3c

    const/4 v3, 0x1

    goto :goto_15

    :cond_3c
    const/4 v3, 0x0

    :goto_15
    move/from16 v25, v3

    .line 2257
    .local v25, "isViewVisible":Z
    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 2258
    .local v4, "windowRelayoutWasForced":Z
    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v3, :cond_3f

    if-nez v10, :cond_3f

    if-nez v23, :cond_3f

    if-nez v20, :cond_3f

    move-object/from16 v3, v26

    if-nez v3, :cond_3e

    .line 2258
    .end local v26    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    move/from16 v27, v0

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 2258
    .end local v0    # "insetsPending":Z
    .local v27, "insetsPending":Z
    if-eqz v0, :cond_3d

    goto :goto_16

    .line 2628
    :cond_3d
    invoke-direct {v7, v6}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    .line 2631
    move-object/from16 v45, v3

    move/from16 v46, v4

    move/from16 v51, v5

    move/from16 v33, v10

    move-object v10, v6

    goto/16 :goto_3b

    .line 2260
    .end local v27    # "insetsPending":Z
    .restart local v0    # "insetsPending":Z
    :cond_3e
    move/from16 v27, v0

    .line 2260
    .end local v0    # "insetsPending":Z
    .restart local v27    # "insetsPending":Z
    goto :goto_16

    .line 2260
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v27    # "insetsPending":Z
    .restart local v0    # "insetsPending":Z
    .restart local v26    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_3f
    move/from16 v27, v0

    move-object/from16 v3, v26

    .line 2260
    .end local v0    # "insetsPending":Z
    .end local v26    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v27    # "insetsPending":Z
    :goto_16
    move/from16 v28, v1

    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 2262
    .end local v1    # "relayoutResult":I
    .local v28, "relayoutResult":I
    if-eqz v25, :cond_42

    .line 2272
    if-eqz v21, :cond_41

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v0, :cond_40

    if-eqz v20, :cond_41

    :cond_40
    const/4 v0, 0x1

    goto :goto_17

    :cond_41
    const/4 v0, 0x0

    .line 2275
    .end local v27    # "insetsPending":Z
    .restart local v0    # "insetsPending":Z
    :goto_17
    move v1, v0

    goto :goto_18

    .line 2275
    .end local v0    # "insetsPending":Z
    .restart local v27    # "insetsPending":Z
    :cond_42
    move/from16 v1, v27

    .line 2275
    .end local v27    # "insetsPending":Z
    .local v1, "insetsPending":Z
    :goto_18
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v0, :cond_43

    .line 2276
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2277
    move/from16 v29, v2

    const/4 v2, 0x1

    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    goto :goto_19

    .line 2280
    :cond_43
    move/from16 v29, v2

    .line 2280
    .end local v2    # "updatedConfiguration":Z
    .local v29, "updatedConfiguration":Z
    :goto_19
    const/4 v2, 0x0

    .line 2281
    .local v2, "hwInitialized":Z
    const/16 v26, 0x0

    .line 2282
    .local v26, "contentInsetsChanged":Z
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    move/from16 v27, v0

    .line 2290
    .local v27, "hadSurface":Z
    :try_start_0
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_16

    if-eqz v0, :cond_45

    .line 2294
    :try_start_1
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6

    move/from16 v30, v2

    :try_start_2
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 2294
    .end local v2    # "hwInitialized":Z
    .local v30, "hwInitialized":Z
    invoke-virtual {v0, v2}, Landroid/view/ThreadedRenderer;->pauseSurface(Landroid/view/Surface;)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v0, :cond_44

    .line 2297
    :try_start_3
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v2, v7, Landroid/view/ViewRootImpl;->mWidth:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v31, v6

    :try_start_4
    iget v6, v7, Landroid/view/ViewRootImpl;->mHeight:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2297
    .end local v6    # "frame":Landroid/graphics/Rect;
    .local v31, "frame":Landroid/graphics/Rect;
    move/from16 v32, v9

    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v0, v9, v9, v2, v6}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2297
    .end local v9    # "layoutRequested":Z
    .local v32, "layoutRequested":Z
    goto :goto_1a

    .line 2486
    :catch_0
    move-exception v0

    move/from16 v39, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    move/from16 v33, v10

    goto :goto_1b

    .line 2486
    .end local v32    # "layoutRequested":Z
    .restart local v9    # "layoutRequested":Z
    :catch_1
    move-exception v0

    move/from16 v32, v9

    move/from16 v39, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    move/from16 v33, v10

    move/from16 v47, v28

    move-object/from16 v10, v31

    .end local v9    # "layoutRequested":Z
    .restart local v32    # "layoutRequested":Z
    goto/16 :goto_2f

    .line 2486
    .end local v31    # "frame":Landroid/graphics/Rect;
    .end local v32    # "layoutRequested":Z
    .restart local v6    # "frame":Landroid/graphics/Rect;
    .restart local v9    # "layoutRequested":Z
    :catch_2
    move-exception v0

    move/from16 v32, v9

    move/from16 v39, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    move/from16 v33, v10

    move/from16 v47, v28

    move-object v10, v6

    .line 2486
    .end local v6    # "frame":Landroid/graphics/Rect;
    .end local v9    # "layoutRequested":Z
    .restart local v31    # "frame":Landroid/graphics/Rect;
    .restart local v32    # "layoutRequested":Z
    goto/16 :goto_2f

    .line 2299
    .end local v31    # "frame":Landroid/graphics/Rect;
    .end local v32    # "layoutRequested":Z
    .restart local v6    # "frame":Landroid/graphics/Rect;
    .restart local v9    # "layoutRequested":Z
    :cond_44
    move-object/from16 v31, v6

    move/from16 v32, v9

    .line 2299
    .end local v6    # "frame":Landroid/graphics/Rect;
    .end local v9    # "layoutRequested":Z
    .restart local v31    # "frame":Landroid/graphics/Rect;
    .restart local v32    # "layoutRequested":Z
    :goto_1a
    :try_start_6
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    move/from16 v33, v10

    const-wide/16 v9, 0x1

    .line 2299
    .end local v10    # "windowShouldResize":Z
    .local v33, "windowShouldResize":Z
    :try_start_7
    invoke-virtual {v0, v9, v10}, Landroid/view/FrameInfo;->addFlags(J)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1c

    .line 2486
    :catch_3
    move-exception v0

    move/from16 v39, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    .line 2486
    .end local v1    # "insetsPending":Z
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v28    # "relayoutResult":I
    .end local v31    # "frame":Landroid/graphics/Rect;
    .local v9, "surfaceGenerationId":I
    .local v10, "frame":Landroid/graphics/Rect;
    .local v39, "insetsPending":Z
    .local v45, "params":Landroid/view/WindowManager$LayoutParams;
    .local v46, "windowRelayoutWasForced":Z
    .local v47, "relayoutResult":I
    :goto_1b
    move/from16 v47, v28

    move-object/from16 v10, v31

    goto/16 :goto_2f

    .line 2486
    .end local v9    # "surfaceGenerationId":I
    .end local v33    # "windowShouldResize":Z
    .end local v39    # "insetsPending":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .restart local v1    # "insetsPending":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .local v10, "windowShouldResize":Z
    .restart local v28    # "relayoutResult":I
    .restart local v31    # "frame":Landroid/graphics/Rect;
    :catch_4
    move-exception v0

    move/from16 v33, v10

    move/from16 v39, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    move/from16 v47, v28

    move-object/from16 v10, v31

    .line 2486
    .end local v10    # "windowShouldResize":Z
    .restart local v33    # "windowShouldResize":Z
    goto/16 :goto_2f

    .line 2486
    .end local v31    # "frame":Landroid/graphics/Rect;
    .end local v32    # "layoutRequested":Z
    .end local v33    # "windowShouldResize":Z
    .restart local v6    # "frame":Landroid/graphics/Rect;
    .local v9, "layoutRequested":Z
    .restart local v10    # "windowShouldResize":Z
    :catch_5
    move-exception v0

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v39, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    move-object v10, v6

    move/from16 v47, v28

    .line 2486
    .end local v6    # "frame":Landroid/graphics/Rect;
    .end local v9    # "layoutRequested":Z
    .end local v10    # "windowShouldResize":Z
    .restart local v31    # "frame":Landroid/graphics/Rect;
    .restart local v32    # "layoutRequested":Z
    .restart local v33    # "windowShouldResize":Z
    goto/16 :goto_2f

    .line 2486
    .end local v30    # "hwInitialized":Z
    .end local v31    # "frame":Landroid/graphics/Rect;
    .end local v32    # "layoutRequested":Z
    .end local v33    # "windowShouldResize":Z
    .restart local v2    # "hwInitialized":Z
    .restart local v6    # "frame":Landroid/graphics/Rect;
    .restart local v9    # "layoutRequested":Z
    .restart local v10    # "windowShouldResize":Z
    :catch_6
    move-exception v0

    move/from16 v30, v2

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v39, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    move-object v10, v6

    move/from16 v47, v28

    .end local v2    # "hwInitialized":Z
    .end local v6    # "frame":Landroid/graphics/Rect;
    .end local v9    # "layoutRequested":Z
    .end local v10    # "windowShouldResize":Z
    .restart local v30    # "hwInitialized":Z
    .restart local v31    # "frame":Landroid/graphics/Rect;
    .restart local v32    # "layoutRequested":Z
    .restart local v33    # "windowShouldResize":Z
    goto/16 :goto_2f

    .line 2301
    .end local v30    # "hwInitialized":Z
    .end local v31    # "frame":Landroid/graphics/Rect;
    .end local v32    # "layoutRequested":Z
    .end local v33    # "windowShouldResize":Z
    .restart local v2    # "hwInitialized":Z
    .restart local v6    # "frame":Landroid/graphics/Rect;
    .restart local v9    # "layoutRequested":Z
    .restart local v10    # "windowShouldResize":Z
    :cond_45
    move/from16 v30, v2

    move-object/from16 v31, v6

    move/from16 v32, v9

    move/from16 v33, v10

    .line 2301
    .end local v2    # "hwInitialized":Z
    .end local v6    # "frame":Landroid/graphics/Rect;
    .end local v9    # "layoutRequested":Z
    .end local v10    # "windowShouldResize":Z
    .restart local v30    # "hwInitialized":Z
    .restart local v31    # "frame":Landroid/graphics/Rect;
    .restart local v32    # "layoutRequested":Z
    .restart local v33    # "windowShouldResize":Z
    :goto_1c
    :try_start_8
    invoke-direct {v7, v3, v12, v1}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_15

    move v9, v0

    .line 2317
    .end local v28    # "relayoutResult":I
    .local v9, "relayoutResult":I
    :try_start_9
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, v2}, Landroid/util/MergedConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_14

    if-nez v0, :cond_46

    .line 2320
    :try_start_a
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    const/4 v6, 0x1

    xor-int/2addr v2, v6

    const/4 v6, -0x1

    invoke-direct {v7, v0, v2, v6}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7

    .line 2322
    const/4 v2, 0x1

    .line 2325
    .end local v29    # "updatedConfiguration":Z
    .local v2, "updatedConfiguration":Z
    move/from16 v29, v2

    goto :goto_1f

    .line 2486
    .end local v2    # "updatedConfiguration":Z
    .restart local v29    # "updatedConfiguration":Z
    :catch_7
    move-exception v0

    move/from16 v39, v1

    .line 2486
    .end local v1    # "insetsPending":Z
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v31    # "frame":Landroid/graphics/Rect;
    .local v9, "surfaceGenerationId":I
    .local v10, "frame":Landroid/graphics/Rect;
    .restart local v39    # "insetsPending":Z
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    .restart local v47    # "relayoutResult":I
    :goto_1d
    move-object/from16 v45, v3

    move/from16 v46, v4

    :goto_1e
    move/from16 v47, v9

    move-object/from16 v10, v31

    move v9, v5

    goto/16 :goto_2f

    .line 2325
    .end local v10    # "frame":Landroid/graphics/Rect;
    .end local v39    # "insetsPending":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .restart local v1    # "insetsPending":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .local v9, "relayoutResult":I
    .restart local v31    # "frame":Landroid/graphics/Rect;
    :cond_46
    :goto_1f
    :try_start_b
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    move v10, v0

    .line 2327
    .local v10, "overscanInsetsChanged":Z
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    move/from16 v26, v0

    .line 2329
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    move/from16 v28, v0

    .line 2331
    .local v28, "visibleInsetsChanged":Z
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    move/from16 v34, v0

    .line 2333
    .local v34, "stableInsetsChanged":Z
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v2}, Landroid/view/DisplayCutout$ParcelableWrapper;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    move/from16 v35, v0

    .line 2335
    .local v35, "cutoutChanged":Z
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    move/from16 v36, v0

    .line 2336
    .local v36, "outsetsChanged":Z
    and-int/lit8 v0, v9, 0x20

    if-eqz v0, :cond_47

    const/4 v0, 0x1

    goto :goto_20

    :cond_47
    const/4 v0, 0x0

    :goto_20
    move/from16 v37, v0

    .line 2338
    .local v37, "surfaceSizeChanged":Z
    or-int v16, v16, v37

    .line 2339
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_14

    if-eq v0, v2, :cond_48

    const/4 v0, 0x1

    goto :goto_21

    :cond_48
    const/4 v0, 0x0

    :goto_21
    move/from16 v38, v0

    .line 2341
    .local v38, "alwaysConsumeNavBarChanged":Z
    if-eqz v26, :cond_49

    .line 2342
    :try_start_c
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2346
    :cond_49
    if-eqz v10, :cond_4a

    .line 2347
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2351
    const/4 v0, 0x1

    .line 2353
    .end local v26    # "contentInsetsChanged":Z
    .local v0, "contentInsetsChanged":Z
    move/from16 v26, v0

    .line 2353
    .end local v0    # "contentInsetsChanged":Z
    .restart local v26    # "contentInsetsChanged":Z
    :cond_4a
    if-eqz v34, :cond_4b

    .line 2354
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2358
    const/4 v0, 0x1

    .line 2360
    .end local v26    # "contentInsetsChanged":Z
    .restart local v0    # "contentInsetsChanged":Z
    move/from16 v26, v0

    .line 2360
    .end local v0    # "contentInsetsChanged":Z
    .restart local v26    # "contentInsetsChanged":Z
    :cond_4b
    if-eqz v35, :cond_4c

    .line 2361
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v2}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    .line 2366
    const/4 v0, 0x1

    .line 2368
    .end local v26    # "contentInsetsChanged":Z
    .restart local v0    # "contentInsetsChanged":Z
    move/from16 v26, v0

    .line 2368
    .end local v0    # "contentInsetsChanged":Z
    .restart local v26    # "contentInsetsChanged":Z
    :cond_4c
    if-eqz v38, :cond_4d

    .line 2369
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    .line 2370
    const/4 v0, 0x1

    .line 2372
    .end local v26    # "contentInsetsChanged":Z
    .restart local v0    # "contentInsetsChanged":Z
    move/from16 v26, v0

    .line 2372
    .end local v0    # "contentInsetsChanged":Z
    .restart local v26    # "contentInsetsChanged":Z
    :cond_4d
    if-nez v26, :cond_4e

    iget v0, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-ne v0, v2, :cond_4e

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-nez v0, :cond_4e

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mOverscanRequested:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_7

    if-ne v0, v2, :cond_4e

    if-eqz v36, :cond_4f

    .line 2376
    :cond_4e
    :try_start_d
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v0, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 2377
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 2378
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2379
    const/4 v2, 0x0

    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 2380
    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_14

    .line 2382
    :cond_4f
    if-eqz v28, :cond_50

    .line 2383
    :try_start_e
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_7

    .line 2388
    :cond_50
    if-nez v27, :cond_54

    .line 2389
    :try_start_f
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_e

    if-eqz v0, :cond_53

    .line 2397
    const/4 v2, 0x1

    .line 2398
    .end local v24    # "newSurface":Z
    .local v2, "newSurface":Z
    const/4 v6, 0x1

    :try_start_10
    iput-boolean v6, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2399
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 2404
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_d

    if-eqz v0, :cond_52

    .line 2406
    :try_start_11
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v6}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v0
    :try_end_11
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_d

    move v6, v0

    .line 2408
    .end local v30    # "hwInitialized":Z
    .local v6, "hwInitialized":Z
    if-eqz v6, :cond_51

    :try_start_12
    iget v0, v8, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_51

    .line 2412
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_12
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_9

    move/from16 v39, v1

    :try_start_13
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 2412
    .end local v1    # "insetsPending":Z
    .restart local v39    # "insetsPending":Z
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->allocateBuffers(Landroid/view/Surface;)V
    :try_end_13
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_c

    goto :goto_22

    .line 2414
    :catch_8
    move-exception v0

    goto :goto_23

    .line 2486
    .end local v10    # "overscanInsetsChanged":Z
    .end local v28    # "visibleInsetsChanged":Z
    .end local v34    # "stableInsetsChanged":Z
    .end local v35    # "cutoutChanged":Z
    .end local v36    # "outsetsChanged":Z
    .end local v37    # "surfaceSizeChanged":Z
    .end local v38    # "alwaysConsumeNavBarChanged":Z
    .end local v39    # "insetsPending":Z
    .restart local v1    # "insetsPending":Z
    :catch_9
    move-exception v0

    move/from16 v39, v1

    move/from16 v24, v2

    move-object/from16 v45, v3

    move/from16 v46, v4

    move/from16 v30, v6

    goto :goto_26

    .line 2414
    .restart local v10    # "overscanInsetsChanged":Z
    .restart local v28    # "visibleInsetsChanged":Z
    .restart local v34    # "stableInsetsChanged":Z
    .restart local v35    # "cutoutChanged":Z
    .restart local v36    # "outsetsChanged":Z
    .restart local v37    # "surfaceSizeChanged":Z
    .restart local v38    # "alwaysConsumeNavBarChanged":Z
    :catch_a
    move-exception v0

    move/from16 v39, v1

    goto :goto_23

    .line 2417
    :cond_51
    move/from16 v39, v1

    .line 2459
    .end local v1    # "insetsPending":Z
    .restart local v39    # "insetsPending":Z
    :goto_22
    move/from16 v24, v2

    move/from16 v30, v6

    goto/16 :goto_27

    .line 2414
    .end local v6    # "hwInitialized":Z
    .end local v39    # "insetsPending":Z
    .restart local v1    # "insetsPending":Z
    .restart local v30    # "hwInitialized":Z
    :catch_b
    move-exception v0

    move/from16 v39, v1

    move/from16 v6, v30

    .line 2415
    .end local v1    # "insetsPending":Z
    .end local v30    # "hwInitialized":Z
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v6    # "hwInitialized":Z
    .restart local v39    # "insetsPending":Z
    :goto_23
    :try_start_14
    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_c

    .line 2416
    return-void

    .line 2486
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v10    # "overscanInsetsChanged":Z
    .end local v28    # "visibleInsetsChanged":Z
    .end local v34    # "stableInsetsChanged":Z
    .end local v35    # "cutoutChanged":Z
    .end local v36    # "outsetsChanged":Z
    .end local v37    # "surfaceSizeChanged":Z
    .end local v38    # "alwaysConsumeNavBarChanged":Z
    :catch_c
    move-exception v0

    move/from16 v24, v2

    move-object/from16 v45, v3

    move/from16 v46, v4

    move/from16 v30, v6

    goto/16 :goto_1e

    .line 2459
    .end local v6    # "hwInitialized":Z
    .end local v39    # "insetsPending":Z
    .restart local v1    # "insetsPending":Z
    .restart local v10    # "overscanInsetsChanged":Z
    .restart local v28    # "visibleInsetsChanged":Z
    .restart local v30    # "hwInitialized":Z
    .restart local v34    # "stableInsetsChanged":Z
    .restart local v35    # "cutoutChanged":Z
    .restart local v36    # "outsetsChanged":Z
    .restart local v37    # "surfaceSizeChanged":Z
    .restart local v38    # "alwaysConsumeNavBarChanged":Z
    :cond_52
    move/from16 v39, v1

    move/from16 v24, v2

    .line 2459
    .end local v1    # "insetsPending":Z
    .end local v2    # "newSurface":Z
    .restart local v24    # "newSurface":Z
    .restart local v39    # "insetsPending":Z
    :goto_24
    goto/16 :goto_27

    .line 2486
    .end local v10    # "overscanInsetsChanged":Z
    .end local v24    # "newSurface":Z
    .end local v28    # "visibleInsetsChanged":Z
    .end local v34    # "stableInsetsChanged":Z
    .end local v35    # "cutoutChanged":Z
    .end local v36    # "outsetsChanged":Z
    .end local v37    # "surfaceSizeChanged":Z
    .end local v38    # "alwaysConsumeNavBarChanged":Z
    .end local v39    # "insetsPending":Z
    .restart local v1    # "insetsPending":Z
    .restart local v2    # "newSurface":Z
    :catch_d
    move-exception v0

    move/from16 v39, v1

    move/from16 v24, v2

    goto :goto_25

    .line 2459
    .end local v2    # "newSurface":Z
    .restart local v10    # "overscanInsetsChanged":Z
    .restart local v24    # "newSurface":Z
    .restart local v28    # "visibleInsetsChanged":Z
    .restart local v34    # "stableInsetsChanged":Z
    .restart local v35    # "cutoutChanged":Z
    .restart local v36    # "outsetsChanged":Z
    .restart local v37    # "surfaceSizeChanged":Z
    .restart local v38    # "alwaysConsumeNavBarChanged":Z
    :cond_53
    move/from16 v39, v1

    goto :goto_24

    .line 2486
    .end local v10    # "overscanInsetsChanged":Z
    .end local v28    # "visibleInsetsChanged":Z
    .end local v34    # "stableInsetsChanged":Z
    .end local v35    # "cutoutChanged":Z
    .end local v36    # "outsetsChanged":Z
    .end local v37    # "surfaceSizeChanged":Z
    .end local v38    # "alwaysConsumeNavBarChanged":Z
    :catch_e
    move-exception v0

    move/from16 v39, v1

    .line 2486
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v31    # "frame":Landroid/graphics/Rect;
    .local v9, "surfaceGenerationId":I
    .local v10, "frame":Landroid/graphics/Rect;
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    .restart local v47    # "relayoutResult":I
    :goto_25
    move-object/from16 v45, v3

    move/from16 v46, v4

    :goto_26
    move/from16 v47, v9

    move-object/from16 v10, v31

    move v9, v5

    .line 2486
    .end local v1    # "insetsPending":Z
    .restart local v39    # "insetsPending":Z
    goto/16 :goto_2f

    .line 2420
    .end local v39    # "insetsPending":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .restart local v1    # "insetsPending":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .local v9, "relayoutResult":I
    .local v10, "overscanInsetsChanged":Z
    .restart local v28    # "visibleInsetsChanged":Z
    .restart local v31    # "frame":Landroid/graphics/Rect;
    .restart local v34    # "stableInsetsChanged":Z
    .restart local v35    # "cutoutChanged":Z
    .restart local v36    # "outsetsChanged":Z
    .restart local v37    # "surfaceSizeChanged":Z
    .restart local v38    # "alwaysConsumeNavBarChanged":Z
    :cond_54
    move/from16 v39, v1

    .line 2420
    .end local v1    # "insetsPending":Z
    .restart local v39    # "insetsPending":Z
    :try_start_15
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_13

    if-nez v0, :cond_58

    .line 2423
    :try_start_16
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_55

    .line 2424
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2426
    :cond_55
    const/4 v1, 0x0

    iput v1, v7, Landroid/view/ViewRootImpl;->mCurScrollY:I

    iput v1, v7, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 2427
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v0, :cond_56

    .line 2428
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    iget v1, v7, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v0, v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 2430
    :cond_56
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_57

    .line 2431
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2434
    :cond_57
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_5a

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 2435
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 2436
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_f

    goto :goto_27

    .line 2486
    .end local v10    # "overscanInsetsChanged":Z
    .end local v28    # "visibleInsetsChanged":Z
    .end local v34    # "stableInsetsChanged":Z
    .end local v35    # "cutoutChanged":Z
    .end local v36    # "outsetsChanged":Z
    .end local v37    # "surfaceSizeChanged":Z
    .end local v38    # "alwaysConsumeNavBarChanged":Z
    :catch_f
    move-exception v0

    goto/16 :goto_1d

    .line 2438
    .restart local v10    # "overscanInsetsChanged":Z
    .restart local v28    # "visibleInsetsChanged":Z
    .restart local v34    # "stableInsetsChanged":Z
    .restart local v35    # "cutoutChanged":Z
    .restart local v36    # "outsetsChanged":Z
    .restart local v37    # "surfaceSizeChanged":Z
    .restart local v38    # "alwaysConsumeNavBarChanged":Z
    :cond_58
    :try_start_17
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->getGenerationId()I

    move-result v0

    if-ne v5, v0, :cond_59

    if-nez v37, :cond_59

    if-eqz v4, :cond_5a

    :cond_59
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_13

    if-nez v0, :cond_5a

    :try_start_18
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_5a

    .line 2442
    const/4 v1, 0x1

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_f

    .line 2452
    :try_start_19
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V
    :try_end_19
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_19 .. :try_end_19} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_f

    .line 2456
    goto :goto_27

    .line 2453
    :catch_10
    move-exception v0

    .line 2454
    .restart local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_1a
    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_f

    .line 2455
    return-void

    .line 2459
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_5a
    :goto_27
    and-int/lit8 v0, v9, 0x10

    if-eqz v0, :cond_5b

    const/4 v0, 0x1

    goto :goto_28

    :cond_5b
    const/4 v0, 0x0

    .line 2461
    .local v0, "freeformResizing":Z
    :goto_28
    and-int/lit8 v1, v9, 0x8

    if-eqz v1, :cond_5c

    const/4 v1, 0x1

    goto :goto_29

    :cond_5c
    const/4 v1, 0x0

    :goto_29
    move/from16 v40, v1

    .line 2463
    .local v40, "dockedResizing":Z
    if-nez v0, :cond_5e

    if-eqz v40, :cond_5d

    goto :goto_2a

    :cond_5d
    const/4 v1, 0x0

    goto :goto_2b

    :cond_5e
    :goto_2a
    const/4 v1, 0x1

    :goto_2b
    move v6, v1

    .line 2464
    .local v6, "dragResizing":Z
    :try_start_1b
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eq v1, v6, :cond_61

    .line 2465
    if-eqz v6, :cond_60

    .line 2466
    if-eqz v0, :cond_5f

    .line 2467
    nop

    .line 2468
    const/4 v1, 0x0

    goto :goto_2c

    :cond_5f
    const/4 v1, 0x1

    :goto_2c
    iput v1, v7, Landroid/view/ViewRootImpl;->mResizeMode:I

    .line 2470
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v41, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    .line 2471
    .end local v0    # "freeformResizing":Z
    .local v41, "freeformResizing":Z
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_13

    move/from16 v42, v5

    :try_start_1c
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 2471
    .end local v5    # "surfaceGenerationId":I
    .local v42, "surfaceGenerationId":I
    move/from16 v43, v6

    iget v6, v7, Landroid/view/ViewRootImpl;->mResizeMode:I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_11

    .line 2470
    .end local v6    # "dragResizing":Z
    .local v43, "dragResizing":Z
    move-object/from16 v44, v1

    move-object v1, v7

    move-object/from16 v45, v3

    move v3, v0

    .line 2470
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    move/from16 v46, v4

    move-object/from16 v4, v44

    .line 2470
    .end local v4    # "windowRelayoutWasForced":Z
    .restart local v46    # "windowRelayoutWasForced":Z
    move/from16 v47, v9

    move/from16 v9, v42

    .line 2470
    .end local v42    # "surfaceGenerationId":I
    .local v9, "surfaceGenerationId":I
    .restart local v47    # "relayoutResult":I
    move/from16 v48, v10

    move-object/from16 v10, v31

    move/from16 v0, v43

    .line 2470
    .end local v31    # "frame":Landroid/graphics/Rect;
    .end local v43    # "dragResizing":Z
    .local v0, "dragResizing":Z
    .local v10, "frame":Landroid/graphics/Rect;
    .local v48, "overscanInsetsChanged":Z
    :try_start_1d
    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_2d

    .line 2486
    .end local v0    # "dragResizing":Z
    .end local v10    # "frame":Landroid/graphics/Rect;
    .end local v28    # "visibleInsetsChanged":Z
    .end local v34    # "stableInsetsChanged":Z
    .end local v35    # "cutoutChanged":Z
    .end local v36    # "outsetsChanged":Z
    .end local v37    # "surfaceSizeChanged":Z
    .end local v38    # "alwaysConsumeNavBarChanged":Z
    .end local v40    # "dockedResizing":Z
    .end local v41    # "freeformResizing":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .end local v48    # "overscanInsetsChanged":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .local v9, "relayoutResult":I
    .restart local v31    # "frame":Landroid/graphics/Rect;
    .restart local v42    # "surfaceGenerationId":I
    :catch_11
    move-exception v0

    move-object/from16 v45, v3

    move/from16 v46, v4

    move/from16 v47, v9

    move-object/from16 v10, v31

    move/from16 v9, v42

    .line 2486
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v31    # "frame":Landroid/graphics/Rect;
    .end local v42    # "surfaceGenerationId":I
    .local v9, "surfaceGenerationId":I
    .restart local v10    # "frame":Landroid/graphics/Rect;
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    .restart local v47    # "relayoutResult":I
    goto/16 :goto_2f

    .line 2475
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .local v0, "freeformResizing":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .restart local v6    # "dragResizing":Z
    .local v9, "relayoutResult":I
    .local v10, "overscanInsetsChanged":Z
    .restart local v28    # "visibleInsetsChanged":Z
    .restart local v31    # "frame":Landroid/graphics/Rect;
    .restart local v34    # "stableInsetsChanged":Z
    .restart local v35    # "cutoutChanged":Z
    .restart local v36    # "outsetsChanged":Z
    .restart local v37    # "surfaceSizeChanged":Z
    .restart local v38    # "alwaysConsumeNavBarChanged":Z
    .restart local v40    # "dockedResizing":Z
    :cond_60
    move/from16 v41, v0

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v0, v6

    move/from16 v47, v9

    move/from16 v48, v10

    move-object/from16 v10, v31

    move v9, v5

    .line 2475
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v6    # "dragResizing":Z
    .end local v31    # "frame":Landroid/graphics/Rect;
    .local v0, "dragResizing":Z
    .local v9, "surfaceGenerationId":I
    .local v10, "frame":Landroid/graphics/Rect;
    .restart local v41    # "freeformResizing":Z
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    .restart local v47    # "relayoutResult":I
    .restart local v48    # "overscanInsetsChanged":Z
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    goto :goto_2d

    .line 2478
    .end local v41    # "freeformResizing":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .end local v48    # "overscanInsetsChanged":Z
    .local v0, "freeformResizing":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .restart local v6    # "dragResizing":Z
    .local v9, "relayoutResult":I
    .local v10, "overscanInsetsChanged":Z
    .restart local v31    # "frame":Landroid/graphics/Rect;
    :cond_61
    move/from16 v41, v0

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v0, v6

    move/from16 v47, v9

    move/from16 v48, v10

    move-object/from16 v10, v31

    move v9, v5

    .line 2478
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v6    # "dragResizing":Z
    .end local v31    # "frame":Landroid/graphics/Rect;
    .local v0, "dragResizing":Z
    .local v9, "surfaceGenerationId":I
    .local v10, "frame":Landroid/graphics/Rect;
    .restart local v41    # "freeformResizing":Z
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    .restart local v47    # "relayoutResult":I
    .restart local v48    # "overscanInsetsChanged":Z
    :goto_2d
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-nez v1, :cond_63

    .line 2479
    if-eqz v0, :cond_62

    .line 2480
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I

    .line 2481
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    goto :goto_2e

    .line 2483
    :cond_62
    const/4 v1, 0x0

    iput v1, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    iput v1, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_12

    .line 2487
    .end local v0    # "dragResizing":Z
    .end local v28    # "visibleInsetsChanged":Z
    .end local v34    # "stableInsetsChanged":Z
    .end local v35    # "cutoutChanged":Z
    .end local v36    # "outsetsChanged":Z
    .end local v37    # "surfaceSizeChanged":Z
    .end local v38    # "alwaysConsumeNavBarChanged":Z
    .end local v40    # "dockedResizing":Z
    .end local v41    # "freeformResizing":Z
    .end local v48    # "overscanInsetsChanged":Z
    :cond_63
    :goto_2e
    goto :goto_2f

    .line 2486
    :catch_12
    move-exception v0

    goto :goto_2f

    .line 2486
    .end local v10    # "frame":Landroid/graphics/Rect;
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .local v9, "relayoutResult":I
    .restart local v31    # "frame":Landroid/graphics/Rect;
    :catch_13
    move-exception v0

    move-object/from16 v45, v3

    move/from16 v46, v4

    move/from16 v47, v9

    move-object/from16 v10, v31

    move v9, v5

    .line 2486
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v31    # "frame":Landroid/graphics/Rect;
    .local v9, "surfaceGenerationId":I
    .restart local v10    # "frame":Landroid/graphics/Rect;
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    .restart local v47    # "relayoutResult":I
    goto :goto_2f

    .line 2486
    .end local v10    # "frame":Landroid/graphics/Rect;
    .end local v39    # "insetsPending":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .restart local v1    # "insetsPending":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .local v9, "relayoutResult":I
    .restart local v31    # "frame":Landroid/graphics/Rect;
    :catch_14
    move-exception v0

    move/from16 v39, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move/from16 v47, v9

    move-object/from16 v10, v31

    move v9, v5

    .line 2486
    .end local v1    # "insetsPending":Z
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v31    # "frame":Landroid/graphics/Rect;
    .local v9, "surfaceGenerationId":I
    .restart local v10    # "frame":Landroid/graphics/Rect;
    .restart local v39    # "insetsPending":Z
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    .restart local v47    # "relayoutResult":I
    goto :goto_2f

    .line 2486
    .end local v9    # "surfaceGenerationId":I
    .end local v10    # "frame":Landroid/graphics/Rect;
    .end local v39    # "insetsPending":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .restart local v1    # "insetsPending":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .local v28, "relayoutResult":I
    .restart local v31    # "frame":Landroid/graphics/Rect;
    :catch_15
    move-exception v0

    move/from16 v39, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    move-object/from16 v10, v31

    move/from16 v47, v28

    .line 2486
    .end local v1    # "insetsPending":Z
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v31    # "frame":Landroid/graphics/Rect;
    .restart local v9    # "surfaceGenerationId":I
    .restart local v10    # "frame":Landroid/graphics/Rect;
    .restart local v39    # "insetsPending":Z
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    goto :goto_2f

    .line 2486
    .end local v30    # "hwInitialized":Z
    .end local v32    # "layoutRequested":Z
    .end local v33    # "windowShouldResize":Z
    .end local v39    # "insetsPending":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .restart local v1    # "insetsPending":Z
    .local v2, "hwInitialized":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .local v6, "frame":Landroid/graphics/Rect;
    .local v9, "layoutRequested":Z
    .local v10, "windowShouldResize":Z
    :catch_16
    move-exception v0

    move/from16 v39, v1

    move/from16 v30, v2

    move-object/from16 v45, v3

    move/from16 v46, v4

    move/from16 v32, v9

    move/from16 v33, v10

    move v9, v5

    move-object v10, v6

    move/from16 v47, v28

    .line 2492
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v6    # "frame":Landroid/graphics/Rect;
    .end local v28    # "relayoutResult":I
    .end local v29    # "updatedConfiguration":Z
    .local v1, "relayoutResult":I
    .local v2, "updatedConfiguration":Z
    .local v9, "surfaceGenerationId":I
    .local v10, "frame":Landroid/graphics/Rect;
    .restart local v30    # "hwInitialized":Z
    .restart local v32    # "layoutRequested":Z
    .restart local v33    # "windowShouldResize":Z
    .restart local v39    # "insetsPending":Z
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    :goto_2f
    move/from16 v2, v29

    move/from16 v1, v47

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 2493
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 2498
    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v0, v3, :cond_64

    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v0, v3, :cond_65

    .line 2499
    :cond_64
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 2500
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 2503
    :cond_65
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v0, :cond_6d

    .line 2505
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2508
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v3, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 2510
    :cond_66
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v4, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 2511
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2512
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 2513
    if-nez v27, :cond_68

    .line 2514
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2516
    const/4 v3, 0x1

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 2517
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 2518
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_67

    .line 2519
    array-length v3, v0

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v3, :cond_67

    aget-object v5, v0, v4

    .line 2520
    .local v5, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 2519
    .end local v5    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 2523
    :cond_67
    const/16 v16, 0x1

    .line 2525
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_68
    if-nez v16, :cond_6a

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->getGenerationId()I

    move-result v0

    if-eq v9, v0, :cond_69

    goto :goto_31

    .line 2534
    :cond_69
    move/from16 v51, v9

    goto :goto_33

    .line 2526
    :cond_6a
    :goto_31
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 2527
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_6b

    .line 2528
    array-length v3, v0

    const/4 v4, 0x0

    :goto_32
    if-ge v4, v3, :cond_6b

    aget-object v5, v0, v4

    .line 2529
    .restart local v5    # "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v49, v0

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2529
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v49, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move/from16 v50, v3

    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v51, v9

    iget v9, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 2529
    .end local v9    # "surfaceGenerationId":I
    .local v51, "surfaceGenerationId":I
    invoke-interface {v5, v6, v0, v3, v9}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 2528
    .end local v5    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v49

    move/from16 v3, v50

    move/from16 v9, v51

    goto :goto_32

    .line 2534
    .end local v49    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v51    # "surfaceGenerationId":I
    .restart local v9    # "surfaceGenerationId":I
    :cond_6b
    move/from16 v51, v9

    .line 2534
    .end local v9    # "surfaceGenerationId":I
    .restart local v51    # "surfaceGenerationId":I
    :goto_33
    const/4 v3, 0x0

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mIsCreating:Z

    goto :goto_34

    .line 2535
    .end local v51    # "surfaceGenerationId":I
    .restart local v9    # "surfaceGenerationId":I
    :cond_6c
    move/from16 v51, v9

    .line 2535
    .end local v9    # "surfaceGenerationId":I
    .restart local v51    # "surfaceGenerationId":I
    if-eqz v27, :cond_6e

    .line 2536
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->notifySurfaceDestroyed()V

    .line 2537
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2539
    :try_start_1e
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3}, Landroid/view/Surface;-><init>()V

    iput-object v3, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 2541
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2542
    goto :goto_34

    .line 2541
    :catchall_0
    move-exception v0

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v3, v3, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 2546
    .end local v51    # "surfaceGenerationId":I
    .restart local v9    # "surfaceGenerationId":I
    :cond_6d
    move/from16 v51, v9

    .line 2546
    .end local v9    # "surfaceGenerationId":I
    .restart local v51    # "surfaceGenerationId":I
    :cond_6e
    :goto_34
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 2547
    .local v0, "threadedRenderer":Landroid/view/ThreadedRenderer;
    if-eqz v0, :cond_70

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 2548
    if-nez v30, :cond_6f

    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 2549
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_6f

    iget v3, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 2550
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_6f

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    if-eqz v3, :cond_70

    .line 2552
    :cond_6f
    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v4, v7, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 2554
    const/4 v3, 0x0

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    .line 2558
    :cond_70
    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v3, :cond_71

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v3, :cond_73

    .line 2559
    :cond_71
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_72

    const/4 v3, 0x1

    goto :goto_35

    :cond_72
    const/4 v3, 0x0

    :goto_35
    invoke-direct {v7, v3}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v3

    .line 2561
    .local v3, "focusChangedDueToTouchMode":Z
    if-nez v3, :cond_74

    iget v4, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_74

    iget v4, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 2562
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ne v4, v5, :cond_74

    if-nez v26, :cond_74

    if-eqz v2, :cond_73

    goto :goto_36

    .line 2622
    .end local v0    # "threadedRenderer":Landroid/view/ThreadedRenderer;
    .end local v3    # "focusChangedDueToTouchMode":Z
    .end local v26    # "contentInsetsChanged":Z
    .end local v27    # "hadSurface":Z
    .end local v30    # "hwInitialized":Z
    :cond_73
    move/from16 v52, v1

    move/from16 v53, v2

    move/from16 v9, v32

    goto/16 :goto_3a

    .line 2564
    .restart local v0    # "threadedRenderer":Landroid/view/ThreadedRenderer;
    .restart local v3    # "focusChangedDueToTouchMode":Z
    .restart local v26    # "contentInsetsChanged":Z
    .restart local v27    # "hadSurface":Z
    .restart local v30    # "hwInitialized":Z
    :cond_74
    :goto_36
    iget v4, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v5, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v4, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v4

    .line 2565
    .local v4, "childWidthMeasureSpec":I
    iget v5, v7, Landroid/view/ViewRootImpl;->mHeight:I

    iget v6, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v5

    .line 2575
    .local v5, "childHeightMeasureSpec":I
    sget-boolean v6, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v6, :cond_75

    move/from16 v52, v1

    move/from16 v53, v2

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v6

    .line 2575
    .end local v1    # "relayoutResult":I
    .end local v2    # "updatedConfiguration":Z
    .local v52, "relayoutResult":I
    .local v53, "updatedConfiguration":Z
    if-eqz v6, :cond_76

    .line 2576
    const-string/jumbo v6, "performMeasure: Ask host how big it wants to be"

    invoke-static {v1, v2, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_37

    .line 2578
    .end local v52    # "relayoutResult":I
    .end local v53    # "updatedConfiguration":Z
    .restart local v1    # "relayoutResult":I
    .restart local v2    # "updatedConfiguration":Z
    :cond_75
    move/from16 v52, v1

    move/from16 v53, v2

    const-wide/16 v1, 0x8

    .line 2578
    .end local v1    # "relayoutResult":I
    .end local v2    # "updatedConfiguration":Z
    .restart local v52    # "relayoutResult":I
    .restart local v53    # "updatedConfiguration":Z
    :cond_76
    :goto_37
    invoke-direct {v7, v4, v5}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 2580
    sget-boolean v6, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v6, :cond_77

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 2581
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2587
    :cond_77
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 2588
    .local v1, "width":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 2589
    .local v2, "height":I
    const/4 v6, 0x0

    .line 2591
    .local v6, "measureAgain":Z
    iget v9, v11, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const/16 v28, 0x0

    cmpl-float v9, v9, v28

    move-object/from16 v54, v0

    .line 2591
    .end local v0    # "threadedRenderer":Landroid/view/ThreadedRenderer;
    .local v54, "threadedRenderer":Landroid/view/ThreadedRenderer;
    if-lez v9, :cond_78

    .line 2592
    iget v9, v7, Landroid/view/ViewRootImpl;->mWidth:I

    sub-int/2addr v9, v1

    int-to-float v9, v9

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    mul-float/2addr v9, v0

    float-to-int v0, v9

    add-int/2addr v1, v0

    .line 2593
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2595
    const/4 v6, 0x1

    .line 2597
    :cond_78
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    cmpl-float v0, v0, v28

    if-lez v0, :cond_79

    .line 2598
    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v9, v11, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    mul-float/2addr v0, v9

    float-to-int v0, v0

    add-int/2addr v2, v0

    .line 2599
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2601
    const/4 v6, 0x1

    .line 2604
    :cond_79
    if-eqz v6, :cond_7c

    .line 2609
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v0, :cond_7a

    move/from16 v55, v1

    move/from16 v56, v2

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    .line 2609
    .end local v1    # "width":I
    .end local v2    # "height":I
    .local v55, "width":I
    .local v56, "height":I
    if-eqz v0, :cond_7b

    .line 2610
    const-string/jumbo v0, "measureAgain"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_38

    .line 2612
    .end local v55    # "width":I
    .end local v56    # "height":I
    .restart local v1    # "width":I
    .restart local v2    # "height":I
    :cond_7a
    move/from16 v55, v1

    move/from16 v56, v2

    const-wide/16 v1, 0x8

    .line 2612
    .end local v1    # "width":I
    .end local v2    # "height":I
    .restart local v55    # "width":I
    .restart local v56    # "height":I
    :cond_7b
    :goto_38
    invoke-direct {v7, v4, v5}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 2614
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v0, :cond_7d

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2615
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_39

    .line 2619
    .end local v55    # "width":I
    .end local v56    # "height":I
    .restart local v1    # "width":I
    .restart local v2    # "height":I
    :cond_7c
    move/from16 v55, v1

    move/from16 v56, v2

    .line 2619
    .end local v1    # "width":I
    .end local v2    # "height":I
    .restart local v55    # "width":I
    .restart local v56    # "height":I
    :cond_7d
    :goto_39
    const/4 v0, 0x1

    .line 2622
    .end local v3    # "focusChangedDueToTouchMode":Z
    .end local v4    # "childWidthMeasureSpec":I
    .end local v5    # "childHeightMeasureSpec":I
    .end local v6    # "measureAgain":Z
    .end local v26    # "contentInsetsChanged":Z
    .end local v27    # "hadSurface":Z
    .end local v30    # "hwInitialized":Z
    .end local v32    # "layoutRequested":Z
    .end local v54    # "threadedRenderer":Landroid/view/ThreadedRenderer;
    .end local v55    # "width":I
    .end local v56    # "height":I
    .local v0, "layoutRequested":Z
    move v9, v0

    .line 2631
    .end local v0    # "layoutRequested":Z
    .local v9, "layoutRequested":Z
    :goto_3a
    move/from16 v27, v39

    move/from16 v1, v52

    move/from16 v2, v53

    .line 2631
    .end local v39    # "insetsPending":Z
    .end local v52    # "relayoutResult":I
    .end local v53    # "updatedConfiguration":Z
    .local v1, "relayoutResult":I
    .local v2, "updatedConfiguration":Z
    .local v27, "insetsPending":Z
    :goto_3b
    if-eqz v9, :cond_7f

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v0, :cond_7e

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_7f

    :cond_7e
    const/4 v0, 0x1

    goto :goto_3c

    :cond_7f
    const/4 v0, 0x0

    :goto_3c
    move v3, v0

    .line 2632
    .local v3, "didLayout":Z
    if-nez v3, :cond_81

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v0, :cond_80

    goto :goto_3d

    :cond_80
    const/4 v0, 0x0

    goto :goto_3e

    :cond_81
    :goto_3d
    const/4 v0, 0x1

    :goto_3e
    move v4, v0

    .line 2634
    .local v4, "triggerGlobalLayoutListener":Z
    if-eqz v3, :cond_84

    .line 2635
    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v5, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-direct {v7, v11, v0, v5}, Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    .line 2638
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mRedPacketHelper:Landroid/view/RedPacketHelper;

    if-eqz v0, :cond_82

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mRedPacketHelper:Landroid/view/RedPacketHelper;

    invoke-virtual {v0}, Landroid/view/RedPacketHelper;->noteUIReady()V

    .line 2644
    :cond_82
    iget v0, v8, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_84

    .line 2647
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    invoke-virtual {v8, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2648
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/16 v18, 0x1

    aget v6, v6, v18

    move/from16 v57, v2

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .end local v2    # "updatedConfiguration":Z
    .local v57, "updatedConfiguration":Z
    const/16 v19, 0x0

    aget v2, v2, v19

    move/from16 v58, v3

    iget v3, v8, Landroid/view/View;->mRight:I

    .line 2648
    .end local v3    # "didLayout":Z
    .local v58, "didLayout":Z
    add-int/2addr v2, v3

    iget v3, v8, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    aget v3, v3, v18

    move/from16 v59, v9

    iget v9, v8, Landroid/view/View;->mBottom:I

    .line 2648
    .end local v9    # "layoutRequested":Z
    .local v59, "layoutRequested":Z
    add-int/2addr v3, v9

    iget v9, v8, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v9

    invoke-virtual {v0, v5, v6, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 2652
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v8, v0}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 2653
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_83

    .line 2654
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 2657
    :cond_83
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 2658
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 2659
    const/4 v2, 0x1

    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2662
    :try_start_1f
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_17

    .line 2664
    goto :goto_3f

    .line 2663
    :catch_17
    move-exception v0

    goto :goto_3f

    .line 2675
    .end local v57    # "updatedConfiguration":Z
    .end local v58    # "didLayout":Z
    .end local v59    # "layoutRequested":Z
    .restart local v2    # "updatedConfiguration":Z
    .restart local v3    # "didLayout":Z
    .restart local v9    # "layoutRequested":Z
    :cond_84
    move/from16 v57, v2

    move/from16 v58, v3

    move/from16 v59, v9

    .line 2675
    .end local v2    # "updatedConfiguration":Z
    .end local v3    # "didLayout":Z
    .end local v9    # "layoutRequested":Z
    .restart local v57    # "updatedConfiguration":Z
    .restart local v58    # "didLayout":Z
    .restart local v59    # "layoutRequested":Z
    :cond_85
    :goto_3f
    if-eqz v4, :cond_86

    .line 2676
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 2677
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 2680
    :cond_86
    if-eqz v21, :cond_89

    .line 2682
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 2683
    .local v2, "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 2686
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2687
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    iput-boolean v3, v0, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    .line 2690
    if-nez v27, :cond_87

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 2691
    :cond_87
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2697
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_88

    .line 2698
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2699
    .local v0, "contentInsets":Landroid/graphics/Rect;
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 2700
    .local v3, "visibleInsets":Landroid/graphics/Rect;
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v6, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v5

    .line 2704
    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    .local v3, "contentInsets":Landroid/graphics/Rect;
    .local v5, "visibleInsets":Landroid/graphics/Rect;
    .local v39, "touchableRegion":Landroid/graphics/Region;
    :goto_40
    move-object/from16 v39, v5

    move-object v5, v3

    move-object v3, v0

    goto :goto_41

    .line 2702
    .end local v3    # "contentInsets":Landroid/graphics/Rect;
    .end local v5    # "visibleInsets":Landroid/graphics/Rect;
    .end local v39    # "touchableRegion":Landroid/graphics/Region;
    :cond_88
    iget-object v0, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 2703
    .restart local v0    # "contentInsets":Landroid/graphics/Rect;
    iget-object v3, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 2704
    .local v3, "visibleInsets":Landroid/graphics/Rect;
    iget-object v5, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    goto :goto_40

    .line 2708
    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    .local v3, "contentInsets":Landroid/graphics/Rect;
    .restart local v5    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v39    # "touchableRegion":Landroid/graphics/Region;
    :goto_41
    :try_start_20
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v9, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    move-object/from16 v34, v0

    move-object/from16 v35, v6

    move/from16 v36, v9

    move-object/from16 v37, v3

    move-object/from16 v38, v5

    invoke-interface/range {v34 .. v39}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_18

    .line 2711
    goto :goto_42

    .line 2710
    :catch_18
    move-exception v0

    .line 2715
    .end local v2    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .end local v3    # "contentInsets":Landroid/graphics/Rect;
    .end local v5    # "visibleInsets":Landroid/graphics/Rect;
    .end local v39    # "touchableRegion":Landroid/graphics/Region;
    :cond_89
    :goto_42
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v0, :cond_8c

    .line 2716
    sget-boolean v0, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    if-nez v0, :cond_8b

    invoke-static {}, Landroid/view/ViewRootImpl;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_8a

    goto :goto_43

    .line 2740
    :cond_8a
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2741
    .local v0, "focused":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_8c

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 2742
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_8c

    .line 2744
    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 2744
    .end local v0    # "focused":Landroid/view/View;
    goto :goto_44

    .line 2721
    :cond_8b
    :goto_43
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_8c

    .line 2722
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 2723
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 2749
    :cond_8c
    :goto_44
    if-nez v20, :cond_8d

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v0, :cond_8e

    :cond_8d
    if-eqz v25, :cond_8e

    const/4 v0, 0x1

    goto :goto_45

    :cond_8e
    const/4 v0, 0x0

    .line 2750
    .local v0, "changedVisibility":Z
    :goto_45
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_8f

    if-eqz v25, :cond_8f

    const/4 v2, 0x1

    goto :goto_46

    :cond_8f
    const/4 v2, 0x0

    .line 2751
    .local v2, "hasWindowFocus":Z
    :goto_46
    if-eqz v2, :cond_90

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    if-eqz v3, :cond_90

    const/4 v3, 0x1

    goto :goto_47

    :cond_90
    const/4 v3, 0x0

    .line 2752
    .local v3, "regainedFocus":Z
    :goto_47
    if-eqz v3, :cond_91

    .line 2753
    const/4 v5, 0x0

    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    goto :goto_48

    .line 2754
    :cond_91
    if-nez v2, :cond_92

    iget-boolean v5, v7, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    if-eqz v5, :cond_92

    .line 2755
    const/4 v5, 0x1

    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    .line 2758
    :cond_92
    :goto_48
    if-nez v0, :cond_93

    if-eqz v3, :cond_96

    .line 2760
    :cond_93
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v5, :cond_94

    .line 2761
    :goto_49
    const/4 v5, 0x0

    goto :goto_4a

    :cond_94
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d5

    if-ne v5, v6, :cond_95

    const/4 v5, 0x1

    goto :goto_4a

    :cond_95
    goto :goto_49

    .line 2762
    .local v5, "isToast":Z
    :goto_4a
    if-nez v5, :cond_96

    .line 2763
    const/16 v6, 0x20

    invoke-virtual {v8, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2768
    .end local v5    # "isToast":Z
    :cond_96
    iget-boolean v5, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 2770
    .local v5, "firstCopy":Z
    const/4 v6, 0x0

    iput-boolean v6, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 2771
    iput-boolean v6, v7, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 2772
    iput-boolean v6, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 2773
    iput-boolean v6, v7, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    .line 2774
    iput v12, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 2775
    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    .line 2777
    if-eqz v2, :cond_97

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v6

    if-nez v6, :cond_97

    .line 2778
    iget-object v6, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2779
    invoke-static {v6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v6

    .line 2780
    .local v6, "imTarget":Z
    iget-boolean v9, v7, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eq v6, v9, :cond_97

    .line 2781
    iput-boolean v6, v7, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 2782
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v9

    .line 2783
    .local v9, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v9, :cond_97

    if-eqz v6, :cond_97

    .line 2784
    move/from16 v60, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2784
    .end local v0    # "changedVisibility":Z
    .local v60, "changedVisibility":Z
    invoke-virtual {v9, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    .line 2785
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move/from16 v61, v2

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2785
    .end local v2    # "hasWindowFocus":Z
    .local v61, "hasWindowFocus":Z
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v36

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v62, v3

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 2785
    .end local v3    # "regainedFocus":Z
    .local v62, "regainedFocus":Z
    const/16 v18, 0x1

    xor-int/lit8 v38, v3, 0x1

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v34, v9

    move-object/from16 v35, v0

    move/from16 v37, v2

    move/from16 v39, v3

    invoke-virtual/range {v34 .. v39}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .end local v6    # "imTarget":Z
    .end local v9    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_4b

    .line 2793
    .end local v60    # "changedVisibility":Z
    .end local v61    # "hasWindowFocus":Z
    .end local v62    # "regainedFocus":Z
    .restart local v0    # "changedVisibility":Z
    .restart local v2    # "hasWindowFocus":Z
    .restart local v3    # "regainedFocus":Z
    :cond_97
    move/from16 v60, v0

    move/from16 v61, v2

    move/from16 v62, v3

    const/16 v18, 0x1

    .line 2793
    .end local v0    # "changedVisibility":Z
    .end local v2    # "hasWindowFocus":Z
    .end local v3    # "regainedFocus":Z
    .restart local v60    # "changedVisibility":Z
    .restart local v61    # "hasWindowFocus":Z
    .restart local v62    # "regainedFocus":Z
    :goto_4b
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_98

    .line 2794
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    .line 2797
    :cond_98
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v0

    if-nez v0, :cond_9a

    if-nez v25, :cond_99

    goto :goto_4c

    :cond_99
    const/16 v18, 0x0

    nop

    :cond_9a
    :goto_4c
    move/from16 v0, v18

    .line 2799
    .local v0, "cancelDraw":Z
    if-nez v0, :cond_9d

    if-nez v24, :cond_9d

    .line 2800
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v2, :cond_9c

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9c

    .line 2801
    const/4 v2, 0x0

    .line 2801
    .local v2, "i":I
    :goto_4d
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9b

    .line 2802
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/LayoutTransition;

    invoke-virtual {v3}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    .line 2801
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 2804
    .end local v2    # "i":I
    :cond_9b
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2807
    :cond_9c
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performDraw()V

    .line 2809
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->stopAppTraversalsAccelerate()V

    goto :goto_4f

    .line 2812
    :cond_9d
    if-eqz v25, :cond_9e

    .line 2814
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_4f

    .line 2815
    :cond_9e
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v2, :cond_a0

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a0

    .line 2816
    const/4 v2, 0x0

    .line 2816
    .restart local v2    # "i":I
    :goto_4e
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9f

    .line 2817
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/LayoutTransition;

    invoke-virtual {v3}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 2816
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 2819
    .end local v2    # "i":I
    :cond_9f
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2823
    :cond_a0
    :goto_4f
    const/4 v2, 0x0

    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    .line 2825
    if-eqz v5, :cond_a1

    if-eqz v25, :cond_a1

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v2, :cond_a2

    .line 2826
    :cond_a1
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->stopAppTraversalsAccelerate()V

    .line 2829
    :cond_a2
    return-void

    .line 1971
    .end local v0    # "cancelDraw":Z
    .end local v1    # "relayoutResult":I
    .end local v4    # "triggerGlobalLayoutListener":Z
    .end local v5    # "firstCopy":Z
    .end local v10    # "frame":Landroid/graphics/Rect;
    .end local v11    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "viewVisibility":I
    .end local v13    # "desiredWindowHeight":I
    .end local v14    # "desiredWindowWidth":I
    .end local v15    # "viewUserVisibilityChanged":Z
    .end local v16    # "surfaceChanged":Z
    .end local v17    # "windowSizeMayChange":Z
    .end local v20    # "viewVisibilityChanged":Z
    .end local v21    # "computesInternalInsets":Z
    .end local v22    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v23    # "insetsChanged":Z
    .end local v24    # "newSurface":Z
    .end local v25    # "isViewVisible":Z
    .end local v27    # "insetsPending":Z
    .end local v33    # "windowShouldResize":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v51    # "surfaceGenerationId":I
    .end local v57    # "updatedConfiguration":Z
    .end local v58    # "didLayout":Z
    .end local v59    # "layoutRequested":Z
    .end local v60    # "changedVisibility":Z
    .end local v61    # "hasWindowFocus":Z
    .end local v62    # "regainedFocus":Z
    :cond_a3
    :goto_50
    return-void
.end method

.method private postDrawFinished()V
    .locals 2

    .line 3427
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 3428
    return-void
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .locals 2
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    .line 8113
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v0, :cond_0

    .line 8114
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 8117
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    .line 8118
    return-void
.end method

.method private profileRendering(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 3350
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    if-eqz v0, :cond_3

    .line 3351
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    .line 3353
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_0

    .line 3354
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 3356
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    if-eqz v0, :cond_2

    .line 3357
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_1

    .line 3358
    new-instance v0, Landroid/view/ViewRootImpl$4;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 3369
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 3371
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 3374
    :cond_3
    :goto_0
    return-void
.end method

.method private recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7604
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7605
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 7607
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 7608
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 7609
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7610
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7612
    :cond_0
    return-void
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 29
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "viewVisibility"    # I
    .param p3, "insetsPending"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 7100
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v14, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 7101
    .local v14, "appScale":F
    const/4 v1, 0x0

    .line 7102
    .local v1, "restore":Z
    if-eqz v15, :cond_0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_0

    .line 7103
    const/4 v1, 0x1

    .line 7104
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 7105
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v15}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 7108
    .end local v1    # "restore":Z
    .local v21, "restore":Z
    :cond_0
    move/from16 v21, v1

    if-eqz v15, :cond_1

    .line 7111
    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_1

    .line 7113
    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 7114
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7116
    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iput v1, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 7121
    :cond_1
    const-wide/16 v1, -0x1

    .line 7122
    .local v1, "frameNumber":J
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7123
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->getNextFrameNumber()J

    move-result-wide v1

    .line 7125
    .end local v1    # "frameNumber":J
    .local v22, "frameNumber":J
    :cond_2
    move-wide/from16 v22, v1

    sget-boolean v1, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v12, 0x8

    if-eqz v1, :cond_3

    .line 7126
    const-string v1, "ViewRootImpl.mWindowSession.relayout"

    invoke-static {v12, v13, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7128
    :cond_3
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v3, v0, Landroid/view/ViewRootImpl;->mSeq:I

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 7129
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v6, v4

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 7130
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    add-float/2addr v4, v5

    float-to-int v7, v4

    .line 7131
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v8, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    move/from16 v24, v14

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    .end local v14    # "appScale":F
    .local v24, "appScale":F
    move-object/from16 v25, v14

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    move-object/from16 v26, v14

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    move-object/from16 v27, v14

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 7128
    move-object/from16 v16, v4

    move-object v4, v15

    move-object/from16 v17, v5

    move v5, v6

    move v6, v7

    move/from16 v7, p2

    move-object/from16 v18, v8

    move/from16 v8, p3

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-wide/from16 v9, v22

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    move-object/from16 v19, v25

    move-object/from16 v20, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v25

    move-object/from16 v20, v26

    invoke-interface/range {v1 .. v20}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I

    move-result v1

    .line 7135
    .local v1, "relayoutResult":I
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_4

    .line 7136
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 7139
    :cond_4
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    .line 7142
    if-eqz v21, :cond_6

    .line 7143
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 7146
    :cond_6
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_7

    .line 7147
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 7148
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7149
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7150
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7151
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7153
    :cond_7
    return v1
.end method

.method private removeSendWindowContentChangedCallback()V
    .locals 2

    .line 8125
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_0

    .line 8126
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8128
    :cond_0
    return-void
.end method

.method private reportDrawFinished()V
    .locals 2

    .line 3432
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    .line 3433
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3436
    goto :goto_0

    .line 3434
    :catch_0
    move-exception v0

    .line 3437
    :goto_0
    return-void
.end method

.method private reportNextDraw()V
    .locals 1

    .line 8456
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v0, :cond_0

    .line 8457
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->drawPending()V

    .line 8459
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 8460
    return-void
.end method

.method private requestDrawWindow()V
    .locals 3

    .line 8785
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-nez v0, :cond_0

    .line 8786
    return-void

    .line 8788
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 8789
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 8790
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    invoke-interface {v1, v2}, Landroid/view/WindowCallbacks;->onRequestDraw(Z)V

    .line 8789
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8792
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private resetPointerIcon(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 5736
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    .line 5737
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    .line 5738
    return-void
.end method

.method private scheduleProcessInputEvents()V
    .locals 3

    .line 7648
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-nez v0, :cond_0

    .line 7649
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 7650
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 7651
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7652
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7654
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static seekForPreCreatedRenderThread(Ljava/lang/String;Z)Landroid/view/ThreadedRenderer;
    .locals 4
    .param p0, "surfaceName"    # Ljava/lang/String;
    .param p1, "isTranslucent"    # Z

    .line 1229
    sget-object v0, Landroid/view/ViewRootImpl;->mPreCreatedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1230
    :try_start_0
    sget-object v1, Landroid/view/ViewRootImpl;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl$RenderThreadRecord;

    .line 1231
    .local v2, "r":Landroid/view/ViewRootImpl$RenderThreadRecord;
    iget-object v3, v2, Landroid/view/ViewRootImpl$RenderThreadRecord;->mSurfaceName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Landroid/view/ViewRootImpl$RenderThreadRecord;->isTranslucent:Z

    if-ne v3, p1, :cond_0

    .line 1232
    sget-object v1, Landroid/view/ViewRootImpl;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1233
    iget-object v1, v2, Landroid/view/ViewRootImpl$RenderThreadRecord;->renderThread:Landroid/view/ThreadedRenderer;

    monitor-exit v0

    return-object v1

    .line 1235
    .end local v2    # "r":Landroid/view/ViewRootImpl$RenderThreadRecord;
    :cond_0
    goto :goto_0

    .line 1236
    :cond_1
    monitor-exit v0

    .line 1237
    const/4 v0, 0x0

    return-object v0

    .line 1236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setForcedDrawing(Z)V
    .locals 0
    .param p0, "drawing"    # Z

    .line 517
    sput-boolean p0, Landroid/view/ViewRootImpl;->mForcedDrawing:Z

    .line 518
    return-void
.end method

.method private setTag()V
    .locals 3

    .line 971
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 972
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewRootImpl["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 975
    :cond_0
    return-void
.end method

.method private static shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 1950
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7de

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private startAppTraversalsAccelerate(Landroid/view/View;)V
    .locals 4
    .param p1, "decorView"    # Landroid/view/View;

    .line 9197
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHasStartTraversalsAccelerate:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 9200
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 9201
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9202
    const-string v0, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAppTraversalsAccelerate getTitle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,isEnableAppTraversalsAccelerate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityThread;->isEnableAppTraversalsAccelerate()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9204
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->isEnableAppTraversalsAccelerate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9205
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mHasStartTraversalsAccelerate:Z

    .line 9206
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    if-eqz v0, :cond_2

    .line 9207
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 9208
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 9209
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 9210
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9214
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    return-void

    .line 9198
    :cond_3
    :goto_0
    return-void
.end method

.method private startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 9
    .param p1, "initialBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;
    .param p5, "resizeMode"    # I

    .line 8745
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-nez v0, :cond_1

    .line 8746
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 8747
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eqz v1, :cond_0

    .line 8748
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 8749
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/WindowCallbacks;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/view/WindowCallbacks;->onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 8748
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8753
    .end local v1    # "i":I
    :cond_0
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 8755
    :cond_1
    return-void
.end method

.method private stopAppTraversalsAccelerate()V
    .locals 2

    .line 9217
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHasStartTraversalsAccelerate:Z

    if-eqz v0, :cond_1

    .line 9218
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    if-eqz v0, :cond_0

    .line 9219
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 9220
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->checkHasSyncBarrier(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9221
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 9224
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHasStartTraversalsAccelerate:Z

    .line 9226
    :cond_1
    return-void
.end method

.method public static storeRenderThreadInfo(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "translucent"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "wideGamut"    # Z

    .line 1143
    if-nez p1, :cond_5

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1144
    :cond_0
    invoke-static {p0}, Landroid/view/ViewRootImpl;->getFilesDirAbsolutePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, "filesDirPath":Ljava/lang/String;
    if-nez v0, :cond_1

    return-void

    .line 1146
    :cond_1
    sget-object v1, Landroid/view/ViewRootImpl;->mPreCreatedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1147
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/view/ViewRootImpl;->renderThreadInfoFN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1148
    .local v2, "_RenderThreadInfoFile":Ljava/io/File;
    invoke-static {p2, p1}, Landroid/view/ViewRootImpl;->seekForPreCreatedRenderThread(Ljava/lang/String;Z)Landroid/view/ThreadedRenderer;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1149
    new-instance v3, Landroid/view/ViewRootImpl$RenderThreadRecord;

    invoke-direct {v3}, Landroid/view/ViewRootImpl$RenderThreadRecord;-><init>()V

    .line 1150
    .local v3, "record":Landroid/view/ViewRootImpl$RenderThreadRecord;
    iput-object p2, v3, Landroid/view/ViewRootImpl$RenderThreadRecord;->mSurfaceName:Ljava/lang/String;

    .line 1151
    iput-boolean p1, v3, Landroid/view/ViewRootImpl$RenderThreadRecord;->isTranslucent:Z

    .line 1152
    sget-object v4, Landroid/view/ViewRootImpl;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1153
    sget-object v4, Landroid/view/ViewRootImpl;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1155
    :cond_2
    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v4, "bw":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .line 1156
    :try_start_2
    sget-object v6, Landroid/view/ViewRootImpl;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewRootImpl$RenderThreadRecord;

    .line 1157
    .local v7, "r":Landroid/view/ViewRootImpl$RenderThreadRecord;
    invoke-virtual {v7}, Landroid/view/ViewRootImpl$RenderThreadRecord;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1158
    .end local v7    # "r":Landroid/view/ViewRootImpl$RenderThreadRecord;
    goto :goto_0

    .line 1159
    :cond_3
    :try_start_3
    invoke-static {v5, v4}, Landroid/view/ViewRootImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1161
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 1159
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v6

    goto :goto_1

    .line 1155
    :catch_0
    move-exception v5

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1159
    :goto_1
    :try_start_5
    invoke-static {v5, v4}, Landroid/view/ViewRootImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v4

    .line 1160
    .local v4, "ioe":Ljava/lang/Exception;
    :try_start_6
    const-string v5, "ViewRootImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add translucent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    .end local v2    # "_RenderThreadInfoFile":Ljava/io/File;
    .end local v3    # "record":Landroid/view/ViewRootImpl$RenderThreadRecord;
    .end local v4    # "ioe":Ljava/lang/Exception;
    :cond_4
    :goto_2
    monitor-exit v1

    .line 1164
    return-void

    .line 1163
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 1143
    .end local v0    # "filesDirPath":Ljava/lang/String;
    :cond_5
    :goto_3
    return-void
.end method

.method private trackFPS()V
    .locals 12

    .line 3382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3383
    .local v0, "nowTime":J
    iget-wide v2, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 3384
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 3385
    iput v3, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    goto :goto_0

    .line 3387
    :cond_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 3388
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 3389
    .local v2, "thisHash":Ljava/lang/String;
    iget-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    sub-long v4, v0, v4

    .line 3390
    .local v4, "frameTime":J
    iget-wide v6, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    sub-long v6, v0, v6

    .line 3391
    .local v6, "totalTime":J
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\tFrame time:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 3393
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 3394
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    long-to-float v9, v6

    div-float/2addr v8, v9

    .line 3395
    .local v8, "fps":F
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\tFPS:\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 3397
    iput v3, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 3400
    .end local v2    # "thisHash":Ljava/lang/String;
    .end local v4    # "frameTime":J
    .end local v6    # "totalTime":J
    .end local v8    # "fps":F
    :cond_1
    :goto_0
    return-void
.end method

.method private updateContentDrawBounds()Z
    .locals 8

    .line 8773
    const/4 v0, 0x0

    .line 8774
    .local v0, "updated":Z
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 8775
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 8776
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 8777
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowCallbacks;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v7, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/view/WindowCallbacks;->onContentDrawn(IIII)Z

    move-result v3

    or-int/2addr v0, v3

    .line 8775
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8781
    .end local v1    # "i":I
    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int v1, v0, v2

    return v1
.end method

.method private updatePointerIcon(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 5741
    const/4 v0, 0x0

    .line 5742
    .local v0, "pointerIndex":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 5743
    .local v2, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 5744
    .local v3, "y":F
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 5746
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "updatePointerIcon called after view was removed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5747
    return v1

    .line 5749
    :cond_0
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_5

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-gez v5, :cond_5

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_5

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    goto :goto_1

    .line 5754
    :cond_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1, v1}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    .line 5755
    .local v1, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v1, :cond_2

    .line 5756
    invoke-virtual {v1}, Landroid/view/PointerIcon;->getType()I

    move-result v4

    goto :goto_0

    :cond_2
    const/16 v4, 0x3e8

    .line 5758
    .local v4, "pointerType":I
    :goto_0
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v5, v4, :cond_3

    .line 5759
    iput v4, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    .line 5760
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    .line 5761
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-eq v5, v7, :cond_3

    .line 5762
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 5763
    return v6

    .line 5766
    :cond_3
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    .line 5767
    invoke-virtual {v1, v5}, Landroid/view/PointerIcon;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 5768
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    .line 5769
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {v5, v7}, Landroid/hardware/input/InputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 5771
    :cond_4
    return v6

    .line 5751
    .end local v1    # "pointerIcon":Landroid/view/PointerIcon;
    .end local v4    # "pointerType":I
    :cond_5
    :goto_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "updatePointerIcon called with position out of bounds"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5752
    return v1
.end method


# virtual methods
.method public addWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/WindowCallbacks;

    .line 636
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 637
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    monitor-exit v0

    .line 639
    return-void

    .line 638
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/view/ViewRootImpl$WindowStoppedCallback;

    .line 1581
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 1644
    return-void
.end method

.method public canResolveLayoutDirection()Z
    .locals 1

    .line 8305
    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextAlignment()Z
    .locals 1

    .line 8335
    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextDirection()Z
    .locals 1

    .line 8320
    const/4 v0, 0x1

    return v0
.end method

.method public cancelInvalidate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 7970
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7973
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7974
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    .line 7975
    return-void
.end method

.method changeCanvasOpacity(Z)V
    .locals 3
    .param p1, "opaque"    # Z

    .line 8476
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCanvasOpacity: opaque="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8477
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 8478
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    .line 8480
    :cond_0
    return-void
.end method

.method checkThread()V
    .locals 2

    .line 8382
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 8386
    return-void

    .line 8383
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 8157
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hasTransientState"    # Z

    .line 8415
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 4124
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 4125
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 4126
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .line 8153
    return-void
.end method

.method public debug()V
    .locals 1

    .line 7229
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 7230
    return-void
.end method

.method destroyHardwareResources()V
    .locals 2

    .line 1015
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 1017
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 1019
    :cond_0
    return-void
.end method

.method public detachFunctor(J)V
    .locals 1
    .param p1, "functor"    # J

    .line 1022
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->stopDrawing()V

    .line 1027
    :cond_0
    return-void
.end method

.method die(Z)Z
    .locals 3
    .param p1, "immediate"    # Z

    .line 7321
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-nez v0, :cond_0

    .line 7322
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 7323
    const/4 v0, 0x0

    return v0

    .line 7326
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    if-nez v0, :cond_1

    .line 7330
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-nez v0, :cond_2

    .line 7331
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    goto :goto_0

    .line 7335
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to destroy the window while drawing!\n  window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 7336
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7335
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7338
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 7339
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchAppVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 8022
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 8023
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 8024
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8025
    return-void
.end method

.method dispatchApplyInsets(Landroid/view/View;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;

    .line 1938
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->getWindowInsets(Z)Landroid/view/WindowInsets;

    move-result-object v1

    .line 1939
    .local v1, "insets":Landroid/view/WindowInsets;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1941
    .local v0, "dispatchCutout":Z
    :goto_0
    if-nez v0, :cond_1

    .line 1944
    invoke-virtual {v1}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v1

    .line 1946
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1947
    return-void
.end method

.method public dispatchCheckFocus()V
    .locals 2

    .line 8087
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8089
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 8091
    :cond_0
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 8048
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 8049
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 8050
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8051
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8052
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 3

    .line 4169
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$InputStage;->onDetachedFromWindow()V

    .line 4170
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 4171
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 4172
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4175
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 4176
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 4178
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)V

    .line 4180
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    .line 4182
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 4184
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4186
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 4187
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 4188
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 4190
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 4192
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v1, :cond_1

    .line 4193
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 4194
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v1}, Landroid/view/InputQueue;->dispose()V

    .line 4195
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 4196
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 4198
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v1, :cond_2

    .line 4199
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    .line 4200
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 4203
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4205
    goto :goto_0

    .line 4204
    :catch_0
    move-exception v1

    .line 4209
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_3

    .line 4210
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 4211
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 4214
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 4216
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 4217
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 8056
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 8057
    const/16 v0, 0x10

    .line 8058
    .local v0, "what":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    goto :goto_0

    .line 8060
    .end local v0    # "what":I
    :cond_0
    const/16 v0, 0xf

    .line 8062
    .restart local v0    # "what":I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 8063
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8064
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 2

    .line 8028
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 8029
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8030
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 7978
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    .line 7979
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    .line 7982
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 7983
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 7984
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 7985
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 7986
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7987
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7988
    return-void
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayMilliseconds"    # J

    .line 7951
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7952
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7953
    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 7962
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    .line 7963
    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .locals 2
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;
    .param p2, "delayMilliseconds"    # J

    .line 7957
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7958
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7959
    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 7966
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    .line 7967
    return-void
.end method

.method public dispatchKeyFromAutofill(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 8003
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8004
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 8005
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8006
    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 7997
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7998
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7999
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8000
    return-void
.end method

.method public dispatchMoved(II)V
    .locals 5
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .line 7501
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_0

    .line 7502
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7503
    .local v0, "point":Landroid/graphics/PointF;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 7504
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int p1, v1

    .line 7505
    iget v1, v0, Landroid/graphics/PointF;->y:F

    float-to-double v1, v1

    add-double/2addr v1, v3

    double-to-int p2, v1

    .line 7507
    .end local v0    # "point":Landroid/graphics/PointF;
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 7508
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7509
    return-void
.end method

.method public dispatchPointerCaptureChanged(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 8099
    const/16 v0, 0x1c

    .line 8100
    .local v0, "what":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 8101
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 8102
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 8103
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8104
    return-void
.end method

.method public dispatchRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 3
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    .line 8094
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8095
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8096
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 4
    .param p1, "seq"    # I
    .param p2, "globalVisibility"    # I
    .param p3, "localValue"    # I
    .param p4, "localChanges"    # I

    .line 8078
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    .line 8079
    .local v0, "args":Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    .line 8080
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 8081
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    .line 8082
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 8083
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8084
    return-void
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 8015
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 8016
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 8018
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->synthesizeInputEvent(Landroid/view/InputEvent;)V

    .line 8019
    return-void
.end method

.method public dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 8489
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchWindowShown()V
    .locals 2

    .line 8044
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 8045
    return-void
.end method

.method doConsumeBatchedInput(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .line 7793
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_1

    .line 7794
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 7795
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_0

    .line 7796
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 7803
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 7806
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 7808
    :cond_1
    return-void
.end method

.method doDie()V
    .locals 5

    .line 7343
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 7345
    monitor-enter p0

    .line 7346
    :try_start_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    if-eqz v0, :cond_0

    .line 7347
    monitor-exit p0

    return-void

    .line 7349
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    .line 7350
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_1

    .line 7351
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    .line 7354
    :cond_1
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v1, :cond_6

    .line 7355
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 7357
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 7358
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 7359
    .local v1, "viewVisibility":I
    iget v3, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-eq v3, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 7360
    .local v0, "viewVisibilityChanged":Z
    :goto_0
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    if-eqz v0, :cond_5

    .line 7365
    :cond_3
    :try_start_1
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v3, v1, v2}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 7367
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7370
    :cond_4
    goto :goto_1

    .line 7369
    :catch_0
    move-exception v3

    .line 7373
    :cond_5
    :goto_1
    :try_start_2
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 7377
    .end local v0    # "viewVisibilityChanged":Z
    .end local v1    # "viewVisibility":I
    :cond_6
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 7378
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7379
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    .line 7380
    return-void

    .line 7378
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method doProcessInputEvents()V
    .locals 8

    .line 7658
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7659
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7660
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7661
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 7662
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7664
    :cond_0
    iput-object v3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7666
    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 7667
    const-wide/16 v2, 0x4

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v5, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 7670
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2}, Landroid/view/InputEvent;->getEventTimeNano()J

    move-result-wide v2

    .line 7671
    .local v2, "eventTime":J
    move-wide v4, v2

    .line 7672
    .local v4, "oldestEventTime":J
    iget-object v6, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v6, v6, Landroid/view/MotionEvent;

    if-eqz v6, :cond_1

    .line 7673
    iget-object v6, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v6, Landroid/view/MotionEvent;

    .line 7674
    .local v6, "me":Landroid/view/MotionEvent;
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    if-lez v7, :cond_1

    .line 7675
    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->getHistoricalEventTimeNano(I)J

    move-result-wide v4

    .line 7678
    .end local v6    # "me":Landroid/view/MotionEvent;
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/FrameInfo;->updateInputEventTime(JJ)V

    .line 7680
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7681
    .end local v0    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    .end local v2    # "eventTime":J
    .end local v4    # "oldestEventTime":J
    goto :goto_0

    .line 7685
    :cond_2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-eqz v0, :cond_3

    .line 7686
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 7687
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 7689
    :cond_3
    return-void
.end method

.method doTraversal()V
    .locals 3

    .line 1722
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_2

    .line 1723
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1726
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mHasStartTraversalsAccelerate:Z

    if-nez v1, :cond_0

    .line 1727
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->checkHasSyncBarrier(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1728
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 1733
    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v1, :cond_1

    .line 1734
    const-string v1, "ViewAncestor"

    invoke-static {v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 1737
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    .line 1739
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v1, :cond_2

    .line 1740
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1741
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 1744
    :cond_2
    return-void
.end method

.method drawPending()V
    .locals 1

    .line 3413
    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    .line 3414
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 7233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7234
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "ViewRoot:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7235
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mAdded="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7236
    const-string v1, " mRemoved="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7237
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mConsumeBatchedInputScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7238
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7239
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mConsumeBatchedInputImmediatelyScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7240
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7241
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingInputEventCount="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7242
    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7243
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mProcessInputEventsScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7244
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7245
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTraversalScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7246
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7248
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 7249
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDrawsNeededToReport="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7250
    iget v1, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7251
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mReportNextDraw="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7252
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7254
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsAmbientMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7255
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7256
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v1, :cond_0

    .line 7257
    const-string v1, " (barrier="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 7259
    :cond_0
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 7261
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v1, v0, p3}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7263
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, p1, p3}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7265
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "View Hierarchy:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7266
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p3, v1}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 7267
    return-void
.end method

.method public dumpGfxInfo([I)V
    .locals 2
    .param p1, "info"    # [I

    .line 7291
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, p1, v1

    aput v0, p1, v0

    .line 7292
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 7293
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 7295
    :cond_0
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 7615
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 7616
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I
    .param p4, "processImmediately"    # Z

    .line 7620
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->adjustInputEventForCompatibility(Landroid/view/InputEvent;)V

    .line 7621
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-result-object v0

    .line 7628
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7629
    .local v1, "last":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v1, :cond_0

    .line 7630
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7631
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0

    .line 7633
    :cond_0
    iput-object v0, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7634
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7636
    :goto_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 7637
    const-wide/16 v2, 0x4

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v5, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 7640
    if-eqz p4, :cond_1

    .line 7641
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_1

    .line 7643
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->scheduleProcessInputEvents()V

    .line 7645
    :goto_1
    return-void
.end method

.method ensureTouchMode(Z)Z
    .locals 2
    .param p1, "inTouchMode"    # Z

    .line 4670
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4674
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4677
    nop

    .line 4680
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v0

    return v0

    .line 4675
    :catch_0
    move-exception v0

    .line 4676
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 7210
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 7211
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 7212
    const/4 v0, 0x0

    return-object v0

    .line 7214
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 4135
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 4136
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 4137
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4138
    sget-boolean v0, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v0, :cond_2

    .line 4139
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 4145
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 4146
    .local v0, "focused":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 4147
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 4148
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_2

    .line 4149
    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4150
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 4155
    .end local v0    # "focused":Landroid/view/View;
    .end local v1    # "group":Landroid/view/ViewGroup;
    :cond_2
    :goto_0
    return-void
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .locals 1

    .line 4030
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 4037
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .locals 2

    .line 7087
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 7091
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    if-nez v0, :cond_0

    .line 7092
    new-instance v0, Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    .line 7094
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    return-object v0

    .line 7088
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .line 1634
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1639
    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0

    .line 1635
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDisplayId()I
    .locals 1

    .line 987
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1011
    iget v0, p0, Landroid/view/ViewRootImpl;->mHeight:I

    return v0
.end method

.method getHostVisibility()I
    .locals 1

    .line 1647
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .line 7014
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 7015
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 7016
    return-void
.end method

.method public getLastTouchSource()I
    .locals 1

    .line 7019
    iget v0, p0, Landroid/view/ViewRootImpl;->mLastTouchSource:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .line 8315
    const/4 v0, 0x0

    return v0
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    .line 1281
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    .line 1629
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 1

    .line 4130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextAlignment()I
    .locals 1

    .line 8345
    const/4 v0, 0x1

    return v0
.end method

.method public getTextDirection()I
    .locals 1

    .line 8330
    const/4 v0, 0x1

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 991
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1277
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1001
    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    return v0
.end method

.method public getWindowFlags()I
    .locals 1

    .line 983
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return v0
.end method

.method getWindowInsets(Z)Landroid/view/WindowInsets;
    .locals 12
    .param p1, "forceConstruct"    # Z

    .line 1893
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_5

    .line 1894
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1895
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1896
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchDisplayCutout:Landroid/view/DisplayCutout;

    .line 1898
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    .line 1899
    .local v0, "contentInsets":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    .line 1900
    .local v1, "stableInsets":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDispatchDisplayCutout:Landroid/view/DisplayCutout;

    .line 1903
    .local v2, "displayCutout":Landroid/view/DisplayCutout;
    if-nez p1, :cond_2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 1904
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 1905
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 1906
    invoke-virtual {v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1907
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 1908
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 1909
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v2

    .line 1911
    .end local v2    # "displayCutout":Landroid/view/DisplayCutout;
    .local v9, "displayCutout":Landroid/view/DisplayCutout;
    :cond_2
    move-object v9, v2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v2, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    .line 1912
    .local v10, "outsets":Landroid/graphics/Rect;
    iget v2, v10, Landroid/graphics/Rect;->left:I

    if-gtz v2, :cond_3

    iget v2, v10, Landroid/graphics/Rect;->top:I

    if-gtz v2, :cond_3

    iget v2, v10, Landroid/graphics/Rect;->right:I

    if-gtz v2, :cond_3

    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    if-lez v2, :cond_4

    .line 1913
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v2

    .line 1917
    :cond_4
    const-string v2, "content"

    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->ensureInsetsNonNegative(Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1918
    const-string/jumbo v2, "stable"

    invoke-direct {p0, v1, v2}, Landroid/view/ViewRootImpl;->ensureInsetsNonNegative(Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1919
    new-instance v11, Landroid/view/WindowInsets;

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 1921
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v6

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v7, v2, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    move-object v2, v11

    move-object v3, v0

    move-object v5, v1

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/DisplayCutout;)V

    iput-object v11, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    .line 1924
    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    .end local v1    # "stableInsets":Landroid/graphics/Rect;
    .end local v9    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v10    # "outsets":Landroid/graphics/Rect;
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    return-object v0
.end method

.method handleAppVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1366
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eq v0, p1, :cond_1

    .line 1367
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 1368
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    .line 1370
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRedPacketHelper:Landroid/view/RedPacketHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRedPacketHelper:Landroid/view/RedPacketHelper;

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    invoke-virtual {v0, v1}, Landroid/view/RedPacketHelper;->noteAppVisiblity(Z)V

    .line 1372
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1373
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_1

    .line 1374
    invoke-static {}, Landroid/view/WindowManagerGlobal;->trimForeground()V

    .line 1377
    :cond_1
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 3
    .param p1, "args"    # Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    .line 6962
    const-string v0, "com.android.systemui"

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6963
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 6964
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "statusbar draw pending state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6965
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 6966
    return-void

    .line 6969
    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    if-eq v0, v2, :cond_1

    .line 6973
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mSeq:I

    .line 6974
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 6975
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 6977
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    .line 6978
    :cond_2
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v0, :cond_3

    .line 6979
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    .line 6982
    :cond_3
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v0, v0, 0x7

    .line 6983
    .local v0, "visibility":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    if-eq v0, v1, :cond_4

    .line 6984
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    .line 6985
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 6987
    :cond_4
    return-void
.end method

.method public handleDispatchWindowShown()V
    .locals 1

    .line 6997
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowShown()V

    .line 6998
    return-void
.end method

.method handleGetNewSurface()V
    .locals 1

    .line 1380
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 1381
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1382
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1383
    return-void
.end method

.method public handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 3
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    .line 7001
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7002
    .local v0, "data":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7003
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 7004
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v1, p2}, Landroid/view/View;->requestKeyboardShortcuts(Ljava/util/List;I)V

    .line 7006
    :cond_0
    const-string/jumbo v2, "shortcuts_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7008
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7010
    goto :goto_0

    .line 7009
    :catch_0
    move-exception v2

    .line 7011
    :goto_0
    return-void
.end method

.method hasPointerCapture()Z
    .locals 1

    .line 4090
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    return v0
.end method

.method invalidate()V
    .locals 4

    .line 1497
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1498
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 1499
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1501
    :cond_0
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .line 1515
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 1516
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .line 1520
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1523
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1524
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 1525
    return-object v0

    .line 1526
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v1, :cond_1

    .line 1527
    return-object v0

    .line 1530
    :cond_1
    iget v1, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_5

    .line 1531
    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1532
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 1533
    iget v1, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v1, :cond_3

    .line 1534
    const/4 v1, 0x0

    iget v2, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1536
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_4

    .line 1537
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 1539
    :cond_4
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v1, :cond_5

    .line 1540
    const/4 v1, -0x1

    invoke-virtual {p2, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 1544
    :cond_5
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    .line 1546
    return-object v0
.end method

.method invalidateWorld(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 1504
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1505
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1506
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 1507
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1508
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    .line 1507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1511
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method isInLayout()Z
    .locals 1

    .line 3072
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    return v0
.end method

.method public isLayoutDirectionResolved()Z
    .locals 1

    .line 8310
    const/4 v0, 0x1

    return v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    .line 1479
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v0
.end method

.method public isTextAlignmentResolved()Z
    .locals 1

    .line 8340
    const/4 v0, 0x1

    return v0
.end method

.method public isTextDirectionResolved()Z
    .locals 1

    .line 8325
    const/4 v0, 0x1

    return v0
.end method

.method public keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "currentCluster"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 7223
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 7224
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public loadSystemProperties()V
    .locals 2

    .line 7388
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$5;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$5;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 7418
    return-void
.end method

.method public notifyChildRebuilt()V
    .locals 2

    .line 693
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v0, :cond_2

    .line 694
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 698
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 699
    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 701
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_1

    .line 702
    new-instance v0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 703
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 704
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    .line 706
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 709
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 710
    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 711
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_2

    .line 712
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 715
    :cond_2
    return-void
.end method

.method notifyRendererOfFramePending()V
    .locals 1

    .line 1678
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->notifyFramePending()V

    .line 1681
    :cond_0
    return-void
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .line 8300
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p3}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;I)V

    .line 8301
    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "descendant"    # Landroid/view/View;

    .line 1484
    iget v0, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 1485
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 1488
    :cond_0
    const-string v0, "com.android.systemui"

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cn.nubia.controlcenter"

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    .line 1489
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1490
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1493
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 1494
    return-void
.end method

.method public onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 1435
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1436
    return-void

    .line 1441
    :cond_0
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 1442
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1441
    invoke-virtual {v0, p1, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 1443
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    iput v1, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 1445
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 1446
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 8441
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 8446
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 8451
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 8437
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 8433
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 8428
    return-void
.end method

.method public onPostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .line 3328
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    .line 3329
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eqz v0, :cond_0

    .line 3330
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3331
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    invoke-interface {v1, p1}, Landroid/view/WindowCallbacks;->onPostDraw(Landroid/view/DisplayListCanvas;)V

    .line 3330
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3334
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onPreDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .line 3320
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3321
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/DisplayListCanvas;->drawColor(I)V

    .line 3323
    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 3324
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 8419
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .line 8424
    return-void
.end method

.method public onWindowTitleChanged()V
    .locals 2

    .line 6993
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 6994
    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 3340
    iget-object v0, p1, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->output()V

    .line 3341
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 3342
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->serializeDisplayListTree()V

    .line 3344
    :cond_0
    return-void
.end method

.method pendingDrawFinished()V
    .locals 2

    .line 3417
    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    if-eqz v0, :cond_1

    .line 3420
    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    .line 3421
    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    if-nez v0, :cond_0

    .line 3422
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportDrawFinished()V

    .line 3424
    :cond_0
    return-void

    .line 3418
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unbalanced drawPending/pendingDrawFinished calls"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 2
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .line 7199
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7200
    :catch_0
    move-exception v0

    .line 7201
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public playSoundEffect(I)V
    .locals 4
    .param p1, "effectId"    # I

    .line 7161
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 7164
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 7166
    .local v0, "audioManager":Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 7183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    .line 7171
    :pswitch_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 7172
    return-void

    .line 7177
    :pswitch_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 7178
    return-void

    .line 7180
    :pswitch_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 7181
    return-void

    .line 7174
    :pswitch_3
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 7175
    return-void

    .line 7168
    :pswitch_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 7169
    return-void

    .line 7183
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown effect id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not defined in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/view/SoundEffectConstants;

    .line 7184
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7186
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_0
    move-exception v0

    .line 7188
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7189
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 7191
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method pokeDrawLockIfNeeded()V
    .locals 3

    .line 1449
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 1450
    .local v0, "displayState":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1454
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    goto :goto_0

    .line 1455
    :catch_0
    move-exception v1

    .line 1459
    :cond_1
    :goto_0
    return-void
.end method

.method public profile()V
    .locals 1

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 662
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 4159
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 4160
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 4161
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 4162
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 4163
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 4166
    :cond_0
    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 2
    .param p1, "animator"    # Landroid/view/RenderNode;

    .line 1043
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    goto :goto_0

    .line 1046
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1047
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 1049
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    :goto_0
    return-void
.end method

.method public registerRtFrameCallback(Landroid/view/ThreadedRenderer$FrameDrawingCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/ThreadedRenderer$FrameDrawingCallback;

    .line 1068
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mNextRtFrameCallback:Landroid/view/ThreadedRenderer$FrameDrawingCallback;

    .line 1069
    return-void
.end method

.method public registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V
    .locals 1
    .param p1, "animator"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    .line 1055
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V

    .line 1058
    :cond_0
    return-void
.end method

.method public removeWallpaperBackground()V
    .locals 1

    .line 9098
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 9099
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->removeWallpaperBackground()V

    .line 9101
    :cond_0
    return-void
.end method

.method public removeWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/WindowCallbacks;

    .line 642
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 643
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 644
    monitor-exit v0

    .line 645
    return-void

    .line 644
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/view/ViewRootImpl$WindowStoppedCallback;

    .line 1585
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1586
    return-void
.end method

.method public reportActivityRelaunched()V
    .locals 1

    .line 8800
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    .line 8801
    return-void
.end method

.method public reportDrawFinish()V
    .locals 1

    .line 648
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 651
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 4115
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 4116
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 4117
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 8395
    if-nez p2, :cond_0

    .line 8396
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0

    .line 8398
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 8399
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 8398
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 8400
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    .line 8401
    .local v0, "scrolled":Z
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8402
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 8403
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowTop:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 8405
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8408
    goto :goto_0

    .line 8406
    :catch_0
    move-exception v1

    .line 8409
    :goto_0
    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 8391
    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .line 1463
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1464
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 1465
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1466
    return-void
.end method

.method public requestInvalidateRootRenderNode()V
    .locals 1

    .line 3902
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    .line 3903
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1470
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_0

    .line 1471
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1472
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1473
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1475
    :cond_0
    return-void
.end method

.method requestLayoutDuringLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 3098
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3102
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3103
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3105
    :cond_1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_2

    .line 3108
    return v1

    .line 3112
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 3100
    :cond_3
    :goto_0
    return v1
.end method

.method requestPointerCapture(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 4094
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-ne v0, p1, :cond_0

    .line 4095
    return-void

    .line 4097
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->requestPointerCapture(Landroid/os/IBinder;Z)V

    .line 4098
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 8161
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 8166
    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 8169
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->removeCallbacksAndRun()V

    .line 8174
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 8175
    .local v0, "eventType":I
    if-eq v0, v1, :cond_6

    const v1, 0x8000

    if-eq v0, v1, :cond_4

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 8193
    :cond_2
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v1

    .line 8194
    .local v1, "sourceNodeId":J
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    .line 8196
    .local v3, "accessibilityViewId":I
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 8197
    .local v4, "source":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 8198
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    .line 8199
    .local v5, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v5, :cond_3

    .line 8200
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v6}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8203
    .end local v1    # "sourceNodeId":J
    .end local v3    # "accessibilityViewId":I
    .end local v4    # "source":Landroid/view/View;
    .end local v5    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3
    goto :goto_0

    .line 8177
    :cond_4
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v1

    .line 8178
    .restart local v1    # "sourceNodeId":J
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    .line 8180
    .restart local v3    # "accessibilityViewId":I
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 8181
    .restart local v4    # "source":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 8182
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    .line 8183
    .restart local v5    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v5, :cond_5

    .line 8184
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    .line 8187
    .local v6, "virtualNodeId":I
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    .line 8188
    .local v7, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p0, v4, v7}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8191
    .end local v1    # "sourceNodeId":J
    .end local v3    # "accessibilityViewId":I
    .end local v4    # "source":Landroid/view/View;
    .end local v5    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v6    # "virtualNodeId":I
    .end local v7    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_5
    goto :goto_0

    .line 8207
    :cond_6
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 8210
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 8211
    const/4 v1, 0x1

    return v1

    .line 8162
    .end local v0    # "eventType":I
    :cond_7
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .line 1664
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1665
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 1668
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1670
    :cond_2
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 3265
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3266
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 3267
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3270
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 3271
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 3272
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 3274
    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 7383
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7384
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7385
    return-void
.end method

.method scheduleConsumeBatchedInput()V
    .locals 4

    .line 7769
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-nez v0, :cond_0

    .line 7770
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 7771
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 7774
    :cond_0
    return-void
.end method

.method scheduleConsumeBatchedInputImmediately()V
    .locals 2

    .line 7785
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    if-nez v0, :cond_0

    .line 7786
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 7787
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    .line 7788
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 7790
    :cond_0
    return-void
.end method

.method scheduleTraversals()V
    .locals 4

    .line 1684
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_2

    .line 1685
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1688
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHasStartTraversalsAccelerate:Z

    if-nez v0, :cond_0

    .line 1689
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    goto :goto_0

    .line 1691
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrierAtFrontByNubia()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    .line 1694
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1696
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v0, :cond_1

    .line 1697
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 1699
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyRendererOfFramePending()V

    .line 1700
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    .line 1702
    :cond_2
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 10
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .line 3906
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 3907
    .local v0, "ci":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 3908
    .local v1, "vi":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 3909
    .local v2, "scrollY":I
    const/4 v3, 0x0

    .line 3911
    .local v3, "handled":Z
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    if-gt v4, v5, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-gt v4, v5, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    if-gt v4, v5, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_a

    .line 3917
    :cond_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 3924
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    .line 3925
    .local v4, "focus":Landroid/view/View;
    if-nez v4, :cond_1

    .line 3926
    return v6

    .line 3928
    :cond_1
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v5, v7

    .line 3929
    .local v5, "lastScrolledFocus":Landroid/view/View;
    :goto_0
    if-eq v4, v5, :cond_3

    .line 3933
    const/4 p1, 0x0

    .line 3938
    :cond_3
    if-ne v4, v5, :cond_4

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    if-nez v8, :cond_4

    if-nez p1, :cond_4

    .end local v4    # "focus":Landroid/view/View;
    .end local v5    # "lastScrolledFocus":Landroid/view/View;
    goto/16 :goto_4

    .line 3948
    .restart local v4    # "focus":Landroid/view/View;
    .restart local v5    # "lastScrolledFocus":Landroid/view/View;
    :cond_4
    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    .line 3949
    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 3952
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v8, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3957
    if-nez p1, :cond_5

    .line 3958
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3961
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    .line 3962
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v4, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 3970
    :cond_5
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3976
    :cond_6
    :goto_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3980
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 3981
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_7

    goto :goto_3

    .line 3992
    :cond_7
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_8

    .line 3993
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    .line 4003
    .end local v2    # "scrollY":I
    .local v7, "scrollY":I
    :goto_2
    move v2, v7

    goto :goto_3

    .line 3996
    .end local v7    # "scrollY":I
    .restart local v2    # "scrollY":I
    :cond_8
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_9

    .line 3997
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    goto :goto_2

    .line 4001
    :cond_9
    const/4 v2, 0x0

    .line 4003
    :goto_3
    const/4 v3, 0x1

    .line 4009
    .end local v4    # "focus":Landroid/view/View;
    .end local v5    # "lastScrolledFocus":Landroid/view/View;
    :cond_a
    :goto_4
    iget v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    if-eq v2, v4, :cond_e

    .line 4012
    if-nez p2, :cond_c

    .line 4013
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-nez v4, :cond_b

    .line 4014
    new-instance v4, Landroid/widget/Scroller;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 4016
    :cond_b
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    iget v5, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget v7, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    sub-int v7, v2, v7

    invoke-virtual {v4, v6, v5, v6, v7}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_5

    .line 4017
    :cond_c
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_d

    .line 4018
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4020
    :cond_d
    :goto_5
    iput v2, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 4023
    :cond_e
    return v3
.end method

.method setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4043
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/16 v1, 0x40

    if-eqz v0, :cond_1

    .line 4045
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4046
    .local v0, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 4053
    .local v2, "focusHost":Landroid/view/View;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 4054
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4058
    invoke-virtual {v2, v1}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 4061
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    .line 4062
    .local v4, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v4, :cond_0

    .line 4064
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 4065
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 4067
    nop

    .line 4068
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v5

    .line 4067
    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    .line 4069
    .local v5, "virtualNodeId":I
    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 4072
    .end local v5    # "virtualNodeId":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 4074
    .end local v0    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "focusHost":Landroid/view/View;
    .end local v4    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 4076
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 4081
    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 4082
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4084
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_3

    .line 4085
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 4087
    :cond_3
    return-void
.end method

.method public setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 632
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 633
    return-void
.end method

.method public setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 5
    .param p1, "newDragTarget"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .line 7023
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_2

    sget-boolean v0, Landroid/view/View;->sCascadedDragDrop:Z

    if-nez v0, :cond_2

    .line 7026
    iget v0, p2, Landroid/view/DragEvent;->mX:F

    .line 7027
    .local v0, "tx":F
    iget v1, p2, Landroid/view/DragEvent;->mY:F

    .line 7028
    .local v1, "ty":F
    iget v2, p2, Landroid/view/DragEvent;->mAction:I

    .line 7029
    .local v2, "action":I
    iget-object v3, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 7031
    .local v3, "td":Landroid/content/ClipData;
    const/4 v4, 0x0

    iput v4, p2, Landroid/view/DragEvent;->mX:F

    .line 7032
    iput v4, p2, Landroid/view/DragEvent;->mY:F

    .line 7033
    const/4 v4, 0x0

    iput-object v4, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 7035
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 7036
    const/4 v4, 0x6

    iput v4, p2, Landroid/view/DragEvent;->mAction:I

    .line 7037
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v4, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    .line 7040
    :cond_0
    if-eqz p1, :cond_1

    .line 7041
    const/4 v4, 0x5

    iput v4, p2, Landroid/view/DragEvent;->mAction:I

    .line 7042
    invoke-virtual {p1, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    .line 7045
    :cond_1
    iput v2, p2, Landroid/view/DragEvent;->mAction:I

    .line 7046
    iput v0, p2, Landroid/view/DragEvent;->mX:F

    .line 7047
    iput v1, p2, Landroid/view/DragEvent;->mY:F

    .line 7048
    iput-object v3, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 7051
    .end local v0    # "tx":F
    .end local v1    # "ty":F
    .end local v2    # "action":I
    .end local v3    # "td":Landroid/content/ClipData;
    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 7052
    return-void
.end method

.method public setHwuiExtendedFunction(I)V
    .locals 1
    .param p1, "functionId"    # I

    .line 9106
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 9107
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setHwuiExtendedFunction(I)V

    .line 9109
    :cond_0
    return-void
.end method

.method public setIsAmbientMode(Z)V
    .locals 0
    .param p1, "ambient"    # Z

    .line 1572
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    .line 1573
    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 12
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "newView"    # Z

    .line 1285
    monitor-enter p0

    .line 1287
    const/4 v0, 0x0

    .line 1288
    .local v0, "typeChanged":Z
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    const-string v2, ".cts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1289
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 1290
    invoke-static {p1}, Landroid/view/ViewRootImplUtils;->changeWindowType(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    move v0, v1

    .line 1293
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 1294
    .local v1, "oldInsetLeft":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1295
    .local v2, "oldInsetTop":I
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 1296
    .local v3, "oldInsetRight":I
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1297
    .local v4, "oldInsetBottom":I
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1298
    .local v5, "oldSoftInputMode":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v6, v6, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 1307
    .local v6, "oldHasManualSurfaceInsets":Z
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v7, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 1310
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v7, v7, 0x80

    .line 1314
    .local v7, "compatibleWindowFlag":I
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v8, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 1315
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v8, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1317
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v8

    iput v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1318
    iget v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    const/high16 v9, 0x80000

    and-int/2addr v8, v9

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    .line 1321
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v9, v8, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1323
    :cond_1
    iget v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_2

    .line 1326
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v9, v8, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    .line 1328
    :cond_2
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 1329
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v10, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1331
    :cond_3
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v10, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v10, v7

    iput v10, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1333
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v8, v8, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-eqz v8, :cond_4

    .line 1335
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1337
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v6, v8, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    goto :goto_0

    .line 1338
    :cond_4
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ne v8, v1, :cond_5

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ne v8, v2, :cond_5

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-ne v8, v3, :cond_5

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-eq v8, v4, :cond_6

    .line 1342
    :cond_5
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    .line 1345
    :cond_6
    :goto_0
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v8}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 1347
    if-eqz p2, :cond_7

    .line 1348
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v8, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 1349
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 1353
    :cond_7
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v8, v8, 0xf0

    if-nez v8, :cond_8

    .line 1355
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v10, v10, -0xf1

    and-int/lit16 v11, v5, 0xf0

    or-int/2addr v10, v11

    iput v10, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1360
    :cond_8
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1361
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1362
    .end local v0    # "typeChanged":Z
    .end local v1    # "oldInsetLeft":I
    .end local v2    # "oldInsetTop":I
    .end local v3    # "oldInsetRight":I
    .end local v4    # "oldInsetBottom":I
    .end local v5    # "oldSoftInputMode":I
    .end local v6    # "oldHasManualSurfaceInsets":Z
    .end local v7    # "compatibleWindowFlag":I
    monitor-exit p0

    .line 1363
    return-void

    .line 1362
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 6859
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    .line 6860
    return-void
.end method

.method public setPausedForTransition(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .line 1624
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 1625
    return-void
.end method

.method public setReportNextDraw()V
    .locals 0

    .line 8471
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    .line 8472
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 8473
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 25
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "panelParentView"    # Landroid/view/View;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 721
    monitor-enter p0

    .line 722
    :try_start_0
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_1b

    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, "typeChanged":Z
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    const-string v4, ".cts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 726
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_0

    .line 727
    invoke-static/range {p2 .. p2}, Landroid/view/ViewRootImplUtils;->changeWindowType(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 730
    :cond_0
    move v3, v0

    .end local v0    # "typeChanged":Z
    .local v3, "typeChanged":Z
    :goto_0
    iput-object v2, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 733
    const-string v0, "com.tencent.mm"

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    new-instance v0, Landroid/view/RedPacketHelper;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {v0, v4, v5}, Landroid/view/RedPacketHelper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mRedPacketHelper:Landroid/view/RedPacketHelper;

    .line 738
    :cond_1
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    iput v4, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 739
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 741
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    iput v0, v1, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    .line 742
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v0, v2}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 743
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v4, p2

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 744
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 745
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v5, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 747
    :cond_2
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v4, v0

    .line 748
    .end local p2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->setTag()V

    .line 756
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v0, v1, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 758
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 760
    instance-of v0, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    .line 761
    move-object v0, v2

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 762
    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 763
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_3

    .line 764
    new-instance v0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 765
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0, v6}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 766
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v0, v7}, Lcom/android/internal/view/BaseSurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 772
    :cond_3
    iget-boolean v0, v4, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    const/4 v7, 0x1

    if-nez v0, :cond_4

    .line 773
    invoke-virtual {v4, v2, v6, v7}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 776
    :cond_4
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 777
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    move-object v8, v0

    .line 778
    .local v8, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 781
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v0, :cond_6

    .line 784
    invoke-direct {v1, v4}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    .line 785
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_5

    move v0, v7

    goto :goto_1

    :cond_5
    move v0, v6

    .line 787
    .local v0, "useMTRenderer":Z
    :goto_1
    iget-boolean v9, v1, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eq v9, v0, :cond_6

    .line 790
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    .line 791
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    .line 795
    .end local v0    # "useMTRenderer":Z
    :cond_6
    const/4 v0, 0x0

    .line 796
    .local v0, "restore":Z
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v9, :cond_7

    .line 797
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v9, v10}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 798
    const/4 v0, 0x1

    .line 799
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 800
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v9, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 804
    :cond_7
    move v9, v0

    .end local v0    # "restore":Z
    .local v9, "restore":Z
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_8

    .line 805
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 806
    iput-boolean v7, v1, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 809
    :cond_8
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v0, v1, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 810
    iput-boolean v7, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 811
    const/4 v0, -0x1

    iput v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 812
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 813
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v10, :cond_9

    move v10, v7

    goto :goto_2

    :cond_9
    move v10, v6

    :goto_2
    iput-boolean v10, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 814
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 815
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v10, :cond_a

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_a
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v10, v10, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    :goto_3
    iput v10, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 816
    if-eqz p3, :cond_b

    .line 817
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 818
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v11

    iput-object v11, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 820
    :cond_b
    iput-boolean v7, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 824
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->startAppTraversalsAccelerate(Landroid/view/View;)V

    .line 830
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 831
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_c

    .line 833
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 835
    :cond_c
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_d

    move v0, v7

    goto :goto_4

    :cond_d
    move v0, v6

    :goto_4
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 838
    :try_start_2
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v0, v1, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 839
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 840
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    .line 841
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v12, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v13, v1, Landroid/view/ViewRootImpl;->mSeq:I

    iget-object v14, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 842
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v15

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v16

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v23, v8

    :try_start_3
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .end local v8    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .local v23, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    iget-object v8, v8, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v10, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 841
    move-object/from16 v17, v0

    move-object/from16 v18, v7

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v10

    invoke-interface/range {v11 .. v22}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;)I

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 855
    .local v0, "res":I
    if-eqz v9, :cond_e

    .line 856
    :try_start_4
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 860
    :cond_e
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v5, :cond_f

    .line 861
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 863
    :cond_f
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 864
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 865
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 866
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v5, v6}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    .line 867
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 868
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    goto :goto_5

    :cond_10
    const/4 v6, 0x0

    :goto_5
    iput-boolean v6, v5, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    .line 870
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    .line 872
    if-gez v0, :cond_12

    .line 873
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 874
    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 875
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v5, v6}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 876
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 877
    invoke-virtual {v1, v6, v6}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 878
    packed-switch v0, :pswitch_data_0

    .line 921
    new-instance v5, Ljava/lang/RuntimeException;

    goto/16 :goto_6

    .line 881
    :pswitch_0
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window -- token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not valid; is your activity running?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 885
    :pswitch_1
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window -- token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not for an application"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 889
    :pswitch_2
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window -- app for token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is exiting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 893
    :pswitch_3
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window -- window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " has already been added"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 899
    :pswitch_4
    monitor-exit p0

    return-void

    .line 901
    :pswitch_5
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -- another window of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " already exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 906
    :pswitch_6
    const/4 v5, 0x1

    if-ne v3, v5, :cond_11

    .line 907
    monitor-exit p0

    return-void

    .line 910
    :cond_11
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -- permission denied for window type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 914
    :pswitch_7
    new-instance v5, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -- the specified display can not be found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 917
    :pswitch_8
    new-instance v5, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -- the specified window type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is not valid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 921
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window -- unknown error code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 925
    :cond_12
    instance-of v5, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v5, :cond_13

    .line 926
    move-object v5, v2

    check-cast v5, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 927
    invoke-interface {v5}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v5

    iput-object v5, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 929
    :cond_13
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v5, :cond_15

    .line 930
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v5, :cond_14

    .line 931
    new-instance v5, Landroid/view/InputQueue;

    invoke-direct {v5}, Landroid/view/InputQueue;-><init>()V

    iput-object v5, v1, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 932
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v5, v6}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 934
    :cond_14
    new-instance v5, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 935
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v1, v6, v7}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v5, v1, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 938
    :cond_15
    invoke-virtual {v2, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 939
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    goto :goto_7

    :cond_16
    const/4 v5, 0x0

    :goto_7
    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    .line 940
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_17

    const/4 v5, 0x1

    goto :goto_8

    :cond_17
    const/4 v5, 0x0

    :goto_8
    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 942
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 943
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 946
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_19

    .line 947
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 951
    :cond_19
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 952
    .local v5, "counterSuffix":Ljava/lang/CharSequence;
    new-instance v6, Landroid/view/ViewRootImpl$SyntheticInputStage;

    invoke-direct {v6, v1}, Landroid/view/ViewRootImpl$SyntheticInputStage;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v6, v1, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 953
    new-instance v6, Landroid/view/ViewRootImpl$ViewPostImeInputStage;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-direct {v6, v1, v7}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 954
    .local v6, "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v7, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "aq:native-post-ime:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v6, v8}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 956
    .local v7, "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v8, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;

    invoke-direct {v8, v1, v7}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 957
    .local v8, "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v10, Landroid/view/ViewRootImpl$ImeInputStage;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "aq:ime:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v1, v8, v11}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 959
    .local v10, "imeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v11, Landroid/view/ViewRootImpl$ViewPreImeInputStage;

    invoke-direct {v11, v1, v10}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 960
    .local v11, "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v12, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "aq:native-pre-ime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v1, v11, v13}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 963
    .local v12, "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    iput-object v12, v1, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 964
    iput-object v8, v1, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 965
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "aq:pending:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .end local v0    # "res":I
    .end local v3    # "typeChanged":Z
    .end local v5    # "counterSuffix":Ljava/lang/CharSequence;
    .end local v6    # "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v7    # "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v8    # "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v9    # "restore":Z
    .end local v10    # "imeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v11    # "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v12    # "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v23    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    goto :goto_b

    .line 845
    .restart local v3    # "typeChanged":Z
    .restart local v9    # "restore":Z
    .restart local v23    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    :catch_0
    move-exception v0

    goto :goto_9

    .line 855
    .end local v23    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .local v8, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    :catchall_0
    move-exception v0

    move-object/from16 v23, v8

    .end local v8    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v23    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    goto :goto_a

    .line 845
    .end local v23    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v8    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    :catch_1
    move-exception v0

    move-object/from16 v23, v8

    .line 846
    .end local v8    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v23    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    :goto_9
    const/4 v5, 0x0

    :try_start_5
    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 847
    const/4 v5, 0x0

    iput-object v5, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 848
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v5, v6, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 849
    iput-object v5, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 850
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v6, v5}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 851
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 852
    invoke-virtual {v1, v5, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 853
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Adding window failed"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 855
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v0

    :goto_a
    if-eqz v9, :cond_1a

    .line 856
    :try_start_6
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_1a
    throw v0

    .line 967
    .end local v3    # "typeChanged":Z
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "restore":Z
    .end local v23    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1b
    move-object/from16 v4, p2

    .end local p2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_b
    monitor-exit p0

    .line 968
    return-void

    .line 967
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local p2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catchall_2
    move-exception v0

    move-object/from16 v4, p2

    .end local p2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_c
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_c

    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setWallpaperBackground(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 9090
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 9091
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setWallpaperBackground(Landroid/graphics/Bitmap;)V

    .line 9093
    :cond_0
    return-void
.end method

.method setWindowStopped(Z)V
    .locals 3
    .param p1, "stopped"    # Z

    .line 1589
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eq v0, p1, :cond_3

    .line 1590
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 1591
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 1592
    .local v0, "renderer":Landroid/view/ThreadedRenderer;
    if-eqz v0, :cond_0

    .line 1594
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    .line 1596
    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v1, :cond_1

    .line 1597
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_0

    .line 1599
    :cond_1
    if-eqz v0, :cond_2

    .line 1600
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 1604
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1605
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl$WindowStoppedCallback;

    invoke-interface {v2, p1}, Landroid/view/ViewRootImpl$WindowStoppedCallback;->windowStopped(Z)V

    .line 1604
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1615
    .end local v0    # "renderer":Landroid/view/ThreadedRenderer;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    .line 8132
    const/4 v0, 0x0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 8137
    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 8142
    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 8148
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthesizeInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 7991
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7992
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7993
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7994
    return-void
.end method

.method transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    .line 1879
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1880
    return-void
.end method

.method transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    .line 1889
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1890
    return-void
.end method

.method unscheduleConsumeBatchedInput()V
    .locals 4

    .line 7777
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    .line 7778
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 7779
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 7782
    :cond_0
    return-void
.end method

.method unscheduleTraversals()V
    .locals 4

    .line 1705
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_1

    .line 1706
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1709
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->checkHasSyncBarrier(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1710
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 1713
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1717
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->stopAppTraversalsAccelerate()V

    .line 1719
    return-void
.end method

.method public updateConfiguration(I)V
    .locals 6
    .param p1, "newDisplayId"    # I

    .line 4274
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 4275
    return-void

    .line 4281
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4282
    .local v0, "localResources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 4285
    .local v1, "config":Landroid/content/res/Configuration;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 4286
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 4290
    :cond_1
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 4292
    :cond_2
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 4293
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 4292
    invoke-virtual {v2, v3, v0}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 4295
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 4296
    .local v2, "lastLayoutDirection":I
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    .line 4297
    .local v3, "currentLayoutDirection":I
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4298
    if-eq v2, v3, :cond_3

    iget v4, p0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 4300
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 4302
    :cond_3
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4308
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 4309
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 4311
    .end local v2    # "lastLayoutDirection":I
    .end local v3    # "currentLayoutDirection":I
    :cond_4
    return-void
.end method

.method public updatePointerIcon(FF)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 8067
    const/16 v0, 0x1b

    .line 8068
    .local v0, "what":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 8069
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 8070
    .local v11, "now":J
    const-wide/16 v3, 0x0

    const/4 v7, 0x7

    const/4 v10, 0x0

    move-wide v5, v11

    move v8, p1

    move v9, p2

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 8072
    .local v1, "event":Landroid/view/MotionEvent;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 8073
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8074
    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .locals 2
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .line 8033
    monitor-enter p0

    .line 8034
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    .line 8035
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mUpcomingWindowFocus:Z

    .line 8036
    iput-boolean p2, p0, Landroid/view/ViewRootImpl;->mUpcomingInTouchMode:Z

    .line 8037
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8038
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 8039
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 8040
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8041
    return-void

    .line 8037
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
